/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : gfast-v2-open

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 24/02/2022 11:57:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tools_gen_table
-- ----------------------------
DROP TABLE IF EXISTS `tools_gen_table`;
CREATE TABLE `tools_gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `overwrite` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否覆盖原有文件',
  `sort_column` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序字段名',
  `sort_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'asc' COMMENT '排序方式 (asc顺序 desc倒序)',
  `show_detail` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否有查看详情功能',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tools_gen_table
-- ----------------------------
INSERT INTO `tools_gen_table` VALUES (73, 'demo_gen', '代码生成测试表', 'DemoGen', 'crud', 'gfast/app/demo', 'demo', 'demo_gen', '代码生成测试', 'gfast', '', '2021-08-21 11:47:54', '2021-08-21 12:04:02', '', b'1', 'id', 'asc', b'1');
INSERT INTO `tools_gen_table` VALUES (74, 'demo_gen_class', '代码生成关联测试表', 'DemoGenClass', 'crud', 'gfast/app/demo', 'demo', 'demo_gen_class', '代码生成关联测试', 'gfast', '', '2021-08-21 11:47:54', '2021-08-21 11:50:27', '', b'1', 'id', 'asc', b'1');
INSERT INTO `tools_gen_table` VALUES (75, 'demo_gen_tree', '代码生成树形结构测试表', 'DemoGenTree', 'tree', 'gfast/app/demo', 'demo', 'demo_gen_tree', '代码生成树形结构测试', 'gfast', '{\"treeCode\":\"id\",\"treeName\":\"demoName\",\"treeParentCode\":\"parentId\"}', '2021-08-21 12:09:23', '2021-09-09 09:24:34', '', b'1', 'id', 'asc', b'1');

-- ----------------------------
-- Table structure for tools_gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `tools_gen_table_column`;
CREATE TABLE `tools_gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `go_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Go类型',
  `go_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Go字段名',
  `html_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'html字段名',
  `is_pk` bit(1) NULL DEFAULT b'0' COMMENT '是否主键（1是）',
  `is_increment` bit(1) NULL DEFAULT b'0' COMMENT '是否自增（1是）',
  `is_required` bit(1) NULL DEFAULT b'0' COMMENT '是否必填（1是）',
  `is_insert` bit(1) NULL DEFAULT b'0' COMMENT '是否为插入字段（1是）',
  `is_edit` bit(1) NULL DEFAULT b'0' COMMENT '是否编辑字段（1是）',
  `is_list` bit(1) NULL DEFAULT b'1' COMMENT '是否列表字段（1是）',
  `is_detail` bit(1) NULL DEFAULT b'1' COMMENT '是否详情字段',
  `is_query` bit(1) NULL DEFAULT b'0' COMMENT '是否查询字段（1是）',
  `sort_order_edit` int(11) NULL DEFAULT 999 COMMENT '插入编辑显示顺序',
  `sort_order_list` int(11) NULL DEFAULT 999 COMMENT '列表显示顺序',
  `sort_order_detail` int(11) NULL DEFAULT 999 COMMENT '详情显示顺序',
  `sort_order_query` int(11) NULL DEFAULT 999 COMMENT '查询显示顺序',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `link_table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表名',
  `link_table_class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表类名',
  `link_table_module_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表模块名',
  `link_table_business_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表业务名',
  `link_table_package` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表包名',
  `link_label_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表键名',
  `link_label_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表字段值',
  `col_span` int(11) NULL DEFAULT 12 COMMENT '详情页占列数',
  `row_span` int(11) NULL DEFAULT 1 COMMENT '详情页占行数',
  `is_row_start` bit(1) NULL DEFAULT b'0' COMMENT '详情页为行首',
  `min_width` int(11) NULL DEFAULT 100 COMMENT '表格最小宽度',
  `is_fixed` bit(1) NULL DEFAULT b'0' COMMENT '是否表格列左固定',
  `is_overflow_tooltip` bit(1) NULL DEFAULT b'0' COMMENT '是否过长自动隐藏',
  `is_cascade` bit(1) NULL DEFAULT b'0' COMMENT '是否级联查询',
  `parent_column_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上级字段名',
  `cascade_column_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '级联查询字段',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 779 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tools_gen_table_column
