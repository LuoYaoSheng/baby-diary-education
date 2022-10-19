// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-30 21:33:19
// 生成路径: gfast/app/system/dao/sys_baby_body.go
// 生成人：gfast
// ==========================================================================


package dao
import (
    comModel "gfast/app/common/model"
    "gfast/app/system/dao/internal"    
    "gfast/app/system/model"    
    "github.com/gogf/gf/os/gtime"    
)
// sysBabyBodyDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyBodyDao struct {
	*internal.SysBabyBodyDao
}
var (
    // SysBabyBody is globally public accessible object for table tools_gen_table operations.
    SysBabyBody = sysBabyBodyDao{
        internal.NewSysBabyBodyDao(),
    }
)


// Fill with you ideas below.


// SysBabyBodySearchReq 分页请求参数
type SysBabyBodySearchReq struct {    
    Id  string `p:"id" v:"id@integer#ID需为整数"` //ID    
    BabyId  string `p:"babyId" v:"babyId@integer#宝宝需为整数"` //宝宝    
    Height  string `p:"height" v:"height@integer#身高需为整数"` //身高    
    Weight  string `p:"weight" v:"weight@integer#体重需为整数"` //体重    
    Hc  string `p:"hc" v:"hc@integer#头围需为整数"` //头围    
    CreatedBy  string `p:"createdBy" v:"createdBy@integer#创建人需为整数"` //创建人    
    CreatedAt  string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间    
    comModel.PageReq
}
// SysBabyBodyAddReq 添加操作请求参数
type SysBabyBodyAddReq struct {    
    BabyId  int64   `p:"babyId" v:"required#宝宝不能为空"`    
    Height  int   `p:"height" `    
    Weight  int   `p:"weight" `    
    Hc  int   `p:"hc" `    
    Remark  string   `p:"remark" `    
    CreatedBy       uint64    
}
// SysBabyBodyEditReq 修改操作请求参数
type SysBabyBodyEditReq struct {
    Id    uint  `p:"id" v:"required#主键ID不能为空"`    
    BabyId  int64 `p:"babyId" v:"required#宝宝不能为空"`    
    Height  int `p:"height" `    
    Weight  int `p:"weight" `    
    Hc  int `p:"hc" `    
    Remark  string `p:"remark" `    
    UpdatedBy       uint64    
}
// SysBabyBodyListRes 列表返回结果
type SysBabyBodyListRes struct {    
    Id  uint   `json:"id"`    
    BabyId  int64   `json:"babyId"`    
    Height  int   `json:"height"`    
    Weight  int   `json:"weight"`    
    Hc  int   `json:"hc"`    
    Remark  string   `json:"remark"`    
    CreatedBy  uint64   `json:"createdBy"`    
    CreatedAt  *gtime.Time   `json:"createdAt"`  
    LinkedSysBabyBodySysBaby   *model.LinkedSysBabyBodySysBaby  `json:"linkedSysBabyBodySysBaby"`  
}
// SysBabyBodyInfoRes 数据返回结果
type SysBabyBodyInfoRes struct {    
    Id  uint   `json:"id"`    
    BabyId  int64   `json:"babyId"`    
    Height  int   `json:"height"`    
    Weight  int   `json:"weight"`    
    Hc  int   `json:"hc"`    
    Remark  string   `json:"remark"`    
    CreatedBy  uint64   `json:"createdBy"`    
    UpdatedBy  uint64   `json:"updatedBy"`    
    CreatedAt  *gtime.Time   `json:"createdAt"`    
    UpdatedAt  *gtime.Time   `json:"updatedAt"`    
    DeletedAt  *gtime.Time   `json:"deletedAt"`    
    LinkedSysBabyBodySysBaby   *model.LinkedSysBabyBodySysBaby  `json:"linkedSysBabyBodySysBaby"`    
}
