// ==========================================================================
// GFast自动生成model代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-30 21:33:19
// 生成路径: gfast/app/system/model/sys_baby_body.go
// 生成人：gfast
// ==========================================================================


package model
import (    
    "github.com/gogf/gf/os/gtime"    
	"github.com/gogf/gf/util/gmeta"
)
// SysBabyBody is the golang structure for table sys_baby_body.
type SysBabyBody struct {
	     gmeta.Meta   `orm:"table:sys_baby_body"`	
         Id       uint         `orm:"id,primary" json:"id"`    // ID    
         BabyId    int64         `orm:"baby_id" json:"babyId"`    // 宝宝    
         Height    int         `orm:"height" json:"height"`    // 身高    
         Weight    int         `orm:"weight" json:"weight"`    // 体重    
         Hc    int         `orm:"hc" json:"hc"`    // 头围    
         Remark    string         `orm:"remark" json:"remark"`    // 备注    
         CreatedBy    uint64         `orm:"created_by" json:"createdBy"`    // 创建人    
         UpdatedBy    uint64         `orm:"updated_by" json:"updatedBy"`    // 修改人    
         CreatedAt    *gtime.Time         `orm:"created_at" json:"createdAt"`    // 创建时间    
         UpdatedAt    *gtime.Time         `orm:"updated_at" json:"updatedAt"`    // 修改时间    
         DeletedAt    *gtime.Time         `orm:"deleted_at" json:"deletedAt"`    // 删除时间    
         LinkedSysBabyBodySysBaby  *LinkedSysBabyBodySysBaby  `orm:"with:id=baby_id" json:"linkedSysBabyBodySysBaby"`    
}
type LinkedSysBabyBodySysBaby struct {
	    gmeta.Meta   `orm:"table:sys_baby"`	
	    Id    uint         `orm:"id" json:"id"`    //	
	    Nickname    string         `orm:"nickname" json:"nickname"`    // 姓名	
}