-- ----------------------------
INSERT INTO `tools_gen_table_column` VALUES (746, 73, 'id', 'ID', 'int(11) unsigned', 'uint', 'Id', 'id', b'1', b'1', b'0', b'0', b'0', b'1', b'1', b'0', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (747, 73, 'demo_name', '姓名', 'varchar(20)', 'string', 'DemoName', 'demoName', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'LIKE', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (748, 73, 'demo_age', '年龄', 'int(10) unsigned', 'uint', 'DemoAge', 'demoAge', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'0', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (749, 73, 'classes', '班级', 'varchar(30)', 'string', 'Classes', 'classes', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'select', '', 'demo_gen_class', 'DemoGenClass', 'demo', 'demo_gen_class', 'gfast/app/demo', 'id', 'class_name', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (750, 73, 'demo_born', '出生年月', 'datetime', 'Time', 'DemoBorn', 'demoBorn', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 6, 6, 6, 6, 'BETWEEN', 'date', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (751, 73, 'demo_gender', '性别', 'tinyint(3) unsigned', 'uint', 'DemoGender', 'demoGender', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'0', 7, 7, 7, 7, 'EQ', 'select', 'sys_user_sex', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (752, 73, 'created_at', '创建日期', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 8, 8, 8, 8, 'BETWEEN', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (753, 73, 'updated_at', '修改日期', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 8, 8, 8, 8, 'EQ', 'datetime', '', '', '', NULL, NULL, '', '', '', 12, 1, b'0', 100, NULL, b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (754, 73, 'deleted_at', '删除日期', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 9, 9, 9, 9, 'EQ', 'datetime', '', '', '', NULL, NULL, '', '', '', 12, 1, b'0', 100, NULL, b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (755, 73, 'created_by', '创建人', 'bigint(20) unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'0', 9, 9, 9, 9, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (756, 73, 'updated_by', '修改人', 'bigint(20) unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'1', b'0', 10, 10, 10, 10, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (757, 73, 'demo_status', '状态', 'tinyint(4)', 'int', 'DemoStatus', 'demoStatus', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 11, 11, 11, 11, 'EQ', 'radio', 'sys_normal_disable', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (758, 73, 'demo_cate', '分类', 'varchar(30)', 'string', 'DemoCate', 'demoCate', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'0', 12, 12, 12, 12, 'EQ', 'checkbox', 'sys_oper_log_status', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (759, 73, 'demo_thumb', '头像', 'text', 'string', 'DemoThumb', 'demoThumb', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 3, 3, 3, 3, 'EQ', 'imagefile', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (760, 73, 'demo_photo', '相册', 'text', 'string', 'DemoPhoto', 'demoPhoto', b'0', b'0', b'0', b'1', b'1', b'0', b'1', b'0', 13, 13, 13, 13, 'EQ', 'images', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (761, 73, 'demo_info', '个人描述', 'text', 'string', 'DemoInfo', 'demoInfo', b'0', b'0', b'0', b'1', b'1', b'0', b'1', b'0', 14, 14, 14, 14, 'EQ', 'richtext', '', '', '', '', '', '', '', '', 24, 1, b'1', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (762, 73, 'demo_file', '相关附件', 'text', 'string', 'DemoFile', 'demoFile', b'0', b'0', b'0', b'1', b'1', b'0', b'1', b'0', 15, 15, 15, 15, 'EQ', 'files', '', '', '', '', '', '', '', '', 12, 1, b'1', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` VALUES (763, 74, 'id', '分类id', 'int(10) unsigned', 'uint', 'Id', 'id', b'1', b'1', b'0', b'0', b'0', b'1', b'0', b'0', 1, 1, 1, 1, 'EQ', 'input', '', '', '', NULL, NULL, '', '', '', 12, 1, b'0', 100, NULL, b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (764, 74, 'class_name', '分类名', 'varchar(30)', 'string', 'ClassName', 'className', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 2, 2, 2, 2, 'LIKE', 'input', '', '', '', NULL, NULL, '', '', '', 12, 1, b'0', 100, NULL, b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (765, 75, 'id', '', 'int(11) unsigned', 'uint', 'Id', 'id', b'1', b'1', b'0', b'0', b'0', b'0', b'0', b'0', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (766, 75, 'parent_id', '父级ID', 'int(10) unsigned', 'uint', 'ParentId', 'parentId', b'0', b'0', b'1', b'1', b'1', b'0', b'0', b'0', 2, 2, 2, 2, 'EQ', 'select', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (767, 75, 'demo_name', '姓名', 'varchar(20)', 'string', 'DemoName', 'demoName', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 3, 3, 3, 3, 'LIKE', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (768, 75, 'demo_age', '年龄', 'int(10) unsigned', 'uint', 'DemoAge', 'demoAge', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (769, 75, 'classes', '班级', 'varchar(30)', 'string', 'Classes', 'classes', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 5, 5, 5, 5, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (770, 75, 'demo_born', '出生年月', 'datetime', 'Time', 'DemoBorn', 'demoBorn', b'0', b'0', b'0', b'1', b'1', b'1', b'0', b'1', 6, 6, 6, 6, 'EQ', 'date', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (771, 75, 'demo_gender', '性别', 'tinyint(3) unsigned', 'uint', 'DemoGender', 'demoGender', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (772, 75, 'created_at', '创建日期', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 8, 8, 8, 8, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (773, 75, 'updated_at', '修改日期', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 9, 9, 9, 9, 'EQ', 'datetime', '', '', '', NULL, NULL, '', '', '', 12, 1, b'0', 100, NULL, b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (774, 75, 'deleted_at', '删除日期', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'datetime', '', '', '', NULL, NULL, '', '', '', 12, 1, b'0', 100, NULL, b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (775, 75, 'created_by', '创建人', 'bigint(20) unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 11, 11, 11, 11, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (776, 75, 'updated_by', '修改人', 'bigint(20) unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 12, 12, 12, 12, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (777, 75, 'demo_status', '状态', 'tinyint(4)', 'int', 'DemoStatus', 'demoStatus', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 13, 13, 13, 13, 'EQ', 'radio', 'sys_job_status', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);
INSERT INTO `tools_gen_table_column` VALUES (778, 75, 'demo_cate', '分类', 'varchar(30)', 'string', 'DemoCate', 'demoCate', b'0', b'0', b'1', b'1', b'1', b'1', b'0', b'1', 14, 14, 14, 14, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
