/*
* @desc:代码生成表格字段维护
* @company:云南省奇讯科技有限公司
* @Author: yixiaohu
* @Date:   2021/7/22 17:39
 */

package service

import (
	"gfast/app/system/dao"
	"gfast/app/system/model"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/text/gregex"
	"github.com/gogf/gf/text/gstr"
	"github.com/gogf/gf/util/gconv"
	"strings"
)

var (
	ToolsGenTableColumn = &toolsGenTableColumn{
		ColumnTypeStr:       []string{"char", "varchar", "narchar", "varchar2", "tinytext", "text", "mediumtext", "longtext"},
		ColumnTypeTime:      []string{"datetime", "time", "date", "timestamp"},
		ColumnTypeNumber:    []string{"tinyint", "smallint", "mediumint", "int", "number", "integer", "bigint", "float", "float", "double", "decimal"},
		ColumnNameNotEdit:   []string{"created_by", "created_at", "updated_by", "updated_at", "deleted_at"},
		ColumnNameNotList:   []string{"updated_by", "updated_at", "deleted_at"},
		ColumnNameNotDetail: []string{"updated_by", "updated_at", "deleted_at"},
		ColumnNameNotQuery:  []string{"updated_by", "updated_at", "deleted_at", "remark"},
	}
)

type toolsGenTableColumn struct {
	ColumnTypeStr       []string //数据库字符串类型
	ColumnTypeTime      []string //数据库时间类型
	ColumnTypeNumber    []string //数据库数字类型
	ColumnNameNotEdit   []string //页面不需要编辑字段
	ColumnNameNotList   []string //页面不需要显示的列表字段
	ColumnNameNotDetail []string //页面不需要显示的详情字段
	ColumnNameNotQuery  []string //页面不需要查询字段
}

// SelectDbTableColumnsByName 根据表名称查询列信息
func (s *toolsGenTableColumn) SelectDbTableColumnsByName(tableName string) ([]*model.ToolsGenTableColumn, error) {
	db := g.DB()
	var res []*model.ToolsGenTableColumn
	sql := " select column_name, (case when (is_nullable = 'YES' || is_nullable = 'NO' && column_default is not null) then '0' else '1' end) as is_required, " +
		"(case when column_key = 'PRI' then '1' else '0' end) as is_pk, ordinal_position as sort_order_edit, column_comment," +
		" (case when extra = 'auto_increment' then '1' else '0' end) as is_increment, column_type from information_schema.columns" +
		" where table_schema = (select database()) "
	sql += " and " + gdb.FormatSqlWithArgs(" table_name=? ", []interface{}{tableName}) + " order by ordinal_position ASC "
	err := db.GetScan(&res, sql)
	if err != nil {
		g.Log().Error(err)
		return nil, gerror.New("查询列信息失败")
	}
	return res, nil

}

func (s *toolsGenTableColumn) SelectDbTableColumnMapByName(tableName string) (map[string]*model.ToolsGenTableColumn, error) {
	list, err := s.SelectDbTableColumnsByName(tableName)
	if err != nil {
		return nil, err
	}
	res := make(map[string]*model.ToolsGenTableColumn, len(list))
	for _, item := range list {
		res[item.ColumnName] = item
	}
	return res, nil
}

