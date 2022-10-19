// ==========================================================================
// GFast自动生成model代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-30 15:43:07
// 生成路径: gfast/app/system/model/sys_baby.go
// 生成人：gfast
// ==========================================================================


package model
import (    
    "github.com/gogf/gf/os/gtime"    
	"github.com/gogf/gf/util/gmeta"
)
// SysBaby is the golang structure for table sys_baby.
type SysBaby struct {
	     gmeta.Meta   `orm:"table:sys_baby"`	
         Id       uint         `orm:"id,primary" json:"id"`    // ID    
         Nickname    string         `orm:"nickname" json:"nickname"`    // 姓名    
         Sex    int         `orm:"sex" json:"sex"`    // 性别    
         Avatar    string         `orm:"avatar" json:"avatar"`    // 头像    
         Birthday    *gtime.Time         `orm:"birthday" json:"birthday"`    // 生日    
         CreatedBy    uint64         `orm:"created_by" json:"createdBy"`    // 创建人    
         UpdatedBy    uint64         `orm:"updated_by" json:"updatedBy"`    // 修改人    
         CreatedAt    *gtime.Time         `orm:"created_at" json:"createdAt"`    // 创建时间    
         UpdatedAt    *gtime.Time         `orm:"updated_at" json:"updatedAt"`    // 修改时间    
         DeletedAt    *gtime.Time         `orm:"deleted_at" json:"deletedAt"`    // 删除时间    
}
