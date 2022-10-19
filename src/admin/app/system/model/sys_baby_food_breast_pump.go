// ==========================================================================
// GFast自动生成model代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-10-03 10:41:52
// 生成路径: gfast/app/system/model/sys_baby_food_breast_pump.go
// 生成人：gfast
// ==========================================================================


package model
import (    
    "github.com/gogf/gf/os/gtime"    
	"github.com/gogf/gf/util/gmeta"
)
// SysBabyFoodBreastPump is the golang structure for table sys_baby_food_breast_pump.
type SysBabyFoodBreastPump struct {
	     gmeta.Meta   `orm:"table:sys_baby_food_breast_pump"`	
         Id       uint         `orm:"id,primary" json:"id"`    // ID    
         BabyId    int64         `orm:"baby_id" json:"babyId"`    // 宝宝    
         StartAt    *gtime.Time         `orm:"start_at" json:"startAt"`    // 开始时间    
         AppetiteLeft    int         `orm:"appetite_left" json:"appetiteLeft"`    // 左侧量    
         AppetiteRight    int         `orm:"appetite_right" json:"appetiteRight"`    // 右侧量    
         DurationLeft    int         `orm:"duration_left" json:"durationLeft"`    // 左侧时长    
         DurationRight    int         `orm:"duration_right" json:"durationRight"`    // 右侧时长    
         DurationType    int         `orm:"duration_type" json:"durationType"`    // 吸奶方式    
         Remark    string         `orm:"remark" json:"remark"`    // 备注    
         CreatedBy    uint64         `orm:"created_by" json:"createdBy"`    // 创建人    
         UpdatedBy    uint64         `orm:"updated_by" json:"updatedBy"`    // 修改人    
         CreatedAt    *gtime.Time         `orm:"created_at" json:"createdAt"`    // 创建时间    
         UpdatedAt    *gtime.Time         `orm:"updated_at" json:"updatedAt"`    // 修改时间    
         DeletedAt    *gtime.Time         `orm:"deleted_at" json:"deletedAt"`    // 删除时间    
         LinkedSysBabyFoodBreastPumpSysBaby  *LinkedSysBabyFoodBreastPumpSysBaby  `orm:"with:id=baby_id" json:"linkedSysBabyFoodBreastPumpSysBaby"`    
}
type LinkedSysBabyFoodBreastPumpSysBaby struct {
	    gmeta.Meta   `orm:"table:sys_baby"`	
	    Id    uint         `orm:"id" json:"id"`    //	
	    Nickname    string         `orm:"nickname" json:"nickname"`    // 姓名	
}
