/*
* @desc:代码生成功能
* @company:云南省奇讯科技有限公司
* @Author: yixiaohu
* @Date:   2021/7/22 15:30
 */

package service

import (
	"bufio"
	"context"
	"database/sql"
	"fmt"
	"gfast/app/common/global"
	comModel "gfast/app/common/model"
	comService "gfast/app/common/service"
	"gfast/app/system/dao"
	"gfast/app/system/model"
	"github.com/gogf/gf/container/gmap"
	"github.com/gogf/gf/container/gset"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/encoding/gjson"
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gfile"
	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/os/gview"
	"github.com/gogf/gf/text/gregex"
	"github.com/gogf/gf/text/gstr"
	"github.com/gogf/gf/util/gconv"
	"io"
	"os"
	"sort"
	"strings"
)

type toolsGenTable struct{}

var ToolsGenTable = new(toolsGenTable)

// SelectListByPage 查询已导入的数据表
func (s *toolsGenTable) SelectListByPage(param *dao.ToolsGenTableSearchReq) (total int, list []*model.ToolsGenTable, err error) {
	model := dao.ToolsGenTable.M
	if param != nil {
		if param.TableName != "" {
			model = model.Where(dao.ToolsGenTable.C.TableName+" like ?", "%"+param.TableName+"%")
		}
		if param.TableComment != "" {
			model = model.Where(dao.ToolsGenTable.C.TableComment+"like ?", "%"+param.TableComment+"%")
		}
		if param.BeginTime != "" {
			model = model.Where(dao.ToolsGenTable.C.CreateTime+" >= ", param.BeginTime)
		}
		if param.EndTime != "" {
			model = model.Where(dao.ToolsGenTable.C.CreateTime+" <= ", param.EndTime)
		}
		total, err = model.Count()
		if err != nil {
			g.Log().Error(err)
			err = gerror.New("获取总行数失败")
			return
		}
		if param.PageNum == 0 {
			param.PageNum = 1
		}
		if param.PageSize == 0 {
			param.PageSize = comModel.PageSize
		}
		err = model.Page(param.PageNum, param.PageSize).Order(dao.ToolsGenTable.C.TableId + " asc").Scan(&list)
		if err != nil {
			g.Log().Error(err)
			err = gerror.New("获取数据失败")
		}
	}
	return
}

// SelectDbTableList 查询据库表
func (s *toolsGenTable) SelectDbTableList(param *dao.ToolsGenTableSearchReq) (total int, list []*model.ToolsGenTable, err error) {
	db := g.DB()
	if s.getDbDriver() != "mysql" {
		err = gerror.New("代码生成暂时只支持mysql数据库")
		return
	}
	sql := " from information_schema.tables where table_schema = (select database())" +
		" and table_name NOT LIKE 'qrtz_%' AND table_name NOT LIKE 'gen_%' and table_name NOT IN (select table_name from " + dao.ToolsGenTable.Table + ") "
	if param != nil {
		if param.TableName != "" {
			sql += gdb.FormatSqlWithArgs(" and lower(table_name) like lower(?)", []interface{}{"%" + param.TableName + "%"})
		}

		if param.TableComment != "" {
			sql += gdb.FormatSqlWithArgs(" and lower(table_comment) like lower(?)", []interface{}{"%" + param.TableComment + "%"})
		}

		if param.BeginTime != "" {
			sql += gdb.FormatSqlWithArgs(" and date_format(create_time,'%y%m%d') >= date_format(?,'%y%m%d') ", []interface{}{param.BeginTime})
		}

		if param.EndTime != "" {
			sql += gdb.FormatSqlWithArgs(" and date_format(create_time,'%y%m%d') <= date_format(?,'%y%m%d') ", []interface{}{param.EndTime})
		}
	}
	countSql := "select count(1) " + sql
	total, err = db.GetCount(countSql)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("读取总表数失败")
		return
	}
	sql = "table_name, table_comment, create_time, update_time " + sql

	if param.PageNum == 0 {
		param.PageNum = 1
	}

	if param.PageSize == 0 {
		param.PageSize = comModel.PageSize
	}
	page := (param.PageNum - 1) * param.PageSize
	sql += " order by create_time desc,table_name asc limit  " + gconv.String(page) + "," + gconv.String(param.PageSize)
	err = db.GetScan(&list, "select "+sql)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("读取数据失败")
	}
	return
}

//获取数据库驱动类型
func (s *toolsGenTable) getDbDriver() string {
	config := g.DB().GetConfig()
	return gstr.ToLower(config.Type)
}

