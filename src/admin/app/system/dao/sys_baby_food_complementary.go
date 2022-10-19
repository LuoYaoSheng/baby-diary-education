// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-30 21:44:50
// 生成路径: gfast/app/system/dao/sys_baby_food_complementary.go
// 生成人：gfast
// ==========================================================================

package dao

import (
	comModel "gfast/app/common/model"
	"gfast/app/system/dao/internal"
	"gfast/app/system/model"
	"github.com/gogf/gf/os/gtime"
)

// sysBabyFoodComplementaryDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyFoodComplementaryDao struct {
	*internal.SysBabyFoodComplementaryDao
}

var (
	// SysBabyFoodComplementary is globally public accessible object for table tools_gen_table operations.
	SysBabyFoodComplementary = sysBabyFoodComplementaryDao{
		internal.NewSysBabyFoodComplementaryDao(),
	}
)

// Fill with you ideas below.

// SysBabyFoodComplementarySearchReq 分页请求参数
type SysBabyFoodComplementarySearchReq struct {
	Id        string `p:"id" v:"id@integer#ID需为整数"`                                     //ID
	BabyId    string `p:"babyId" v:"babyId@integer#宝宝需为整数"`                             //宝宝
	StartAt   string `p:"startAt"`                                                      // `p:"startAt" v:"startAt@datetime#开始时间需为YYYY-MM-DD hh:mm:ss格式"` //开始时间
	Type      string `p:"type" v:"type@integer#辅食类型需为整数"`                               //辅食类型
	Character string `p:"character" v:"character@integer#性状需为整数"`                       //性状
	Appetite  string `p:"appetite" v:"appetite@integer#食量需为整数"`                         //食量
	Duration  string `p:"duration" v:"duration@integer#持续时间需为整数"`                       //持续时间
	CreatedBy string `p:"createdBy" v:"createdBy@integer#创建人需为整数"`                      //创建人
	CreatedAt string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间
	comModel.PageReq
}

// SysBabyFoodComplementaryAddReq 添加操作请求参数
type SysBabyFoodComplementaryAddReq struct {
	BabyId    int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt   *gtime.Time `p:"startAt" `
	Type      int64       `p:"type" v:"required#辅食类型不能为空"`
	Character int         `p:"character" `
	Appetite  int         `p:"appetite" `
	Duration  int         `p:"duration" `
	Remark    string      `p:"remark" `
	CreatedBy uint64
}

// SysBabyFoodComplementaryEditReq 修改操作请求参数
type SysBabyFoodComplementaryEditReq struct {
	Id        uint        `p:"id" v:"required#主键ID不能为空"`
	BabyId    int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt   *gtime.Time `p:"startAt" `
	Type      int64       `p:"type" v:"required#辅食类型不能为空"`
	Character int         `p:"character" `
	Appetite  int         `p:"appetite" `
	Duration  int         `p:"duration" `
	Remark    string      `p:"remark" `
	UpdatedBy uint64
}

// SysBabyFoodComplementaryListRes 列表返回结果
type SysBabyFoodComplementaryListRes struct {
	Id                                    uint                                         `json:"id"`
	BabyId                                int64                                        `json:"babyId"`
	StartAt                               *gtime.Time                                  `json:"startAt"`
	Type                                  int64                                        `json:"type"`
	Character                             int                                          `json:"character"`
	Appetite                              int                                          `json:"appetite"`
	Duration                              int                                          `json:"duration"`
	Remark                                string                                       `json:"remark"`
	CreatedBy                             uint64                                       `json:"createdBy"`
	CreatedAt                             *gtime.Time                                  `json:"createdAt"`
	LinkedSysBabyFoodComplementarySysBaby *model.LinkedSysBabyFoodComplementarySysBaby `json:"linkedSysBabyFoodComplementarySysBaby"`
}

// SysBabyFoodComplementaryInfoRes 数据返回结果
type SysBabyFoodComplementaryInfoRes struct {
	Id                                    uint                                         `json:"id"`
	BabyId                                int64                                        `json:"babyId"`
	StartAt                               *gtime.Time                                  `json:"startAt"`
	Type                                  int64                                        `json:"type"`
	Character                             int                                          `json:"character"`
	Appetite                              int                                          `json:"appetite"`
	Duration                              int                                          `json:"duration"`
	Remark                                string                                       `json:"remark"`
	CreatedBy                             uint64                                       `json:"createdBy"`
	UpdatedBy                             uint64                                       `json:"updatedBy"`
	CreatedAt                             *gtime.Time                                  `json:"createdAt"`
	UpdatedAt                             *gtime.Time                                  `json:"updatedAt"`
	DeletedAt                             *gtime.Time                                  `json:"deletedAt"`
	LinkedSysBabyFoodComplementarySysBaby *model.LinkedSysBabyFoodComplementarySysBaby `json:"linkedSysBabyFoodComplementarySysBaby"`
}
