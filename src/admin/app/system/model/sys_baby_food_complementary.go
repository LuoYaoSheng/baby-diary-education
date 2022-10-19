// ==========================================================================
// GFast自动生成model代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-30 21:44:50
// 生成路径: gfast/app/system/model/sys_baby_food_complementary.go
// 生成人：gfast
// ==========================================================================


package model
import (    
    "github.com/gogf/gf/os/gtime"    
	"github.com/gogf/gf/util/gmeta"
)
// SysBabyFoodComplementary is the golang structure for table sys_baby_food_complementary.
type SysBabyFoodComplementary struct {
	     gmeta.Meta   `orm:"table:sys_baby_food_complementary"`	
         Id       uint         `orm:"id,primary" json:"id"`    // ID    
         BabyId    int64         `orm:"baby_id" json:"babyId"`    // 宝宝    
         StartAt    *gtime.Time         `orm:"start_at" json:"startAt"`    // 开始时间    
         Type    int64         `orm:"type" json:"type"`    // 辅食类型    
         Character    int         `orm:"character" json:"character"`    // 性状    
         Appetite    int         `orm:"appetite" json:"appetite"`    // 食量    
         Duration    int         `orm:"duration" json:"duration"`    // 持续时间    
         Remark    string         `orm:"remark" json:"remark"`    // 备注    
         CreatedBy    uint64         `orm:"created_by" json:"createdBy"`    // 创建人    
         UpdatedBy    uint64         `orm:"updated_by" json:"updatedBy"`    // 修改人    
         CreatedAt    *gtime.Time         `orm:"created_at" json:"createdAt"`    // 创建时间    
         UpdatedAt    *gtime.Time         `orm:"updated_at" json:"updatedAt"`    // 修改时间    
         DeletedAt    *gtime.Time         `orm:"deleted_at" json:"deletedAt"`    // 删除时间    
         LinkedSysBabyFoodComplementarySysBaby  *LinkedSysBabyFoodComplementarySysBaby  `orm:"with:id=baby_id" json:"linkedSysBabyFoodComplementarySysBaby"`    
}
type LinkedSysBabyFoodComplementarySysBaby struct {
	    gmeta.Meta   `orm:"table:sys_baby"`	
	    Id    uint         `orm:"id" json:"id"`    //	
	    Nickname    string         `orm:"nickname" json:"nickname"`    // 姓名	
}