// SelectDbTableListByNames 查询数据库中对应的表数据
func (s *toolsGenTable) SelectDbTableListByNames(tableNames []string) ([]*model.ToolsGenTable, error) {
	if s.getDbDriver() != "mysql" {
		return nil, gerror.New("代码生成只支持mysql数据库")
	}
	db := g.DB()
	sql := "select * from information_schema.tables where table_name NOT LIKE 'qrtz_%' and table_name NOT LIKE 'gen_%' " +
		" and table_schema = (select database()) "
	if len(tableNames) > 0 {
		in := gstr.TrimRight(gstr.Repeat("?,", len(tableNames)), ",")
		sql += " and " + gdb.FormatSqlWithArgs("table_name in ("+in+")", gconv.SliceAny(tableNames))
	}
	var result []*model.ToolsGenTable
	err := db.GetScan(&result, sql)
	if err != nil {
		g.Log().Error(err)
		return nil, gerror.New("获取表格信息失败")
	}
	return result, err
}

// ImportGenTable 导入表结构
func (s *toolsGenTable) ImportGenTable(tableList []*model.ToolsGenTable) error {
	if tableList != nil {
		tx, err := g.DB().Begin()
		if err != nil {
			return err
		}
		for _, table := range tableList {
			tableName := table.TableName
			// 保存列信息
			genTableColumns, err := ToolsGenTableColumn.SelectDbTableColumnsByName(tableName)
			if err != nil || len(genTableColumns) <= 0 {
				_ = tx.Rollback()
				return gerror.New("获取列数据失败")
			}
			err = s.InitTable(table, genTableColumns)
			if err != nil {
				_ = tx.Rollback()
				return err
			}
			result, err1 := tx.Model(dao.ToolsGenTable.Table).Insert(table)
			if err1 != nil {
				_ = tx.Rollback()
				return err1
			}
			tmpId, err2 := result.LastInsertId()

			if err2 != nil || tmpId <= 0 {
				_ = tx.Rollback()
				return gerror.New("保存数据失败")
			}

			table.TableId = tmpId
			for _, column := range genTableColumns {
				ToolsGenTableColumn.InitColumnField(column, table)
				_, err3 := tx.Model(dao.ToolsGenTableColumn.Table).Insert(column)
				if err3 != nil {
					_ = tx.Rollback()
					return gerror.New("保存列数据失败")
				}
			}
		}
		return tx.Commit()
	} else {
		return gerror.New("参数错误")
	}
}

// InitTable 初始化表信息
func (s *toolsGenTable) InitTable(table *model.ToolsGenTable, columns []*model.ToolsGenTableColumn) error {
	table.ClassName = s.ConvertClassName(table.TableName)
	table.PackageName = g.Cfg().GetString("gen.packageName")
	table.ModuleName = g.Cfg().GetString("gen.moduleName")
	table.BusinessName = s.GetBusinessName(table.TableName)
	table.FunctionName = strings.ReplaceAll(table.TableComment, "表", "")
	table.FunctionAuthor = g.Cfg().GetString("gen.author")
	table.TplCategory = "crud"
	pkColumn, err := s.getPkColumn(columns)
	if err != nil {
		return err
	}
	table.Overwrite = false
	table.SortColumn = pkColumn.ColumnName
	table.SortType = "asc"
	table.ShowDetail = false
	table.CreateTime = gtime.Now()
	table.UpdateTime = table.CreateTime
	return nil
}

// ConvertClassName 表名转换成类名
func (s *toolsGenTable) ConvertClassName(tableName string) string {
	return gstr.CaseCamel(s.removeTablePrefix(tableName))
}

// GetBusinessName 获取业务名
func (s *toolsGenTable) GetBusinessName(tableName string) string {
	return s.removeTablePrefix(tableName)
}

// 找到主键 column
func (s *toolsGenTable) getPkColumn(columns []*model.ToolsGenTableColumn) (*model.ToolsGenTableColumn, error) {
	for _, column := range columns {
		if column.IsPk {
			return column, nil
		}
	}
	return nil, gerror.New("无法找到主键")
}

//删除表前缀
func (s *toolsGenTable) removeTablePrefix(tableName string) string {
	autoRemovePre := g.Cfg().GetBool("gen.autoRemovePre")
	tablePrefix := g.Cfg().GetString("gen.tablePrefix")
	if autoRemovePre && tablePrefix != "" {
		searchList := strings.Split(tablePrefix, ",")
		for _, str := range searchList {
			if strings.HasPrefix(tableName, str) {
				tableName = strings.Replace(tableName, str, "", 1) //注意，只替换一次
			}
		}
	}
	return tableName
}

