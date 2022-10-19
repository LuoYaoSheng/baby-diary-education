// ==========================================================================
// GFast自动生成model代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-29 10:42:33
// 生成路径: gfast/app/system/model/sys_user_bind.go
// 生成人：gfast
// ==========================================================================


package model
import (    
    "github.com/gogf/gf/os/gtime"    
	"github.com/gogf/gf/util/gmeta"
)
// SysUserBind is the golang structure for table sys_user_bind.
type SysUserBind struct {
	     gmeta.Meta   `orm:"table:sys_user_bind"`	
         Id       uint         `orm:"id,primary" json:"id"`    // ID    
         Type    int         `orm:"type" json:"type"`    // 来源    
         Openid    string         `orm:"openid" json:"openid"`    // openid    
         UserId    uint         `orm:"user_id" json:"userId"`    // 用户id    
         Nickname    string         `orm:"nickname" json:"nickname"`    // 昵称    
         Avatarurl    string         `orm:"avatarurl" json:"avatarurl"`    // 头像    
         Unionid    string         `orm:"unionid" json:"unionid"`    // unionid    
         CreatedBy    uint64         `orm:"created_by" json:"createdBy"`    // 创建人    
         UpdatedBy    uint64         `orm:"updated_by" json:"updatedBy"`    // 修改人    
         CreatedAt    *gtime.Time         `orm:"created_at" json:"createdAt"`    // 创建时间    
         UpdatedAt    *gtime.Time         `orm:"updated_at" json:"updatedAt"`    // 修改时间    
         DeletedAt    *gtime.Time         `orm:"deleted_at" json:"deletedAt"`    // 删除时间    
}
