// =================================================================================
// Code generated by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package model

// ToolsGenTableColumn is the golang structure for table tools_gen_table_column.
type ToolsGenTableColumn struct {
	ColumnId              int64  `orm:"column_id,primary"          json:"columnId"`              // 编号
	TableId               int64  `orm:"table_id"                   json:"tableId"`               // 归属表编号
	ColumnName            string `orm:"column_name"                json:"columnName"`            // 列名称
	ColumnComment         string `orm:"column_comment"             json:"columnComment"`         // 列描述
	ColumnType            string `orm:"column_type"                json:"columnType"`            // 列类型
	GoType                string `orm:"go_type"                    json:"goType"`                // Go类型
	GoField               string `orm:"go_field"                   json:"goField"`               // Go字段名
	HtmlField             string `orm:"html_field"                 json:"htmlField"`             // html字段名
	IsPk                  bool   `orm:"is_pk"                      json:"isPk"`                  // 是否主键
	IsIncrement           bool   `orm:"is_increment"               json:"isIncrement"`           // 是否自增
	IsRequired            bool   `orm:"is_required"                json:"isRequired"`            // 是否必填
	IsInsert              bool   `orm:"is_insert"                  json:"isInsert"`              // 是否为插入字段
	IsEdit                bool   `orm:"is_edit"                    json:"isEdit"`                // 是否编辑字段
	IsList                bool   `orm:"is_list"                    json:"isList"`                // 是否列表字段
	IsDetail              bool   `orm:"is_detail"                  json:"isDetail"`              // 是否详情字段
	IsQuery               bool   `orm:"is_query"                   json:"isQuery"`               // 是否查询字段
	IsStatus              bool   `orm:"is_status"                  json:"isStatus"`              // 是否状态字段
	SortOrderEdit         int    `orm:"sort_order_edit"            json:"sortOrderEdit"`         // 插入编辑显示顺序
	SortOrderList         int    `orm:"sort_order_list"            json:"sortOrderList"`         // 列表显示顺序
	SortOrderDetail       int    `orm:"sort_order_detail"          json:"sortOrderDetail"`       // 详情显示顺序
	SortOrderQuery        int    `orm:"sort_order_query"           json:"sortOrderQuery"`        // 查询显示顺序
	QueryType             string `orm:"query_type"                 json:"queryType"`             // 查询方式（等于、不等于、大于、小于、范围）
	HtmlType              string `orm:"html_type"                  json:"htmlType"`              // 显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）
	DictType              string `orm:"dict_type"                  json:"dictType"`              // 字典类型
	LinkTableName         string `orm:"link_table_name"            json:"linkTableName"`         // 关联表名
	LinkTableClass        string `orm:"link_table_class"           json:"linkTableClass"`        // 关联表类名
	LinkTableModuleName   string `orm:"link_table_module_name"     json:"linkTableModuleName"`   // 关联表业务名
	LinkTableBusinessName string `orm:"link_table_business_name"   json:"linkTableBusinessName"` // 关联表业务名
	LinkTablePackage      string `orm:"link_table_package"         json:"linkTablePackage"`      // 关联表包名
	LinkLabelId           string `orm:"link_label_id"              json:"linkLabelId"`           // 关联表键名
	LinkLabelName         string `orm:"link_label_name"            json:"linkLabelName"`         // 关联表字段值
	ColSpan               int    `orm:"col_span"                   json:"colSpan"`               // 占多少列
	RowSpan               int    `orm:"row_span"                   json:"rowSpan"`               // 占多少行
	IsRowStart            bool   `orm:"is_row_start"               json:"isRowStart"`            // 是否另起一行
	MinWidth              int    `orm:"min_width"                  json:"minWidth"`              // 表格最小宽度
	IsFixed               bool   `orm:"is_fixed"                   json:"isFixed"`               // 是否表格列左固定
	IsOverflowTooltip     bool   `orm:"is_overflow_tooltip"        json:"isOverflowTooltip"`     // 是否过长自动隐藏
	IsCascade             bool   `orm:"is_cascade"                 json:"isCascade"`             // 是否级联查询
	ParentColumnName      string `orm:"parent_column_name"         json:"parentColumnName"`      // 上级字段名
	CascadeColumnName     string `orm:"cascade_column_name"        json:"cascadeColumnName"`     // 级联查询字段
}