// Delete 删除表信息
func (s *toolsGenTable) Delete(ids []int) error {
	tx, err := g.DB().Begin()
	if err != nil {
		g.Log().Error(err)
		return gerror.New("开启删除事务出错")
	}
	_, err = tx.Model(dao.ToolsGenTable.Table).Where(dao.ToolsGenTable.C.TableId+" in(?)", ids).Delete()
	if err != nil {
		g.Log().Error(err)
		tx.Rollback()
		return gerror.New("删除表格数据失败")
	}
	_, err = tx.Model(dao.ToolsGenTableColumn.Table).Where(dao.ToolsGenTableColumn.C.TableId+" in(?)", ids).Delete()
	if err != nil {
		g.Log().Error(err)
		tx.Rollback()
		return gerror.New("删除表格字段数据失败")
	}
	tx.Commit()
	return nil
}

// GetTableInfoByTableId 获取表格信息
func (s *toolsGenTable) GetTableInfoByTableId(tableId int64) (info *model.ToolsGenTable, err error) {
	err = dao.ToolsGenTable.WherePri(tableId).Scan(&info)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取表格信息出错")
	}
	return
}

// SaveEdit 更新表及字段生成信息
func (s *toolsGenTable) SaveEdit(req *dao.ToolsGenTableEditReq) (err error) {
	if req == nil {
		err = gerror.New("参数错误")
		return
	}
	var table *model.ToolsGenTable
	err = dao.ToolsGenTable.Where("table_id=?", req.TableId).Scan(&table)
	if err != nil || table == nil {
		err = gerror.New("数据不存在")
		return
	}
	if req.TableName != "" {
		table.TableName = req.TableName
	}
	if req.TableComment != "" {
		table.TableComment = req.TableComment
	}
	if req.BusinessName != "" {
		table.BusinessName = req.BusinessName
	}
	if req.ClassName != "" {
		table.ClassName = req.ClassName
	}
	if req.FunctionAuthor != "" {
		table.FunctionAuthor = req.FunctionAuthor
	}
	if req.FunctionName != "" {
		table.FunctionName = req.FunctionName
	}
	if req.ModuleName != "" {
		table.ModuleName = req.ModuleName
	}
	if req.PackageName != "" {
		table.PackageName = req.PackageName
	}
	if req.Remark != "" {
		table.Remark = req.Remark
	}
	if req.Overwrite != "" {
		table.Overwrite = gconv.Bool(req.Overwrite)
	}
	if req.SortColumn != "" {
		table.SortColumn = req.SortColumn
	}
	if req.SortType != "" {
		table.SortType = req.SortType
	}
	if req.ShowDetail != "" {
		table.ShowDetail = gconv.Bool(req.ShowDetail)
	}
	if req.TplCategory != "" {
		table.TplCategory = req.TplCategory
	}
	if req.Params != "" {
		table.Options = req.Params
	}
	table.UpdateTime = gtime.Now()
	var options g.Map
	if req.TplCategory == "tree" {
		//树表设置options
		options = g.Map{
			"treeCode":       req.TreeCode,
			"treeParentCode": req.TreeParentCode,
			"treeName":       req.TreeName,
		}
		table.Options = gconv.String(options)
	} else {
		table.Options = ""
	}

	var tx *gdb.TX
	tx, err = g.DB().Begin()
	if err != nil {
		return
	}
	_, err = tx.Model(dao.ToolsGenTable.Table).Save(table)
	if err != nil {
		tx.Rollback()
		return err
	}

	//保存列数据
	if req.Columns != nil {
		for _, column := range req.Columns {
			if column.ColumnId > 0 {
				var dbColumn *model.ToolsGenTableColumn
				err = dao.ToolsGenTableColumn.Where("column_id=?", column.ColumnId).Scan(&dbColumn)
				if dbColumn != nil {
					dbColumn.ColumnComment = column.ColumnComment
					dbColumn.GoType = column.GoType
					dbColumn.HtmlType = column.HtmlType
					dbColumn.HtmlField = column.HtmlField
					dbColumn.QueryType = column.QueryType
					dbColumn.GoField = column.GoField
					dbColumn.DictType = column.DictType
					dbColumn.IsInsert = column.IsInsert
					dbColumn.IsEdit = column.IsEdit
					dbColumn.IsList = column.IsList
					dbColumn.IsDetail = column.IsDetail
					dbColumn.IsQuery = column.IsQuery
					dbColumn.IsStatus = column.IsStatus
					dbColumn.SortOrderEdit = column.SortOrderEdit
					dbColumn.SortOrderList = column.SortOrderList
					dbColumn.SortOrderDetail = column.SortOrderDetail
					dbColumn.SortOrderQuery = column.SortOrderQuery
					dbColumn.IsRequired = column.IsRequired
					dbColumn.ColSpan = column.ColSpan
					dbColumn.RowSpan = column.RowSpan
					dbColumn.IsRowStart = column.IsRowStart
					dbColumn.MinWidth = column.MinWidth
					dbColumn.IsFixed = column.IsFixed
					dbColumn.IsOverflowTooltip = column.IsOverflowTooltip
					dbColumn.IsCascade = column.IsCascade
					dbColumn.ParentColumnName = column.ParentColumnName
					dbColumn.CascadeColumnName = column.CascadeColumnName
					if tc, e := options["treeParentCode"]; options != nil && e && tc != "" && tc == dbColumn.HtmlField {
						dbColumn.IsQuery = false
						dbColumn.IsList = false
						dbColumn.HtmlType = "select"
					}
					//获取字段关联表信息
					if column.LinkLabelName != "" {
						dbColumn.LinkTableName = column.LinkTableName
						dbColumn.LinkLabelId = column.LinkLabelId
						dbColumn.LinkLabelName = column.LinkLabelName
						var linkTable *model.ToolsGenTable
						err = dao.ToolsGenTable.Where("table_name =?", column.LinkTableName).Scan(&linkTable)
						if err != nil {
							tx.Rollback()
							return
						}
						dbColumn.LinkTableClass = linkTable.ClassName
						dbColumn.LinkTableModuleName = linkTable.ModuleName
						dbColumn.LinkTableBusinessName = linkTable.BusinessName
						dbColumn.LinkTablePackage = linkTable.PackageName
					} else {
						dbColumn.LinkTableName = ""
						dbColumn.LinkTableClass = ""
						dbColumn.LinkTableModuleName = ""
						dbColumn.LinkTableBusinessName = ""
						dbColumn.LinkTablePackage = ""
						dbColumn.LinkLabelId = ""
						dbColumn.LinkLabelName = ""
					}
					_, err = tx.Model(dao.ToolsGenTableColumn.Table).Save(dbColumn)
					if err != nil {
						tx.Rollback()
						return
					}
				}
			}
		}
	}
	tx.Commit()
	return
}