// InitColumnField 初始化列属性字段
func (s *toolsGenTableColumn) InitColumnField(column *model.ToolsGenTableColumn, table *model.ToolsGenTable) {
	dataType := s.GetDbType(column.ColumnType)
	columnName := column.ColumnName
	column.TableId = table.TableId
	//设置字段名
	column.GoField = gstr.CaseCamel(columnName)
	column.HtmlField = gstr.CaseCamelLower(columnName)

	if s.IsStringObject(dataType) {
		//字段为字符串类型
		column.GoType = "string"
		columnLength := s.GetColumnLength(column.ColumnType)
		if columnLength >= 500 {
			column.HtmlType = "textarea"
		} else {
			column.HtmlType = "input"
		}
	} else if s.IsTimeObject(dataType) {
		//字段为时间类型
		column.GoType = "Time"
		column.HtmlType = "datetime"
	} else if s.IsNumberObject(dataType) {
		//字段为数字类型
		column.HtmlType = "input"
		t, _ := gregex.ReplaceString(`\(.+\)`, "", column.ColumnType)
		t = gstr.Split(gstr.Trim(t), " ")[0]
		t = gstr.ToLower(t)
		// 如果是浮点型
		switch t {
		case "float", "double", "decimal":
			column.GoType = "float64"
		case "bit", "int", "tinyint", "small_int", "smallint", "medium_int", "mediumint":
			if gstr.ContainsI(column.ColumnType, "unsigned") {
				column.GoType = "uint"
			} else {
				column.GoType = "int"
			}
		case "big_int", "bigint":
			if gstr.ContainsI(column.ColumnType, "unsigned") {
				column.GoType = "uint64"
			} else {
				column.GoType = "int64"
			}
		}
	} else if dataType == "bit" {
		column.GoType = "bool"
	}

	//新增字段
	if s.IsNotEdit(columnName) {
		column.IsInsert = false
	} else if column.IsIncrement {
		column.IsInsert = false
	} else {
		column.IsInsert = true
	}

	// 编辑字段
	if s.IsNotEdit(columnName) {
		column.IsEdit = false
	} else if column.IsPk {
		column.IsEdit = false
	} else {
		column.IsEdit = true
	}
	// 列表字段
	if s.IsNotList(columnName) {
		column.IsList = false
	} else {
		column.IsList = true
	}
	// 详情字段
	if s.IsNotDetail(columnName) {
		column.IsDetail = false
	} else {
		column.IsDetail = true
	} // 查询字段
	if s.IsNotQuery(columnName) {
		column.IsQuery = false
	} else {
		column.IsQuery = true
	}

	// 查询字段类型
	if s.CheckNameColumn(columnName) {
		column.QueryType = "LIKE"
	} else {
		column.QueryType = "EQ"
	}

	// todo 最好不要用字段名来推断是否必填
	if strings.Index(columnName, "name") >= 0 || strings.Index(columnName, "status") >= 0 {
		column.IsRequired = true
	}

	// 状态字段设置单选框
	if s.CheckStatusColumn(columnName) {
		column.HtmlType = "radio"
		column.IsStatus = true
	} else if s.CheckTypeColumn(columnName) || s.CheckSexColumn(columnName) {
		// 类型&性别字段设置下拉框
		column.HtmlType = "select"
	}

	column.SortOrderList = column.SortOrderEdit
	column.SortOrderDetail = column.SortOrderEdit
	column.SortOrderQuery = column.SortOrderEdit
	column.ColSpan = 12
	column.RowSpan = 1
	column.IsRowStart = false
	column.MinWidth = 100
	column.IsFixed = false
	column.IsOverflowTooltip = false
	column.IsCascade = false
	column.ParentColumnName = ""
	column.CascadeColumnName = ""
}

// GetDbType 获取数据库类型字段
func (s *toolsGenTableColumn) GetDbType(columnType string) string {
	if strings.Index(columnType, "(") > 0 {
		return columnType[0:strings.Index(columnType, "(")]
	} else if strings.Index(columnType, " ") > 0 { // 类似 int unsigned， 即 int 类型后面并没有标注长度
		return columnType[0:strings.Index(columnType, " ")]
	} else {
		return columnType
	}
}

// IsExistInArray 判断 value 是否存在在切片array中
func (s *toolsGenTableColumn) IsExistInArray(value string, array []string) bool {
	for _, v := range array {
		if v == value {
			return true
		}
	}
	return false
}

// GetColumnLength 获取字段长度
func (s *toolsGenTableColumn) GetColumnLength(columnType string) int {
	start := strings.Index(columnType, "(")
	end := strings.Index(columnType, ")")
	result := ""
	if start >= 0 && end >= 0 {
		result = columnType[start+1 : end-1]
	}
	return gconv.Int(result)
}

// IsStringObject 判断是否是数据库字符串类型
func (s *toolsGenTableColumn) IsStringObject(dataType string) bool {
	return s.IsExistInArray(dataType, s.ColumnTypeStr)
}

