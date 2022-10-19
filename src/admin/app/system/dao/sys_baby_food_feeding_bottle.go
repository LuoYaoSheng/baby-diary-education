// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-30 21:33:27
// 生成路径: gfast/app/system/dao/sys_baby_food_feeding_bottle.go
// 生成人：gfast
// ==========================================================================

package dao

import (
	comModel "gfast/app/common/model"
	"gfast/app/system/dao/internal"
	"gfast/app/system/model"
	"github.com/gogf/gf/os/gtime"
)

// sysBabyFoodFeedingBottleDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyFoodFeedingBottleDao struct {
	*internal.SysBabyFoodFeedingBottleDao
}

var (
	// SysBabyFoodFeedingBottle is globally public accessible object for table tools_gen_table operations.
	SysBabyFoodFeedingBottle = sysBabyFoodFeedingBottleDao{
		internal.NewSysBabyFoodFeedingBottleDao(),
	}
)

// Fill with you ideas below.

// SysBabyFoodFeedingBottleSearchReq 分页请求参数
type SysBabyFoodFeedingBottleSearchReq struct {
	Id        string `p:"id" v:"id@integer#ID需为整数"`                                     //ID
	BabyId    string `p:"babyId" v:"babyId@integer#宝宝需为整数"`                             //宝宝
	StartAt   string `p:"startAt"`                                                      // `p:"startAt" v:"startAt@datetime#开始时间需为YYYY-MM-DD hh:mm:ss格式"` //开始时间
	Appetite  string `p:"appetite" v:"appetite@integer#总量需为整数"`                         //总量
	Type      string `p:"type" v:"type@integer#类型需为整数"`                                 //类型
	CreatedBy string `p:"createdBy" v:"createdBy@integer#创建人需为整数"`                      //创建人
	CreatedAt string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间
	comModel.PageReq
}

// SysBabyFoodFeedingBottleAddReq 添加操作请求参数
type SysBabyFoodFeedingBottleAddReq struct {
	BabyId    int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt   *gtime.Time `p:"startAt" v:"required#开始时间不能为空"`
	Appetite  int         `p:"appetite" `
	Type      int         `p:"type" `
	Remark    string      `p:"remark" `
	Remind    int         `p:"remind" `
	CreatedBy uint64
}

// SysBabyFoodFeedingBottleEditReq 修改操作请求参数
type SysBabyFoodFeedingBottleEditReq struct {
	Id        int         `p:"id" v:"required#主键ID不能为空"`
	BabyId    int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt   *gtime.Time `p:"startAt" v:"required#开始时间不能为空"`
	Appetite  int         `p:"appetite" `
	Type      int         `p:"type" `
	Remark    string      `p:"remark" `
	UpdatedBy uint64
}

// SysBabyFoodFeedingBottleListRes 列表返回结果
type SysBabyFoodFeedingBottleListRes struct {
	Id                                    int                                          `json:"id"`
	BabyId                                int64                                        `json:"babyId"`
	StartAt                               *gtime.Time                                  `json:"startAt"`
	Appetite                              int                                          `json:"appetite"`
	Type                                  int                                          `json:"type"`
	Remark                                string                                       `json:"remark"`
	CreatedBy                             uint64                                       `json:"createdBy"`
	CreatedAt                             *gtime.Time                                  `json:"createdAt"`
	LinkedSysBabyFoodFeedingBottleSysBaby *model.LinkedSysBabyFoodFeedingBottleSysBaby `json:"linkedSysBabyFoodFeedingBottleSysBaby"`
}

// SysBabyFoodFeedingBottleInfoRes 数据返回结果
type SysBabyFoodFeedingBottleInfoRes struct {
	Id                                    int                                          `json:"id"`
	BabyId                                int64                                        `json:"babyId"`
	StartAt                               *gtime.Time                                  `json:"startAt"`
	Appetite                              int                                          `json:"appetite"`
	Type                                  int                                          `json:"type"`
	Remark                                string                                       `json:"remark"`
	CreatedBy                             uint64                                       `json:"createdBy"`
	UpdatedBy                             uint64                                       `json:"updatedBy"`
	CreatedAt                             *gtime.Time                                  `json:"createdAt"`
	UpdatedAt                             *gtime.Time                                  `json:"updatedAt"`
	DeletedAt                             *gtime.Time                                  `json:"deletedAt"`
	LinkedSysBabyFoodFeedingBottleSysBaby *model.LinkedSysBabyFoodFeedingBottleSysBaby `json:"linkedSysBabyFoodFeedingBottleSysBaby"`
}