func (s *toolsGenTable) SelectRecordById(tableId int64) (tableEx *dao.ToolsGenTableEx, err error) {
	var table *model.ToolsGenTable
	table, err = s.GetTableInfoByTableId(tableId)
	if err != nil {
		return
	}
	m := gconv.Map(table)
	gconv.Struct(m, &tableEx)
	if tableEx.TplCategory == "tree" {
		opt := gjson.New(tableEx.Options)
		tableEx.TreeParentCode = opt.GetString("treeParentCode")
		tableEx.TreeCode = opt.GetString("treeCode")
		tableEx.TreeName = opt.GetString("treeName")
	}
	//表字段数据
	var columns []*model.ToolsGenTableColumn
	columns, err = ToolsGenTableColumn.SelectGenTableColumnListByTableId(tableId)
	if err != nil {
		return
	}
	for _, column := range columns {
		if column.GoType == "Time" {
			tableEx.HasTimeColumn = true
			continue
		}
	}

	allColumnExs := make([]*dao.ToolsGenTableColumnEx, len(columns))

	var (
		editColumns   []*dao.ToolsGenTableColumnEx
		listColumns   []*dao.ToolsGenTableColumnEx
		detailColumns []*dao.ToolsGenTableColumnEx
		queryColumns  []*dao.ToolsGenTableColumnEx
	)

	columnMap := make(map[string]*dao.ToolsGenTableColumnEx, len(columns))
	for i, column := range columns {
		columnName := column.ColumnName
		columnEx := &dao.ToolsGenTableColumnEx{}
		m1 := gconv.Map(column)
		err = gconv.Struct(m1, columnEx)
		columnMap[columnName] = columnEx
		allColumnExs[i] = columnEx
		tableEx.IsPkInsertable = tableEx.IsPkInsertable || column.IsPk && !column.IsIncrement
		tableEx.IsPkListable = tableEx.IsPkListable || column.IsPk && column.IsList
		if column.IsEdit && !ToolsGenTableColumn.IsNotEdit(columnName) && !column.IsPk {
			editColumns = append(editColumns, columnEx)
			columnEx.IsEdit = true
		} else {
			columnEx.IsEdit = false
		}
		if column.IsList && !ToolsGenTableColumn.IsNotList(columnName) {
			listColumns = append(listColumns, columnEx)
			columnEx.IsList = true
		} else {
			columnEx.IsList = false
		}
		if column.IsDetail && !ToolsGenTableColumn.IsNotDetail(columnName) {
			detailColumns = append(detailColumns, columnEx)
			columnEx.IsDetail = true
		} else {
			columnEx.IsDetail = false
		}
		if column.IsQuery && !ToolsGenTableColumn.IsNotQuery(columnName) {
			queryColumns = append(queryColumns, columnEx)
			columnEx.IsQuery = true
		} else {
			columnEx.IsQuery = false
		}
		// validation 规则 和 conversion 方法
		integerValidationRule := "integer"
		floatValidationRule := "float"
		dateValidationRule := "date"
		datetimeValidationRule := "datetime"
		if column.QueryType == "BETWEEN" {
			integerValidationRule += "-array"
			floatValidationRule += "-array"
			dateValidationRule += "-array"
			datetimeValidationRule += "-array"
		}
		switch column.GoType {
		case "byte":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + integerValidationRule + "|max-length:1#" + column.ColumnComment + "需为整数"
			columnEx.FieldConversion = "gconv.Uint64"
			tableEx.HasConversion = true
			break
		case "int":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + integerValidationRule + "#" + column.ColumnComment + "需为整数"
			columnEx.FieldConversion = "gconv.Int"
			tableEx.HasConversion = true
			break
		case "int64":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + integerValidationRule + "#" + column.ColumnComment + "需为整数"
			columnEx.FieldConversion = "gconv.Int64"
			tableEx.HasConversion = true
			break
		case "uint":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + integerValidationRule + "#" + column.ColumnComment + "需为整数"
			columnEx.FieldConversion = "gconv.Uint"
			tableEx.HasConversion = true
			break
		case "uint64":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + integerValidationRule + "#" + column.ColumnComment + "需为整数"
			columnEx.FieldConversion = "gconv.Uint64"
			tableEx.HasConversion = true
			break
		case "float":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + floatValidationRule + "#" + column.ColumnComment + "需为浮点数"
			columnEx.FieldConversion = "gconv.Float"
			tableEx.HasConversion = true
			break
		case "float64":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + floatValidationRule + "#" + column.ColumnComment + "需为浮点数"
			columnEx.FieldConversion = "gconv.Float64"
			tableEx.HasConversion = true
			break
		case "bool":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@boolean#" + column.ColumnComment + "需为true/false"
			columnEx.FieldConversion = "gconv.Bool"
			tableEx.HasConversion = true
			break
		case "date":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + dateValidationRule + "#" + column.ColumnComment + "需为YYYY-MM-DD格式"
			columnEx.FieldConversion = "gconv.Time"
			tableEx.HasConversion = true
			break
		case "Time":
			columnEx.FieldValidation = gstr.CaseCamelLower(columnName) + "@" + datetimeValidationRule + "#" + column.ColumnComment + "需为YYYY-MM-DD hh:mm:ss格式"
			columnEx.FieldConversion = "gconv.Time"
			tableEx.HasConversion = true
			break
		}
	}

	sort.Slice(editColumns, func(i, j int) bool {
		return editColumns[i].SortOrderEdit < editColumns[j].SortOrderEdit
	})
	sort.Slice(listColumns, func(i, j int) bool {
		return listColumns[i].SortOrderList < listColumns[j].SortOrderList
	})
	sort.Slice(detailColumns, func(i, j int) bool {
		return detailColumns[i].SortOrderDetail < detailColumns[j].SortOrderDetail
	})
	sort.Slice(queryColumns, func(i, j int) bool {
		return queryColumns[i].SortOrderQuery < queryColumns[j].SortOrderQuery
	})

	tableEx.Columns = allColumnExs
	tableEx.EditColumns = editColumns
	tableEx.DetailColumns = detailColumns
	tableEx.ListColumns = listColumns
	tableEx.QueryColumns = queryColumns

	_, hasCreatedBy := columnMap["created_by"]
	tableEx.HasCreatedBy = hasCreatedBy
	_, hasUpdateBy := columnMap["updated_by"]
	tableEx.HasUpdatedBy = hasUpdateBy

	for _, column := range allColumnExs {
		if column.IsCascade {
			parentColumnName := column.ParentColumnName
			if g.IsEmpty(parentColumnName) {
				err = gerror.New("级联查询字段\"" + column.ColumnName + "\"并未设置parentColumnName")
				return nil, err
			}
			parent := columnMap[parentColumnName]
			if g.IsEmpty(parent) {
				err = gerror.New("级联查询字段\"" + column.ColumnName + "\"的parentColumnName\"" + parentColumnName + "\"不存在于表中")
				return nil, err
			}
			column.ParentColumnName = parentColumnName
			column.CascadeParent = parent
			parent.IsCascadeParent = true
			parent.CascadeChildrenColumns = gset.NewStrSet()
		}
	}
	for _, column := range allColumnExs {
		if column.IsCascade {
			child := column
			for {
				parentColumnName := child.ParentColumnName
				if g.IsEmpty(parentColumnName) {
					break
				}
				parent := columnMap[parentColumnName]
				parent.CascadeChildrenColumns.Add(column.ColumnName)
				child = parent
			}
		}
	}

	// 提取关联表信息
	var linkedTableMap = gmap.New()
	for _, column := range allColumnExs {
		if len(column.LinkTableName) == 0 {
			continue
		}
		linkedTableName := column.LinkTableName
		// 关联表信息
		linkedTableInfo, err1 := s.getLinkedTableInfo(linkedTableName)
		if err1 != nil {
			err = err1
			return
		}
		linkedTable := linkedTableMap.GetOrSet(linkedTableName, interface{}(linkedTableInfo)).(*dao.ToolsGenTableLinked)

		allColumnMap, err2 := ToolsGenTableColumn.SelectDbTableColumnMapByName(linkedTableName)
		if err2 != nil {
			err = err2
			return
		}
		// 关联字段
		linkedTableIdColumn, foundId := allColumnMap[column.LinkLabelId]
		if !foundId {
			err = gerror.New("无法找到关联表的列" + column.LinkLabelId)
			return
		}
		linkedTableValueColumn, foundValue := allColumnMap[column.LinkLabelName]
		if !foundValue {
			err = gerror.New("无法找到关联表的列" + column.LinkLabelId)
			return
		}
		ToolsGenTableColumn.InitColumnField(linkedTableIdColumn, table)
		ToolsGenTableColumn.InitColumnField(linkedTableValueColumn, table)
		linkedTable.OrmWithMapping = "orm:\"with:" + column.LinkLabelId + "=" + column.ColumnName + "\""
		if linkedTableIdColumn.GoType == "Time" || linkedTableValueColumn.GoType == "Time" {
			tableEx.HasTimeColumn = true
		}
		linkedTable.RefColumns.GetOrSet(linkedTableIdColumn.ColumnName, linkedTableIdColumn)
		linkedTable.RefColumns.GetOrSet(linkedTableValueColumn.ColumnName, &linkedTableValueColumn)
	}

	tableEx.LinkedTables = make([]*dao.ToolsGenTableLinked, linkedTableMap.Size())
	for i, v := range linkedTableMap.Values() {
		tableEx.LinkedTables[i] = v.(*dao.ToolsGenTableLinked)
	}
	return
}

