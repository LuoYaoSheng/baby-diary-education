// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-29 23:19:24
// 生成路径: gfast/app/system/dao/sys_user_baby.go
// 生成人：gfast
// ==========================================================================


package dao
import (
    comModel "gfast/app/common/model"
    "gfast/app/system/dao/internal"    
)
// sysUserBabyDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysUserBabyDao struct {
	*internal.SysUserBabyDao
}
var (
    // SysUserBaby is globally public accessible object for table tools_gen_table operations.
    SysUserBaby = sysUserBabyDao{
        internal.NewSysUserBabyDao(),
    }
)


// Fill with you ideas below.


// SysUserBabySearchReq 分页请求参数
type SysUserBabySearchReq struct {    
    Id  string `p:"id" v:"id@integer#ID需为整数"` //ID    
    UserId  string `p:"userId" v:"userId@integer#用户ID需为整数"` //用户ID    
    BabyId  string `p:"babyId" v:"babyId@integer#宝宝ID需为整数"` //宝宝ID    
    comModel.PageReq
}
// SysUserBabyAddReq 添加操作请求参数
type SysUserBabyAddReq struct {    
    UserId  int64   `p:"userId" v:"required#用户ID不能为空"`    
    BabyId  int64   `p:"babyId" v:"required#宝宝ID不能为空"`    
}
// SysUserBabyEditReq 修改操作请求参数
type SysUserBabyEditReq struct {
    Id    uint64  `p:"id" v:"required#主键ID不能为空"`    
    UserId  int64 `p:"userId" v:"required#用户ID不能为空"`    
    BabyId  int64 `p:"babyId" v:"required#宝宝ID不能为空"`    
}
// SysUserBabyListRes 列表返回结果
type SysUserBabyListRes struct {    
    Id  uint64   `json:"id"`    
    UserId  int64   `json:"userId"`    
    BabyId  int64   `json:"babyId"`  
}
// SysUserBabyInfoRes 数据返回结果
type SysUserBabyInfoRes struct {    
    Id  uint64   `json:"id"`    
    UserId  int64   `json:"userId"`    
    BabyId  int64   `json:"babyId"`    
}