// IsTimeObject 判断是否是数据库时间类型
func (s *toolsGenTableColumn) IsTimeObject(dataType string) bool {
	return s.IsExistInArray(dataType, s.ColumnTypeTime)
}

// IsNumberObject 是否数字类型
func (s *toolsGenTableColumn) IsNumberObject(dataType string) bool {
	return s.IsExistInArray(dataType, s.ColumnTypeNumber)
}

// IsNotEdit 是否不可编辑
func (s *toolsGenTableColumn) IsNotEdit(name string) bool {
	return s.IsExistInArray(name, s.ColumnNameNotEdit)
}

// IsNotList 不在列表显示
func (s *toolsGenTableColumn) IsNotList(name string) bool {
	return s.IsExistInArray(name, s.ColumnNameNotList)
}

// IsNotDetail 不在详情显示
func (s *toolsGenTableColumn) IsNotDetail(name string) bool {
	return s.IsExistInArray(name, s.ColumnNameNotDetail)
}

// IsNotQuery 不可用于查询
func (s *toolsGenTableColumn) IsNotQuery(name string) bool {
	return s.IsExistInArray(name, s.ColumnNameNotQuery)
}

// CheckNameColumn 检查字段名后4位是否是name
func (s *toolsGenTableColumn) CheckNameColumn(columnName string) bool {
	if len(columnName) >= 4 {
		end := len(columnName)
		start := end - 4
		if start <= 0 {
			start = 0
		}
		tmp := columnName[start:end]
		if tmp == "name" {
			return true
		}
	}
	return false
}

// CheckStatusColumn 检查字段名后6位是否是status
func (s *toolsGenTableColumn) CheckStatusColumn(columnName string) bool {
	if len(columnName) >= 6 {
		end := len(columnName)
		start := end - 6

		if start <= 0 {
			start = 0
		}
		tmp := columnName[start:end]

		if tmp == "status" {
			return true
		}
	}

	return false
}

// CheckTypeColumn 检查字段名后4位是否是type
func (s *toolsGenTableColumn) CheckTypeColumn(columnName string) bool {
	if len(columnName) >= 4 {
		end := len(columnName)
		start := end - 4

		if start <= 0 {
			start = 0
		}

		if columnName[start:end] == "type" {
			return true
		}
	}
	return false
}

// CheckSexColumn 检查字段名后3位是否是sex
func (s *toolsGenTableColumn) CheckSexColumn(columnName string) bool {
	if len(columnName) >= 3 {
		end := len(columnName)
		start := end - 3
		if start <= 0 {
			start = 0
		}
		if columnName[start:end] == "sex" {
			return true
		}
	}
	return false
}

// SelectGenTableColumnListByTableId 查询业务字段列表
func (s *toolsGenTableColumn) SelectGenTableColumnListByTableId(tableId int64) (list []*model.ToolsGenTableColumn, err error) {
	err = dao.ToolsGenTableColumn.Where(dao.ToolsGenTableColumn.C.TableId, tableId).
		Order(dao.ToolsGenTableColumn.C.SortOrderEdit + " asc, " + dao.ToolsGenTableColumn.C.ColumnId + " asc").Scan(&list)
	if err != nil {
		g.Log().Error(err)
		return nil, gerror.New("获取字段信息出错")
	}
	return list, nil
}

// GetAllTableColumns 获取所有字段信息
func (s *toolsGenTableColumn) GetAllTableColumns() (list []*model.ToolsGenTableColumn, err error) {
	err = dao.ToolsGenTableColumn.Order(dao.ToolsGenTableColumn.C.SortOrderEdit + " asc, " + dao.ToolsGenTableColumn.C.ColumnId + " asc").Scan(&list)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取字段信息出错")
		return
	}
	return
}

func (s *toolsGenTableColumn) SetPkColumn(table *dao.ToolsGenTableEx, columns []*dao.ToolsGenTableColumnEx) {
	for _, column := range columns {
		if column.IsPk {
			table.PkColumn = column
			break
		}
	}
	if table.PkColumn == nil {
		table.PkColumn = columns[0]
	}
}