func (s *toolsGenTable) getLinkedTableInfo(tableName string) (linkedTable *dao.ToolsGenTableLinked, err error) {
	var table *model.ToolsGenTable
	err = dao.ToolsGenTable.Where(dao.ToolsGenTable.C.TableName, tableName).Scan(&table)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取关联表格" + tableName + "信息出错")
		return
	}
	m := gconv.Map(table)
	err = gconv.Struct(m, &linkedTable)
	linkedTable.RefColumns = gmap.NewListMap()
	return
}

func (s *toolsGenTable) GenCode(ids []int, ctx context.Context) (err error) {
	//获取当前运行时目录
	curDir, err := os.Getwd()
	if err != nil {
		return gerror.New("获取本地路径失败")
	}
	frontDir := g.Cfg().GetString("gen.frontDir")
	if !gfile.IsDir(frontDir) {
		err = gerror.New("项目前端路径不存在，请检查是否已在配置文件中配置！")
		return
	}
	for _, id := range ids {
		var genData g.MapStrStr
		var extendData *dao.ToolsGenTableEx
		genData, extendData, err = s.GenData(gconv.Int64(id), ctx)
		packageName := gstr.SubStr(extendData.PackageName, gstr.Pos(extendData.PackageName, "/"))
		businessName := gstr.CaseCamelLower(extendData.BusinessName)
		for key, code := range genData {
			switch key {
			case "controller":
				path := strings.Join([]string{curDir, packageName, "/api/", extendData.TableName, ".go"}, "")
				err = s.createFile(path, code, extendData.Overwrite)
			case "dao":
				path := strings.Join([]string{curDir, packageName, "/dao/", extendData.TableName, ".go"}, "")
				err = s.createFile(path, code, extendData.Overwrite)
			case "dao_internal":
				path := strings.Join([]string{curDir, packageName, "/dao/internal/", extendData.TableName, ".go"}, "")
				err = s.createFile(path, code, extendData.Overwrite)
			case "model":
				path := strings.Join([]string{curDir, packageName, "/model/", extendData.TableName, ".go"}, "")
				err = s.createFile(path, code, extendData.Overwrite)
			case "router":
				path := strings.Join([]string{curDir, packageName, "/router/", extendData.TableName, ".go"}, "")
				err = s.createFile(path, code, extendData.Overwrite)
			case "service":
				path := strings.Join([]string{curDir, packageName, "/service/", extendData.TableName, ".go"}, "")
				err = s.createFile(path, code, extendData.Overwrite)
			case "sql":
				path := strings.Join([]string{curDir, "/data/gen_sql/", packageName, "/", extendData.TableName, ".sql"}, "")
				hasSql := gfile.Exists(path)
				err = s.createFile(path, code, extendData.Overwrite)
				if !hasSql || extendData.Overwrite {
					//第一次生成则向数据库写入菜单数据
					err = s.writeDb(path, ctx)
					if err != nil {
						return
					}
					//清除菜单缓存
					comService.Cache.New().Remove(global.SysAuthMenu)
				}
			case "vue":
				path := strings.Join([]string{frontDir, "/src/views/", extendData.ModuleName, "/", businessName, "/list/index.vue"}, "")
				if gstr.ContainsI(extendData.PackageName, "plugins") {
					path = strings.Join([]string{frontDir, "/src/views/plugins/", extendData.ModuleName, "/", businessName, "/list/index.vue"}, "")
				}
				err = s.createFile(path, code, extendData.Overwrite)
			case "jsApi":
				path := strings.Join([]string{frontDir, "/src/api/", extendData.ModuleName, "/", businessName, ".js"}, "")
				if gstr.ContainsI(extendData.PackageName, "plugins") {
					path = strings.Join([]string{frontDir, "/src/api/plugins/", extendData.ModuleName, "/", businessName, ".js"}, "")
				}
				err = s.createFile(path, code, extendData.Overwrite)
			}
		}
		//生成对应的模块路由
		err = s.genModuleRouter(curDir, extendData.ModuleName, extendData.PackageName)
	}
	return
}

