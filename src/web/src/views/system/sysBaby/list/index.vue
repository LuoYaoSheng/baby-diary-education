<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="100px">
      <el-row>        
        <el-col :span="8" class="colBlock">
          <el-form-item label="ID" prop="id">
            <el-input
                v-model="queryParams.id"
                placeholder="请输入ID"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" class="colBlock">
          <el-form-item label="姓名" prop="nickname">
            <el-input
                v-model="queryParams.nickname"
                placeholder="请输入姓名"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="!showAll ? 'colBlock' : 'colNone'">
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
            <el-button type="text" size="mini" @click="toggleSearch">
              {{ word }}
              <i :class="showAll ? 'el-icon-arrow-up ': 'el-icon-arrow-down'"></i>
            </el-button>
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="性别" prop="sex">
            <el-select v-model="queryParams.sex" placeholder="请选择性别" clearable size="small">
                <el-option
                    v-for="dict in sexOptions"
                    :key="dict.key"
                    :label="dict.value"
                    :value="dict.key"
                />
            </el-select>
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="生日" prop="birthday">
            <el-date-picker
                clearable size="small" style="width: 200px"
                v-model="queryParams.birthday"            
                type="datetime"
                placeholder="选择生日"            
                value-format="yyyy-MM-dd HH:mm:ss">
            </el-date-picker>
          </el-form-item>
        </el-col>    
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
            <el-button type="text" size="mini" @click="toggleSearch">
              {{ word }}
              <i :class="showAll ? 'el-icon-arrow-up ': 'el-icon-arrow-down'"></i>
            </el-button>
          </el-form-item>
        </el-col>    
      </el-row>
    </el-form>
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system/sysBaby/add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system/sysBaby/edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system/sysBaby/delete']"
        >删除</el-button>
      </el-col>
    </el-row>
    <el-table v-loading="loading" :data="sysBabyList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />      
      <el-table-column label="ID" align="center" prop="id"
        min-width="100px"        
         />      
      <el-table-column label="姓名" align="center" prop="nickname"
        min-width="100px"        
         />      
      <el-table-column label="性别" align="center" prop="sex" :formatter="sexFormat"
        min-width="100px"        
         />      
      <el-table-column align="center" label="头像"
        min-width="100px"        
        >
        <template slot-scope="scope">
          <el-image
            style="width: 100px; height: 50px"
            v-if="!isEmpty(scope.row.avatar)"
            :src="scope.row.avatar|urlCorrection"
            fit="contain"></el-image>
        </template>
      </el-table-column>      
      <el-table-column label="生日" align="center" prop="birthday"
        min-width="100px"        
        >
        <template slot-scope="scope">
            <span>{{ parseTime(scope.row.birthday, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>      
      <el-table-column label="创建人" align="center" prop="createdUser"
        min-width="100px"        
         />      
      <el-table-column label="创建时间" align="center" prop="createdAt"
        min-width="100px"        
        >
        <template slot-scope="scope">
            <span>{{ parseTime(scope.row.createdAt, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>    
      <el-table-column label="操作" align="center" class-name="small-padding" min-width="120px" fixed="right">
        <template slot-scope="scope">        
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system/sysBaby/edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system/sysBaby/delete']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />
    <!-- 添加或修改宝宝基础信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">        
        <el-form-item label="姓名" prop="nickname">
          <el-input v-model="form.nickname" placeholder="请输入姓名" />
        </el-form-item>          
        <el-form-item label="性别" prop="sex">
          <el-select v-model="form.sex" placeholder="请选择性别" >
            <el-option
              v-for="dict in sexOptions"
              :key="dict.key"
              :label="dict.value"              
                  :value="dict.key"              
            ></el-option>
          </el-select>
        </el-form-item>        
        <el-form-item label="头像" prop="avatar">
          <el-upload
            v-loading="upLoadingAvatar"
            :action="apiUrl+'/system/upload/upImg'"
            :before-upload="beforeAvatarUploadAvatar"
            :data="setUpData()"
            :on-success="handleAvatarSuccessAvatar"
            :show-file-list="false"
            class="avatar-uploader"
            name="file"
          >
            <img v-if="!isEmpty(imageUrlAvatar)" :src="imageUrlAvatar" class="avatar">
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>
        </el-form-item>        
        <el-form-item label="生日" prop="birthday">
          <el-date-picker clearable size="small" style="width: 200px"
            v-model="form.birthday"
            type="datetime"
            value-format="yyyy-MM-dd HH:mm:ss"
            placeholder="选择生日">
          </el-date-picker>
        </el-form-item>       
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>    
  </div>
</template>
<script>
import {
    listSysBaby,
    getSysBaby,
    delSysBaby,
    addSysBaby,
    updateSysBaby,    
    getUserList,    
} from "@/api/system/sysBaby";
import { getToken } from '@/utils/auth'
export default {
  components:{    
  },
  name: "SysBaby",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 总条数
      total: 0,
      // 是否显示所有搜索选项
      showAll: false,
      // 宝宝基础信息表格数据
      sysBabyList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,      
      // 当前操作 create/edit
      currentOp: "",      
      // sexOptions字典数据
      sexOptions: [],      
       //图片上传地址
       imageUrlAvatar: '',
       //上传加载
       upLoadingAvatar: false,      
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,        
        id: undefined,        
        nickname: undefined,        
        sex: undefined,        
        birthday: undefined,        
        createdBy: undefined,        
        createdAt: undefined,        
      },
      // 表单参数
      form: {        
        id: undefined,        
        nickname: undefined,        
        sex: undefined,        
        avatar: undefined,        
        birthday: undefined,        
        createdBy: undefined,        
        updatedBy: undefined,        
        createdAt: undefined,        
        updatedAt: undefined,        
        deletedAt: undefined,        
      },
      // 表单校验
      rules: { 
        id : [
          { required: true, message: "ID不能为空", trigger: "blur" }
        ],
        nickname : [
          { required: true, message: "姓名不能为空", trigger: "blur" }
        ],
      }
    };
  },
  computed: {
    word: function() {
      if(this.showAll === false) {
        //对文字进行处理
        return "展开搜索";
      } else {
        return "收起搜索";
      }
    }
  },
  created() {    
    this.getDicts("sys_user_sex").then(response => {
      this.sexOptions = response.data.values||[];
    });
    this.getList();
  },
  methods: {
    toggleSearch() {
      this.showAll = !this.showAll;
    },    
    //单图上传头像
    handleAvatarSuccessAvatar(res, file) {
      if (res.code === 0) {
        this.imageUrlAvatar = URL.createObjectURL(file.raw)
        this.form.avatar = res.data.fileInfo.fileUrl
      } else {
        this.msgError(res.msg)
      }
      this.upLoadingAvatar = false
    },
    beforeAvatarUploadAvatar(file) {
      this.upLoadingAvatar = true
      return true
    },    
    setUpData() {
      return { token: getToken() }
    },    
    getAllLinkTableItems() {      
    },
    /** 查询宝宝基础信息列表 */
    getList() {
      this.loading = true;
      listSysBaby(this.queryParams).then(response => {
        let list = response.data.list || [];        
        let listUid = [];        
        listUid = list.map(item=>{
            return item.createdBy
        });        
        getUserList(listUid).then(response =>{
            let users = response.data||[]
            list.map(item=>{
                users.forEach(user=>{                    
                    if(item.createdBy==user.id){
                        item.createdUser = user.userNickname
                    }                    
                })
            })
            this.sysBabyList = list;
        })        
        this.total = response.data.total;
        this.loading = false;
      });
    },    
    // 性别字典翻译
    sexFormat(row, column) {
      return this.selectDictLabel(this.sexOptions, row.sex);
    },    
    // 取消按钮
    cancel() {
      this.open = false;
      this.currentOp = "";
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {        
        id: undefined,        
        nickname: undefined,        
        sex: undefined,        
        avatar: undefined,        
        birthday: undefined,        
        createdBy: undefined,        
        updatedBy: undefined,        
        createdAt: undefined,        
        updatedAt: undefined,        
        deletedAt: undefined,        
      };      
      this.imageUrlAvatar = ''      
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!=1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.currentOp = "create";
      this.title = "添加宝宝基础信息";
    },    
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      this.getAllLinkTableItems();
      const id = row.id || this.ids
      getSysBaby(id).then(response => {
        let data = response.data;        
        data.sex = ''+data.sex        
        //单图地址赋值
        this.imageUrlAvatar = data.avatar ? this.getUpFileUrl(process.env.VUE_APP_BASE_API,data.avatar) : ''        
        this.form = data;
        this.open = true;
        this.currentOp = "edit";
        this.title = "修改宝宝基础信息";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.currentOp === "edit") {
            updateSysBaby(this.form).then(response => {
              if (response.code === 0) {
                this.msgSuccess("修改成功");
                this.open = false;
                this.currentOp = "";
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          } else if (this.currentOp === "create"){
            addSysBaby(this.form).then(response => {
              if (response.code === 0) {
                this.msgSuccess("新增成功");
                this.open = false;
                this.currentOp = "";
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$confirm('是否确认删除宝宝基础信息编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delSysBaby(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(function() {});
    }
  }
};
</script>
<style>
.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
.avatar-uploader .el-upload:hover {
  border-color: #409EFF;
}
.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  line-height: 178px;
  text-align: center;
}
.avatar {
  width: 178px;
  height: 178px;
  display: block;
}
.colBlock {
  display: block;
}
.colNone {
  display: none;
}
</style>