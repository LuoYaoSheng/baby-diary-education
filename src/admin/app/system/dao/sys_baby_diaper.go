// ==========================================================================
// GFast自动生成dao操作代码，无需手动修改，重新生成不会自动覆盖.
// 生成日期：2022-09-30 21:33:16
// 生成路径: gfast/app/system/dao/sys_baby_diaper.go
// 生成人：gfast
// ==========================================================================

package dao

import (
	comModel "gfast/app/common/model"
	"gfast/app/system/dao/internal"
	"gfast/app/system/model"
	"github.com/gogf/gf/os/gtime"
)

// sysBabyDiaperDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysBabyDiaperDao struct {
	*internal.SysBabyDiaperDao
}

var (
	// SysBabyDiaper is globally public accessible object for table tools_gen_table operations.
	SysBabyDiaper = sysBabyDiaperDao{
		internal.NewSysBabyDiaperDao(),
	}
)

// Fill with you ideas below.

// SysBabyDiaperSearchReq 分页请求参数
type SysBabyDiaperSearchReq struct {
	Id        string `p:"id" v:"id@integer#ID需为整数"`                                     //ID
	BabyId    string `p:"babyId" v:"babyId@integer#宝宝需为整数"`                             //宝宝
	StartAt   string `p:"startAt"`                                                      // `p:"startAt" v:"startAt@datetime#更换时间需为YYYY-MM-DD hh:mm:ss格式"` //更换时间
	Type      string `p:"type" v:"type@integer#类型需为整数"`                                 //类型
	Weight    string `p:"weight" v:"weight@integer#尿布重量需为整数"`                           //尿布重量
	Status    string `p:"status" v:"status@integer#便便状态需为整数"`                           //便便状态
	Colour    string `p:"colour" v:"colour@integer#便便颜色需为整数"`                           //便便颜色
	CreatedBy string `p:"createdBy" v:"createdBy@integer#创建人需为整数"`                      //创建人
	CreatedAt string `p:"createdAt" v:"createdAt@datetime#创建时间需为YYYY-MM-DD hh:mm:ss格式"` //创建时间
	comModel.PageReq
}

// SysBabyDiaperAddReq 添加操作请求参数
type SysBabyDiaperAddReq struct {
	BabyId    int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt   *gtime.Time `p:"startAt" `
	Type      int         `p:"type" `
	Weight    int         `p:"weight" `
	Status    int         `p:"status" v:"required#便便状态不能为空"`
	Colour    int         `p:"colour" `
	Remark    string      `p:"remark" `
	CreatedBy uint64
}

// SysBabyDiaperEditReq 修改操作请求参数
type SysBabyDiaperEditReq struct {
	Id        uint        `p:"id" v:"required#主键ID不能为空"`
	BabyId    int64       `p:"babyId" v:"required#宝宝不能为空"`
	StartAt   *gtime.Time `p:"startAt" `
	Type      int         `p:"type" `
	Weight    int         `p:"weight" `
	Status    int         `p:"status" v:"required#便便状态不能为空"`
	Colour    int         `p:"colour" `
	Remark    string      `p:"remark" `
	UpdatedBy uint64
}

// SysBabyDiaperListRes 列表返回结果
type SysBabyDiaperListRes struct {
	Id                         uint                              `json:"id"`
	BabyId                     int64                             `json:"babyId"`
	StartAt                    *gtime.Time                       `json:"startAt"`
	Type                       int                               `json:"type"`
	Weight                     int                               `json:"weight"`
	Status                     int                               `json:"status"`
	Colour                     int                               `json:"colour"`
	Remark                     string                            `json:"remark"`
	CreatedBy                  uint64                            `json:"createdBy"`
	CreatedAt                  *gtime.Time                       `json:"createdAt"`
	LinkedSysBabyDiaperSysBaby *model.LinkedSysBabyDiaperSysBaby `json:"linkedSysBabyDiaperSysBaby"`
}

// SysBabyDiaperInfoRes 数据返回结果
type SysBabyDiaperInfoRes struct {
	Id                         uint                              `json:"id"`
	BabyId                     int64                             `json:"babyId"`
	StartAt                    *gtime.Time                       `json:"startAt"`
	Type                       int                               `json:"type"`
	Weight                     int                               `json:"weight"`
	Status                     int                               `json:"status"`
	Colour                     int                               `json:"colour"`
	Remark                     string                            `json:"remark"`
	CreatedBy                  uint64                            `json:"createdBy"`
	UpdatedBy                  uint64                            `json:"updatedBy"`
	CreatedAt                  *gtime.Time                       `json:"createdAt"`
	UpdatedAt                  *gtime.Time                       `json:"updatedAt"`
	DeletedAt                  *gtime.Time                       `json:"deletedAt"`
	LinkedSysBabyDiaperSysBaby *model.LinkedSysBabyDiaperSysBaby `json:"linkedSysBabyDiaperSysBaby"`
}