// createFile 创建文件
func (s *toolsGenTable) createFile(fileName, data string, cover bool) (err error) {
	if !gfile.Exists(fileName) || cover {
		var f *os.File
		f, err = gfile.Create(fileName)
		if err == nil {
			f.WriteString(data)
		}
		f.Close()
	}
	return
}

// GenData 获取生成数据
func (s *toolsGenTable) GenData(tableId int64, ctx context.Context) (data g.MapStrStr, extendData *dao.ToolsGenTableEx, err error) {
	extendData, err = ToolsGenTable.SelectRecordById(tableId)
	if err != nil {
		return
	}
	if extendData == nil {
		err = gerror.New("表格数据不存在")
		return
	}
	ToolsGenTableColumn.SetPkColumn(extendData, extendData.Columns)
	view := gview.New()
	view.SetConfigWithMap(g.Map{
		"Paths":      g.Cfg().GetString("gen.templatePath"),
		"Delimiters": []string{"{{", "}}"},
	})
	view.BindFuncMap(g.Map{
		"UcFirst": func(str string) string {
			return gstr.UcFirst(str)
		},
		"Sum": func(a, b int) int {
			return a + b
		},
		"CaseCamelLower": gstr.CaseCamelLower, //首字母小写驼峰
		"CaseCamel":      gstr.CaseCamel,      //首字母大写驼峰
		"HasSuffix":      gstr.HasSuffix,      //是否存在后缀
		"ContainsI":      gstr.ContainsI,      //是否包含子字符串
		"VueTag": func(t string) string {
			return t
		},
	})

	//树形菜单选项
	tplData := g.Map{"table": extendData}
	daoKey := "dao"
	daoValue := ""
	var tmpDao string
	if tmpDao, err = view.Parse(ctx, "go/dao.template", tplData); err == nil {
		daoValue = tmpDao
		daoValue, err = s.trimBreak(daoValue)
	} else {
		return
	}
	daoInternalKey := "dao_internal"
	daoInternalValue := ""
	var tmpInternalDao string
	if tmpInternalDao, err = view.Parse(ctx, "go/dao_internal.template", tplData); err == nil {
		daoInternalValue = tmpInternalDao
		daoInternalValue, err = s.trimBreak(daoInternalValue)
	} else {
		return
	}
	modelKey := "model"
	modelValue := ""
	var tmpModel string
	if tmpModel, err = view.Parse(ctx, "go/model.template", tplData); err == nil {
		modelValue = tmpModel
		modelValue, err = s.trimBreak(modelValue)
	} else {
		return
	}
	controllerKey := "controller"
	controllerValue := ""
	var tmpController string
	if tmpController, err = view.Parse(ctx, "go/controller.template", tplData); err == nil {
		controllerValue = tmpController
		controllerValue, err = s.trimBreak(controllerValue)
	} else {
		return
	}

	serviceKey := "service"
	serviceValue := ""
	var tmpService string
	if tmpService, err = view.Parse(ctx, "go/service.template", tplData); err == nil {
		serviceValue = tmpService
		serviceValue, err = s.trimBreak(serviceValue)
	} else {
		return
	}

	routerKey := "router"
	routerValue := ""
	var tmpRouter string
	if tmpRouter, err = view.Parse(ctx, "go/router.template", tplData); err == nil {
		routerValue = tmpRouter
		routerValue, err = s.trimBreak(routerValue)
	} else {
		return
	}

	sqlKey := "sql"
	sqlValue := ""
	var tmpSql string
	if tmpSql, err = view.Parse(ctx, "sql/sql.template", tplData); err == nil {
		sqlValue = tmpSql
		sqlValue, err = s.trimBreak(sqlValue)
	} else {
		return
	}

	jsApiKey := "jsApi"
	jsApiValue := ""
	var tmpJsApi string
	if tmpJsApi, err = view.Parse(ctx, "js/api.template", tplData); err == nil {
		jsApiValue = tmpJsApi
		jsApiValue, err = s.trimBreak(jsApiValue)
	} else {
		return
	}

	vueKey := "vue"
	vueValue := ""
	var tmpVue string
	tmpFile := "vue/list-vue.template"
	if extendData.TplCategory == "tree" {
		//树表
		tmpFile = "vue/tree-vue.template"
	}
	if tmpVue, err = view.Parse(ctx, tmpFile, tplData); err == nil {
		vueValue = tmpVue
		vueValue, err = s.trimBreak(vueValue)
	} else {
		return
	}

	data = g.MapStrStr{
		daoKey:         daoValue,
		daoInternalKey: daoInternalValue,
		modelKey:       modelValue,
		controllerKey:  controllerValue,
		serviceKey:     serviceValue,
		routerKey:      routerValue,
		sqlKey:         sqlValue,
		jsApiKey:       jsApiValue,
		vueKey:         vueValue,
	}
	return
}

