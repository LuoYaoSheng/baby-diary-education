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
          <el-form-item label="来源" prop="type">
            <el-select v-model="queryParams.type" placeholder="请选择来源" clearable size="small">
                <el-option
                    v-for="dict in typeOptions"
                    :key="dict.key"
                    :label="dict.value"
                    :value="dict.key"
                />
            </el-select>
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
          <el-form-item label="openid" prop="openid">
            <el-input
                v-model="queryParams.openid"
                placeholder="请输入openid"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="用户id" prop="userId">
            <el-input
                v-model="queryParams.userId"
                placeholder="请输入用户id"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="昵称" prop="nickname">
            <el-input
                v-model="queryParams.nickname"
                placeholder="请输入昵称"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="unionid" prop="unionid">
            <el-input
                v-model="queryParams.unionid"
                placeholder="请输入unionid"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
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
          v-hasPermi="['system/sysUserBind/add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system/sysUserBind/edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system/sysUserBind/delete']"
        >删除</el-button>
      </el-col>
    </el-row>
    <el-table v-loading="loading" :data="sysUserBindList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />      
      <el-table-column label="ID" align="center" prop="id"
        min-width="100px"        
         />      
      <el-table-column label="来源" align="center" prop="type" :formatter="typeFormat"
        min-width="100px"        
         />      
      <el-table-column label="openid" align="center" prop="openid"
        min-width="100px"        
         />      
      <el-table-column label="用户id" align="center" prop="userId"
        min-width="100px"        
         />      
      <el-table-column label="昵称" align="center" prop="nickname"
        min-width="100px"        
         />      
      <el-table-column align="center" label="头像"
        min-width="100px"        
        >
        <template slot-scope="scope">
          <el-image
            style="width: 100px; height: 50px"
            v-if="!isEmpty(scope.row.avatarurl)"
            :src="scope.row.avatarurl|urlCorrection"
            fit="contain"></el-image>
        </template>
      </el-table-column>      
      <el-table-column label="unionid" align="center" prop="unionid"
        min-width="100px"        
         />      
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
            v-hasPermi="['system/sysUserBind/edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system/sysUserBind/delete']"
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
    <!-- 添加或修改三方绑定对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">          
        <el-form-item label="来源" prop="type">
          <el-select v-model="form.type" placeholder="请选择来源" >
            <el-option
              v-for="dict in typeOptions"
              :key="dict.key"
              :label="dict.value"              
                  :value="dict.key"              
            ></el-option>
          </el-select>
        </el-form-item>        
        <el-form-item label="openid" prop="openid">
          <el-input v-model="form.openid" placeholder="请输入openid" />
        </el-form-item>        
        <el-form-item label="用户id" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入用户id" />
        </el-form-item>        
        <el-form-item label="昵称" prop="nickname">
          <el-input v-model="form.nickname" placeholder="请输入昵称" />
        </el-form-item>        
        <el-form-item label="头像" prop="avatarurl">
          <el-upload
            v-loading="upLoadingAvatarurl"
            :action="apiUrl+'/system/upload/upImg'"
            :before-upload="beforeAvatarUploadAvatarurl"
            :data="setUpData()"
            :on-success="handleAvatarSuccessAvatarurl"
            :show-file-list="false"
            class="avatar-uploader"
            name="file"
          >
            <img v-if="!isEmpty(imageUrlAvatarurl)" :src="imageUrlAvatarurl" class="avatar">
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>
        </el-form-item>        
        <el-form-item label="unionid" prop="unionid">
          <el-input v-model="form.unionid" placeholder="请输入unionid" />
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
    listSysUserBind,
    getSysUserBind,
    delSysUserBind,
    addSysUserBind,
    updateSysUserBind,    
    getUserList,    
} from "@/api/system/sysUserBind";
import { getToken } from '@/utils/auth'
export default {
  components:{    
  },
  name: "SysUserBind",
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
      // 三方绑定表格数据
      sysUserBindList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,      
      // 当前操作 create/edit
      currentOp: "",      
      // typeOptions字典数据
      typeOptions: [],      
       //图片上传地址
       imageUrlAvatarurl: '',
       //上传加载
       upLoadingAvatarurl: false,      
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,        
        id: undefined,        
        type: undefined,        
        openid: undefined,        
        userId: undefined,        
        nickname: undefined,        
        unionid: undefined,        
        createdBy: undefined,        
        createdAt: undefined,        
      },
      // 表单参数
      form: {        
        id: undefined,        
        type: undefined,        
        openid: undefined,        
        userId: undefined,        
        nickname: undefined,        
        avatarurl: undefined,        
        unionid: undefined,        
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
        openid : [
          { required: true, message: "openid不能为空", trigger: "blur" }
        ],
        nickname : [
          { required: true, message: "昵称不能为空", trigger: "blur" }
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
    this.getDicts("open_type").then(response => {
      this.typeOptions = response.data.values||[];
    });
    this.getList();
  },
  methods: {
    toggleSearch() {
      this.showAll = !this.showAll;
    },    
    //单图上传头像
    handleAvatarSuccessAvatarurl(res, file) {
      if (res.code === 0) {
        this.imageUrlAvatarurl = URL.createObjectURL(file.raw)
        this.form.avatarurl = res.data.fileInfo.fileUrl
      } else {
        this.msgError(res.msg)
      }
      this.upLoadingAvatarurl = false
    },
    beforeAvatarUploadAvatarurl(file) {
      this.upLoadingAvatarurl = true
      return true
    },    
    setUpData() {
      return { token: getToken() }
    },    
    getAllLinkTableItems() {      
    },
    /** 查询三方绑定列表 */
    getList() {
      this.loading = true;
      listSysUserBind(this.queryParams).then(response => {
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
            this.sysUserBindList = list;
        })        
        this.total = response.data.total;
        this.loading = false;
      });
    },    
    // 来源字典翻译
    typeFormat(row, column) {
      return this.selectDictLabel(this.typeOptions, row.type);
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
        type: undefined,        
        openid: undefined,        
        userId: undefined,        
        nickname: undefined,        
        avatarurl: undefined,        
        unionid: undefined,        
        createdBy: undefined,        
        updatedBy: undefined,        
        createdAt: undefined,        
        updatedAt: undefined,        
        deletedAt: undefined,        
      };      
      this.imageUrlAvatarurl = ''      
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
      this.title = "添加三方绑定";
    },    
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      this.getAllLinkTableItems();
      const id = row.id || this.ids
      getSysUserBind(id).then(response => {
        let data = response.data;        
        data.type = ''+data.type        
        //单图地址赋值
        this.imageUrlAvatarurl = data.avatarurl ? this.getUpFileUrl(process.env.VUE_APP_BASE_API,data.avatarurl) : ''        
        this.form = data;
        this.open = true;
        this.currentOp = "edit";
        this.title = "修改三方绑定";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.currentOp === "edit") {
            updateSysUserBind(this.form).then(response => {
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
            addSysUserBind(this.form).then(response => {
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
      this.$confirm('是否确认删除三方绑定编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delSysUserBind(ids);
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