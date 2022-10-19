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
          <el-form-item label="宝宝" prop="babyId">
            <el-input
                v-model="queryParams.babyId"
                placeholder="请输入宝宝"
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
          <el-form-item label="开始时间" prop="startAt">
            <el-date-picker
                clearable size="small" style="width: 200px"
                v-model="queryParams.startAt"            
                type="datetime"
                placeholder="选择开始时间"            
                value-format="yyyy-MM-dd HH:mm:ss">
            </el-date-picker>
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="左侧量" prop="appetiteLeft">
            <el-input
                v-model="queryParams.appetiteLeft"
                placeholder="请输入左侧量"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="右侧量" prop="appetiteRight">
            <el-input
                v-model="queryParams.appetiteRight"
                placeholder="请输入右侧量"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="左侧时长" prop="durationLeft">
            <el-input
                v-model="queryParams.durationLeft"
                placeholder="请输入左侧时长"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="右侧时长" prop="durationRight">
            <el-input
                v-model="queryParams.durationRight"
                placeholder="请输入右侧时长"
                clearable
                size="small"                
                @keyup.enter.native="handleQuery"
            />            
          </el-form-item>
        </el-col>        
        <el-col :span="8" :class="showAll ? 'colBlock' : 'colNone'">
          <el-form-item label="吸奶方式" prop="durationType">
            <el-select v-model="queryParams.durationType" placeholder="请选择吸奶方式" clearable size="small">
                <el-option
                    v-for="dict in durationTypeOptions"
                    :key="dict.key"
                    :label="dict.value"
                    :value="dict.key"
                />
            </el-select>
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
          v-hasPermi="['system/sysBabyFoodBreastPump/add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system/sysBabyFoodBreastPump/edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system/sysBabyFoodBreastPump/delete']"
        >删除</el-button>
      </el-col>
    </el-row>
    <el-table v-loading="loading" :data="sysBabyFoodBreastPumpList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />      
      <el-table-column label="ID" align="center" prop="id"
        min-width="100px"        
         />      
      <el-table-column label="宝宝" align="center" prop="linkedSysBabyFoodBreastPumpSysBaby.nickname"
        min-width="100px"        
         />      
      <el-table-column label="开始时间" align="center" prop="startAt"
        min-width="100px"        
        >
        <template slot-scope="scope">
            <span>{{ parseTime(scope.row.startAt, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>      
      <el-table-column label="左侧量" align="center" prop="appetiteLeft"
        min-width="100px"        
         />      
      <el-table-column label="右侧量" align="center" prop="appetiteRight"
        min-width="100px"        
         />      
      <el-table-column label="左侧时长" align="center" prop="durationLeft"
        min-width="100px"        
         />      
      <el-table-column label="右侧时长" align="center" prop="durationRight"
        min-width="100px"        
         />      
      <el-table-column label="吸奶方式" align="center" prop="durationType" :formatter="durationTypeFormat"
        min-width="100px"        
         />      
      <el-table-column label="备注" align="center" prop="remark"
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
            v-hasPermi="['system/sysBabyFoodBreastPump/edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system/sysBabyFoodBreastPump/delete']"
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
    <!-- 添加或修改宝宝吸奶器对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">        
        <el-form-item label="宝宝" prop="babyId">
          <el-input v-model="form.babyId" placeholder="请输入宝宝" />
        </el-form-item>        
        <el-form-item label="开始时间" prop="startAt">
          <el-date-picker clearable size="small" style="width: 200px"
            v-model="form.startAt"
            type="datetime"
            value-format="yyyy-MM-dd HH:mm:ss"
            placeholder="选择开始时间">
          </el-date-picker>
        </el-form-item>        
        <el-form-item label="左侧量" prop="appetiteLeft">
          <el-input v-model="form.appetiteLeft" placeholder="请输入左侧量" />
        </el-form-item>        
        <el-form-item label="右侧量" prop="appetiteRight">
          <el-input v-model="form.appetiteRight" placeholder="请输入右侧量" />
        </el-form-item>        
        <el-form-item label="左侧时长" prop="durationLeft">
          <el-input v-model="form.durationLeft" placeholder="请输入左侧时长" />
        </el-form-item>        
        <el-form-item label="右侧时长" prop="durationRight">
          <el-input v-model="form.durationRight" placeholder="请输入右侧时长" />
        </el-form-item>          
        <el-form-item label="吸奶方式" prop="durationType">
          <el-select v-model="form.durationType" placeholder="请选择吸奶方式" >
            <el-option
              v-for="dict in durationTypeOptions"
              :key="dict.key"
              :label="dict.value"              
                  :value="dict.key"              
            ></el-option>
          </el-select>
        </el-form-item>        
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入备注" />
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
    listSysBabyFoodBreastPump,
    getSysBabyFoodBreastPump,
    delSysBabyFoodBreastPump,
    addSysBabyFoodBreastPump,
    updateSysBabyFoodBreastPump,    
    listSysBaby,    
    getUserList,    
} from "@/api/system/sysBabyFoodBreastPump";
export default {
  components:{    
  },
  name: "SysBabyFoodBreastPump",
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
      // 宝宝吸奶器表格数据
      sysBabyFoodBreastPumpList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,      
      // 当前操作 create/edit
      currentOp: "",        
      // babyIdOptions关联表数据
      babyIdOptions: [],      
      // durationTypeOptions字典数据
      durationTypeOptions: [],      
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,        
        id: undefined,        
        babyId: undefined,        
        startAt: undefined,        
        appetiteLeft: undefined,        
        appetiteRight: undefined,        
        durationLeft: undefined,        
        durationRight: undefined,        
        durationType: undefined,        
        createdBy: undefined,        
        createdAt: undefined,        
      },
      // 表单参数
      form: {        
        id: undefined,        
        babyId: undefined,        
        startAt: undefined,        
        appetiteLeft: undefined,        
        appetiteRight: undefined,        
        durationLeft: undefined,        
        durationRight: undefined,        
        durationType: undefined,        
        remark: undefined,        
        createdBy: undefined,        
        updatedBy: undefined,        
        createdAt: undefined,        
        updatedAt: undefined,        
        deletedAt: undefined,        
        linkedSysBabyFoodBreastPumpSysBaby: {},        
      },
      // 表单校验
      rules: { 
        id : [
          { required: true, message: "ID不能为空", trigger: "blur" }
        ],
        babyId : [
          { required: true, message: "宝宝不能为空", trigger: "blur" }
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
    this.getDicts("suckle_type").then(response => {
      this.durationTypeOptions = response.data.values||[];
    });
    this.getList();
  },
  methods: {
    toggleSearch() {
      this.showAll = !this.showAll;
    },      
    //关联sys_baby表选项
    getSysBabyItems() {
      if (this.babyIdOptions && this.babyIdOptions.length > 0) {
        return
      }
      this.getItems(listSysBaby, {pageSize:10000}).then(res => {
        this.babyIdOptions = this.setItems(res, 'id', 'nickname')
      })
    },    
    getAllLinkTableItems() {      
      this.getSysBabyItems()      
    },
    /** 查询宝宝吸奶器列表 */
    getList() {
      this.loading = true;
      listSysBabyFoodBreastPump(this.queryParams).then(response => {
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
            this.sysBabyFoodBreastPumpList = list;
        })        
        this.total = response.data.total;
        this.loading = false;
      });
    },    
    // 吸奶方式字典翻译
    durationTypeFormat(row, column) {
      return this.selectDictLabel(this.durationTypeOptions, row.durationType);
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
        babyId: undefined,        
        startAt: undefined,        
        appetiteLeft: undefined,        
        appetiteRight: undefined,        
        durationLeft: undefined,        
        durationRight: undefined,        
        durationType: undefined,        
        remark: undefined,        
        createdBy: undefined,        
        updatedBy: undefined,        
        createdAt: undefined,        
        updatedAt: undefined,        
        deletedAt: undefined,        
        linkedSysBabyFoodBreastPumpSysBaby: {},        
      };      
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
      this.title = "添加宝宝吸奶器";
    },    
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      this.getAllLinkTableItems();
      const id = row.id || this.ids
      getSysBabyFoodBreastPump(id).then(response => {
        let data = response.data;        
        data.durationType = ''+data.durationType        
        this.form = data;
        this.open = true;
        this.currentOp = "edit";
        this.title = "修改宝宝吸奶器";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.currentOp === "edit") {
            updateSysBabyFoodBreastPump(this.form).then(response => {
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
            addSysBabyFoodBreastPump(this.form).then(response => {
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
      this.$confirm('是否确认删除宝宝吸奶器编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delSysBabyFoodBreastPump(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(function() {});
    }
  }
};
</script>
<style>
.colBlock {
  display: block;
}
.colNone {
  display: none;
}
</style>