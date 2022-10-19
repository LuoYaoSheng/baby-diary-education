// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-10-03 21:33:32
// 生成路径: gfast/app/system/dao/sys_baby_food_feeding_mother.go
// 生成人：gfast
// ==========================================================================

package dao

import (
	comModel "gfast/app/common/model"
	"gfast/app/system/dao/internal"
	"gfast/app/system/model"
	"github.com/gogf/gf/os/gtime"
)

// sysBabyFoodFeedingMotherDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyFoodFeedingMotherDao struct {
	*internal.SysBabyFoodFeedingMotherDao
}

var (
	// SysBabyFoodFeedingMother is globally public accessible object for table tools_gen_table operations.
	SysBabyFoodFeedingMother = sysBabyFoodFeedingMotherDao{
		internal.NewSysBabyFoodFeedingMotherDao(),
	}
)

// Fill with you ideas below.

// SysBabyFoodFeedingMotherSearchReq 分页请求参数
type SysBabyFoodFeedingMotherSearchReq struct {
	Id            string `p:"id" v:"id@integer#ID需为整数"`                                     //ID
	BabyId        string `p:"babyId" v:"babyId@integer#宝宝需为整数"`                             //宝宝
	StartAt       string `p:"startAt"`                                                      //开始时间  `p:"startAt" v:"startAt@datetime#开始时间需为YYYY-MM-DD hh:mm:ss格式"` //开始时间
	DurationLeft  string `p:"durationLeft" v:"durationLeft@integer#左侧时长需为整数"`               //左侧时长
	DurationRight string `p:"durationRight" v:"durationRight@integer#右侧时长需为整数"`             //右侧时长
	CreatedBy     string `p:"createdBy" v:"createdBy@integer#创建人需为整数"`                      //创建人
	CreatedAt     string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间
	comModel.PageReq
}

// SysBabyFoodFeedingMotherAddReq 添加操作请求参数
type SysBabyFoodFeedingMotherAddReq struct {
	BabyId        int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt       *gtime.Time `p:"startAt" `
	DurationLeft  int         `p:"durationLeft" `
	DurationRight int         `p:"durationRight" `
	Remark        string      `p:"remark" `
	CreatedBy     uint64
	Remind        int `p:"remind" `
}

// SysBabyFoodFeedingMotherEditReq 修改操作请求参数
type SysBabyFoodFeedingMotherEditReq struct {
	Id            uint        `p:"id" v:"required#主键ID不能为空"`
	BabyId        int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt       *gtime.Time `p:"startAt" `
	DurationLeft  int         `p:"durationLeft" `
	DurationRight int         `p:"durationRight" `
	Remark        string      `p:"remark" `
	UpdatedBy     uint64
}

// SysBabyFoodFeedingMotherListRes 列表返回结果
type SysBabyFoodFeedingMotherListRes struct {
	Id                                    uint                                         `json:"id"`
	BabyId                                int64                                        `json:"babyId"`
	StartAt                               *gtime.Time                                  `json:"startAt"`
	DurationLeft                          int                                          `json:"durationLeft"`
	DurationRight                         int                                          `json:"durationRight"`
	Remark                                string                                       `json:"remark"`
	CreatedBy                             uint64                                       `json:"createdBy"`
	CreatedAt                             *gtime.Time                                  `json:"createdAt"`
	LinkedSysBabyFoodFeedingMotherSysBaby *model.LinkedSysBabyFoodFeedingMotherSysBaby `json:"linkedSysBabyFoodFeedingMotherSysBaby"`
}

// SysBabyFoodFeedingMotherInfoRes 数据返回结果
type SysBabyFoodFeedingMotherInfoRes struct {
	Id                                    uint                                         `json:"id"`
	BabyId                                int64                                        `json:"babyId"`
	StartAt                               *gtime.Time                                  `json:"startAt"`
	DurationLeft                          int                                          `json:"durationLeft"`
	DurationRight                         int                                          `json:"durationRight"`
	Remark                                string                                       `json:"remark"`
	CreatedBy                             uint64                                       `json:"createdBy"`
	UpdatedBy                             uint64                                       `json:"updatedBy"`
	CreatedAt                             *gtime.Time                                  `json:"createdAt"`
	UpdatedAt                             *gtime.Time                                  `json:"updatedAt"`
	DeletedAt                             *gtime.Time                                  `json:"deletedAt"`
	LinkedSysBabyFoodFeedingMotherSysBaby *model.LinkedSysBabyFoodFeedingMotherSysBaby `json:"linkedSysBabyFoodFeedingMotherSysBaby"`
}
