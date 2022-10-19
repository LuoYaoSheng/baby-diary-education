package dao

import (
	comModel "gfast/app/common/model"
	"github.com/gogf/gf/os/gtime"
)

// SysBabySearchReq 分页请求参数
type SysBabySearchReq struct {
	UserId string `p:"user_id" `
	comModel.PageReq
}

// SysBabyAddReq 添加操作请求参数
type SysBabyAddReq struct {
	Nickname  string      `p:"nickname" v:"required#姓名不能为空"`
	Birthday  *gtime.Time `p:"birthday" `
	Sex       int         `p:"sex" `
	Avatar    string      `p:"avatar" `
	CreatedBy uint64
}
