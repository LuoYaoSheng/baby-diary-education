// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-29 10:42:33
// 生成路径: gfast/app/system/dao/sys_user_bind.go
// 生成人：gfast
// ==========================================================================


package dao
import (
    comModel "gfast/app/common/model"
    "gfast/app/system/dao/internal"    
    "github.com/gogf/gf/os/gtime"    
)
// sysUserBindDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysUserBindDao struct {
	*internal.SysUserBindDao
}
var (
    // SysUserBind is globally public accessible object for table tools_gen_table operations.
    SysUserBind = sysUserBindDao{
        internal.NewSysUserBindDao(),
    }
)


// Fill with you ideas below.


// SysUserBindSearchReq 分页请求参数
type SysUserBindSearchReq struct {    
    Id  string `p:"id" v:"id@integer#ID需为整数"` //ID    
    Type  string `p:"type" v:"type@integer#来源需为整数"` //来源    
    Openid  string `p:"openid"` //openid    
    UserId  string `p:"userId" v:"userId@integer#用户id需为整数"` //用户id    
    Nickname  string `p:"nickname"` //昵称    
    Unionid  string `p:"unionid"` //unionid    
    CreatedBy  string `p:"createdBy" v:"createdBy@integer#创建人需为整数"` //创建人    
    CreatedAt  string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间    
    comModel.PageReq
}
// SysUserBindAddReq 添加操作请求参数
type SysUserBindAddReq struct {    
    Type  int   `p:"type" `    
    Openid  string   `p:"openid" v:"required#openid不能为空"`    
    UserId  uint   `p:"userId" `    
    Nickname  string   `p:"nickname" v:"required#昵称不能为空"`    
    Avatarurl  string   `p:"avatarurl" `    
    Unionid  string   `p:"unionid" `    
    CreatedBy       uint64    
}
// SysUserBindEditReq 修改操作请求参数
type SysUserBindEditReq struct {
    Id    uint  `p:"id" v:"required#主键ID不能为空"`    
    Type  int `p:"type" `    
    Openid  string `p:"openid" v:"required#openid不能为空"`    
    UserId  uint `p:"userId" `    
    Nickname  string `p:"nickname" v:"required#昵称不能为空"`    
    Avatarurl  string `p:"avatarurl" `    
    Unionid  string `p:"unionid" `    
    UpdatedBy       uint64    
}
// SysUserBindListRes 列表返回结果
type SysUserBindListRes struct {    
    Id  uint   `json:"id"`    
    Type  int   `json:"type"`    
    Openid  string   `json:"openid"`    
    UserId  uint   `json:"userId"`    
    Nickname  string   `json:"nickname"`    
    Avatarurl  string   `json:"avatarurl"`    
    Unionid  string   `json:"unionid"`    
    CreatedBy  uint64   `json:"createdBy"`    
    CreatedAt  *gtime.Time   `json:"createdAt"`  
}
// SysUserBindInfoRes 数据返回结果
type SysUserBindInfoRes struct {    
    Id  uint   `json:"id"`    
    Type  int   `json:"type"`    
    Openid  string   `json:"openid"`    
    UserId  uint   `json:"userId"`    
    Nickname  string   `json:"nickname"`    
    Avatarurl  string   `json:"avatarurl"`    
    Unionid  string   `json:"unionid"`    
    CreatedBy  uint64   `json:"createdBy"`    
    UpdatedBy  uint64   `json:"updatedBy"`    
    CreatedAt  *gtime.Time   `json:"createdAt"`    
    UpdatedAt  *gtime.Time   `json:"updatedAt"`    
    DeletedAt  *gtime.Time   `json:"deletedAt"`    
}