//剔除多余的换行
func (s *toolsGenTable) trimBreak(str string) (rStr string, err error) {
	var b []byte
	if b, err = gregex.Replace("(([\\s\t]*)\r?\n){2,}", []byte("$2\n"), []byte(str)); err != nil {
		return
	}
	if b, err = gregex.Replace("(([\\s\t]*)/{4}\r?\n)", []byte("$2\n\n"), b); err == nil {
		rStr = gconv.String(b)
	}
	return
}

// 写入菜单数据
func (s *toolsGenTable) writeDb(path string, ctx context.Context) (err error) {
	isAnnotation := false
	var fi *os.File
	fi, err = os.Open(path)
	if err != nil {
		return
	}
	defer fi.Close()
	br := bufio.NewReader(fi)
	var sqlStr []string
	now := gtime.Now()
	var res sql.Result
	var id int64
	var tx *gdb.TX
	tx, err = g.DB().Ctx(ctx).Begin()
	if err != nil {
		return
	}
	for {
		bytes, e := br.ReadBytes('\n')
		if e == io.EOF {
			break
		}
		str := gstr.Trim(string(bytes))

		if str == "" {
			continue
		}

		if strings.Contains(str, "/*") {
			isAnnotation = true
		}

		if isAnnotation {
			if strings.Contains(str, "*/") {
				isAnnotation = false
			}
			continue
		}

		if str == "" || strings.HasPrefix(str, "--") || strings.HasPrefix(str, "#") {
			continue
		}
		if strings.HasSuffix(str, ";") {
			if gstr.ContainsI(str, "select") {
				if gstr.ContainsI(str, "@now") {
					continue
				}
				if gstr.ContainsI(str, "@parentId") {
					id, err = res.LastInsertId()
				}
			}
			sqlStr = append(sqlStr, str)
			sql := strings.Join(sqlStr, "")
			gstr.ReplaceByArray(sql, []string{"@parentId", gconv.String(id), "@now", now.Format("Y-m-d H:i:s")})
			//插入业务
			res, err = tx.Exec(sql)
			if err != nil {
				tx.Rollback()
				return
			}
			sqlStr = nil
		} else {
			sqlStr = []string{str}
		}
	}
	tx.Commit()
	return
}

// GenModuleRouter 生成模块路由
func (s *toolsGenTable) genModuleRouter(curDir, moduleName, packageName string) (err error) {
	if gstr.CaseSnake(moduleName) != "system" {
		routerFilePath := strings.Join([]string{curDir, "/router/", gstr.CaseSnake(moduleName), ".go"}, "")
		if gstr.ContainsI(packageName, "plugins") {
			routerFilePath = strings.Join([]string{curDir, "/plugins/router/", gstr.CaseSnake(moduleName), ".go"}, "")
		}
		code := fmt.Sprintf(`package router%simport _ "%s/router"`, "\n", packageName)
		err = s.createFile(routerFilePath, code, false)
	}
	return
}
