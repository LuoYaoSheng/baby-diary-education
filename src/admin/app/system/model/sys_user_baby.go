// ==========================================================================
// GFast自动生成model代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-29 23:19:24
// 生成路径: gfast/app/system/model/sys_user_baby.go
// 生成人：gfast
// ==========================================================================


package model
import (    
	"github.com/gogf/gf/util/gmeta"
)
// SysUserBaby is the golang structure for table sys_user_baby.
type SysUserBaby struct {
	     gmeta.Meta   `orm:"table:sys_user_baby"`	
         Id       uint64         `orm:"id,primary" json:"id"`    // ID    
         UserId    int64         `orm:"user_id" json:"userId"`    // 用户ID    
         BabyId    int64         `orm:"baby_id" json:"babyId"`    // 宝宝ID    
}
