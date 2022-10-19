<template>
  <el-form ref="basicInfoForm" :model="info" :rules="rules" label-width="150px">
    <el-row>
      <el-col :span="12">
        <el-form-item label="表名称" prop="tableName">
          <el-input placeholder="请输入仓库名称" v-model="info.tableName" />
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="表描述" prop="tableComment">
          <el-input placeholder="请输入" v-model="info.tableComment" />
        </el-form-item>
      </el-col>

      <el-col :span="12">
        <el-form-item label="实体类名称" prop="className">
          <el-input placeholder="请输入" v-model="info.className" />
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="作者" prop="functionAuthor">
          <el-input placeholder="请输入" v-model="info.functionAuthor" />
        </el-form-item>
      </el-col>

      <el-col :span="12">
        <el-form-item label="排序字段" prop="sortColumn">
          <el-select v-model="info.sortColumn" placeholder="请选择">
            <el-option
              v-for="(column, index) in info.columns"
              :key="index"
              :label="column.columnComment"
              :value="column.columnName"
            >
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="排序方式" prop="sortType" >
          <el-select placeholder="请选择" v-model="info.sortType">
            <el-option label="顺序" value="asc" />
            <el-option label="倒序" value="desc" />
          </el-select>
        </el-form-item>
      </el-col>

      <el-col :span="24">
        <el-form-item label="备注" prop="remark">
          <el-input type="textarea" :rows="3" v-model="info.remark"></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="是否覆盖原有文件" prop="overwrite" >
          <el-checkbox v-model="info.overwrite"/>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="是否有显示详情功能" prop="showDetail" >
          <el-checkbox v-model="info.showDetail"/>
        </el-form-item>
      </el-col>
    </el-row>
  </el-form>
</template>
<script>
export default {
  name: "BasicInfoForm",
  props: {
    info: {
      type: Object,
      default: null
    }
  },
  data() {
    return {
      rules: {
        tableName: [
          { required: true, message: "请输入表名称", trigger: "blur" }
        ],
        tableComment: [
          { required: true, message: "请输入表描述", trigger: "blur" }
        ],
        className: [
          { required: true, message: "请输入实体类名称", trigger: "blur" }
        ],
        functionAuthor: [
          { required: true, message: "请输入作者", trigger: "blur" }
        ],
        sortColumn: [
          { required: true, message: "请选择排序字段", trigger: "blur" }
        ],
        sortType: [
          { required: true, message: "请选择排序类型", trigger: "blur" }
        ],
      }
    };
  }
};
</script>
