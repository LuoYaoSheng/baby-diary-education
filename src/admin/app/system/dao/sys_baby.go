// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-30 15:43:07
// 生成路径: gfast/app/system/dao/sys_baby.go
// 生成人：gfast
// ==========================================================================


package dao
import (
    comModel "gfast/app/common/model"
    "gfast/app/system/dao/internal"    
    "github.com/gogf/gf/os/gtime"    
)
// sysBabyDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyDao struct {
	*internal.SysBabyDao
}
var (
    // SysBaby is globally public accessible object for table tools_gen_table operations.
    SysBaby = sysBabyDao{
        internal.NewSysBabyDao(),
    }
)


// Fill with you ideas below.


// SysBabySearchReq 分页请求参数
type SysBabySearchReq struct {    
    Id  string `p:"id" v:"id@integer#ID需为整数"` //ID    
    Nickname  string `p:"nickname"` //姓名    
    Sex  string `p:"sex" v:"sex@integer#性别需为整数"` //性别    
    Birthday  string `p:"birthday" v:"birthday@datetime#生日需为YYYY-MM-DD hh:mm:ss格式"` //生日    
    CreatedBy  string `p:"createdBy" v:"createdBy@integer#创建人需为整数"` //创建人    
    CreatedAt  string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间    
    comModel.PageReq
}
// SysBabyAddReq 添加操作请求参数
type SysBabyAddReq struct {    
    Nickname  string   `p:"nickname" v:"required#姓名不能为空"`    
    Sex  int   `p:"sex" `    
    Avatar  string   `p:"avatar" `    
    Birthday  *gtime.Time   `p:"birthday" `    
    CreatedBy       uint64    
}
// SysBabyEditReq 修改操作请求参数
type SysBabyEditReq struct {
    Id    uint  `p:"id" v:"required#主键ID不能为空"`    
    Nickname  string `p:"nickname" v:"required#姓名不能为空"`    
    Sex  int `p:"sex" `    
    Avatar  string `p:"avatar" `    
    Birthday  *gtime.Time `p:"birthday" `    
    UpdatedBy       uint64    
}
// SysBabyListRes 列表返回结果
type SysBabyListRes struct {    
    Id  uint   `json:"id"`    
    Nickname  string   `json:"nickname"`    
    Sex  int   `json:"sex"`    
    Avatar  string   `json:"avatar"`    
    Birthday  *gtime.Time   `json:"birthday"`    
    CreatedBy  uint64   `json:"createdBy"`    
    CreatedAt  *gtime.Time   `json:"createdAt"`  
}
// SysBabyInfoRes 数据返回结果
type SysBabyInfoRes struct {    
    Id  uint   `json:"id"`    
    Nickname  string   `json:"nickname"`    
    Sex  int   `json:"sex"`    
    Avatar  string   `json:"avatar"`    
    Birthday  *gtime.Time   `json:"birthday"`    
    CreatedBy  uint64   `json:"createdBy"`    
    UpdatedBy  uint64   `json:"updatedBy"`    
    CreatedAt  *gtime.Time   `json:"createdAt"`    
    UpdatedAt  *gtime.Time   `json:"updatedAt"`    
    DeletedAt  *gtime.Time   `json:"deletedAt"`    
}
