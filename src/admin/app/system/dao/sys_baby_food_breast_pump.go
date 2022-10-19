// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-10-03 10:41:52
// 生成路径: gfast/app/system/dao/sys_baby_food_breast_pump.go
// 生成人：gfast
// ==========================================================================

package dao

import (
	comModel "gfast/app/common/model"
	"gfast/app/system/dao/internal"
	"gfast/app/system/model"
	"github.com/gogf/gf/os/gtime"
)

// sysBabyFoodBreastPumpDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyFoodBreastPumpDao struct {
	*internal.SysBabyFoodBreastPumpDao
}

var (
	// SysBabyFoodBreastPump is globally public accessible object for table tools_gen_table operations.
	SysBabyFoodBreastPump = sysBabyFoodBreastPumpDao{
		internal.NewSysBabyFoodBreastPumpDao(),
	}
)

// Fill with you ideas below.

// SysBabyFoodBreastPumpSearchReq 分页请求参数
type SysBabyFoodBreastPumpSearchReq struct {
	Id            string `p:"id" v:"id@integer#ID需为整数"`                                     //ID
	BabyId        string `p:"babyId" v:"babyId@integer#宝宝需为整数"`                             //宝宝
	StartAt       string `p:"startAt"`                                                      // `p:"startAt" v:"startAt@datetime#开始时间需为YYYY-MM-DD hh:mm:ss格式"` //开始时间
	AppetiteLeft  string `p:"appetiteLeft" v:"appetiteLeft@integer#左侧量需为整数"`                //左侧量
	AppetiteRight string `p:"appetiteRight" v:"appetiteRight@integer#右侧量需为整数"`              //右侧量
	DurationLeft  string `p:"durationLeft" v:"durationLeft@integer#左侧时长需为整数"`               //左侧时长
	DurationRight string `p:"durationRight" v:"durationRight@integer#右侧时长需为整数"`             //右侧时长
	DurationType  string `p:"durationType" v:"durationType@integer#吸奶方式需为整数"`               //吸奶方式
	CreatedBy     string `p:"createdBy" v:"createdBy@integer#创建人需为整数"`                      //创建人
	CreatedAt     string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间
	comModel.PageReq
}

// SysBabyFoodBreastPumpAddReq 添加操作请求参数
type SysBabyFoodBreastPumpAddReq struct {
	BabyId        int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt       *gtime.Time `p:"startAt" `
	AppetiteLeft  int         `p:"appetiteLeft" `
	AppetiteRight int         `p:"appetiteRight" `
	DurationLeft  int         `p:"durationLeft" `
	DurationRight int         `p:"durationRight" `
	DurationType  int         `p:"durationType" `
	Remark        string      `p:"remark" `
	CreatedBy     uint64
}

// SysBabyFoodBreastPumpEditReq 修改操作请求参数
type SysBabyFoodBreastPumpEditReq struct {
	Id            uint        `p:"id" v:"required#主键ID不能为空"`
	BabyId        int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt       *gtime.Time `p:"startAt" `
	AppetiteLeft  int         `p:"appetiteLeft" `
	AppetiteRight int         `p:"appetiteRight" `
	DurationLeft  int         `p:"durationLeft" `
	DurationRight int         `p:"durationRight" `
	DurationType  int         `p:"durationType" `
	Remark        string      `p:"remark" `
	UpdatedBy     uint64
}

// SysBabyFoodBreastPumpListRes 列表返回结果
type SysBabyFoodBreastPumpListRes struct {
	Id                                 uint                                      `json:"id"`
	BabyId                             int64                                     `json:"babyId"`
	StartAt                            *gtime.Time                               `json:"startAt"`
	AppetiteLeft                       int                                       `json:"appetiteLeft"`
	AppetiteRight                      int                                       `json:"appetiteRight"`
	DurationLeft                       int                                       `json:"durationLeft"`
	DurationRight                      int                                       `json:"durationRight"`
	DurationType                       int                                       `json:"durationType"`
	Remark                             string                                    `json:"remark"`
	CreatedBy                          uint64                                    `json:"createdBy"`
	CreatedAt                          *gtime.Time                               `json:"createdAt"`
	LinkedSysBabyFoodBreastPumpSysBaby *model.LinkedSysBabyFoodBreastPumpSysBaby `json:"linkedSysBabyFoodBreastPumpSysBaby"`
}

// SysBabyFoodBreastPumpInfoRes 数据返回结果
type SysBabyFoodBreastPumpInfoRes struct {
	Id                                 uint                                      `json:"id"`
	BabyId                             int64                                     `json:"babyId"`
	StartAt                            *gtime.Time                               `json:"startAt"`
	AppetiteLeft                       int                                       `json:"appetiteLeft"`
	AppetiteRight                      int                                       `json:"appetiteRight"`
	DurationLeft                       int                                       `json:"durationLeft"`
	DurationRight                      int                                       `json:"durationRight"`
	DurationType                       int                                       `json:"durationType"`
	Remark                             string                                    `json:"remark"`
	CreatedBy                          uint64                                    `json:"createdBy"`
	UpdatedBy                          uint64                                    `json:"updatedBy"`
	CreatedAt                          *gtime.Time                               `json:"createdAt"`
	UpdatedAt                          *gtime.Time                               `json:"updatedAt"`
	DeletedAt                          *gtime.Time                               `json:"deletedAt"`
	LinkedSysBabyFoodBreastPumpSysBaby *model.LinkedSysBabyFoodBreastPumpSysBaby `json:"linkedSysBabyFoodBreastPumpSysBaby"`
}
