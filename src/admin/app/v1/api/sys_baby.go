package api

import (
	sysApi "gfast/app/system/api"
	dao2 "gfast/app/system/dao"
	service2 "gfast/app/system/service"
	"gfast/app/v1/dao"
	"gfast/app/v1/service"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/util/gvalid"

	"github.com/gogf/gf/net/ghttp"
)

type baby struct {
	sysApi.SystemBase
}

var (
	Baby = new(baby)
)

// List 列表
func (c *baby) List(r *ghttp.Request) {
	var req *dao.SysBabySearchReq
	//获取参数
	if err := r.Parse(&req); err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.Ctx = r.GetCtx()
	req.UserId = r.GetString("user_id")
	total, page, list, err := service.SysBaby.GetList(req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	result := g.Map{
		"currentPage": page,
		"total":       total,
		"list":        list,
	}
	c.SusJsonExit(r, result)
}

// Add 添加
func (c *baby) Add(r *ghttp.Request) {
	var req *dao.SysBabyAddReq
	//获取参数
	err := r.Parse(&req)
	if err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}

	req.CreatedBy = r.GetUint64("user_id") // 获取登录用户的id
	babyId, err := service.SysBaby.Add(r.GetCtx(), req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}

	req2 := &dao2.SysUserBabyAddReq{
		UserId: r.GetInt64("user_id"), // 获取登录用户的id
		BabyId: babyId,
	}
	err = service2.SysUserBaby.Add(r.GetCtx(), req2)
	if err != nil {
		babyIds := []int{int(babyId)}
		service2.SysBaby.DeleteByIds(r.GetCtx(), babyIds)
		c.FailJsonExit(r, err.Error())
	}

	c.SusJsonExit(r, "添加成功")
}

// Get 获取
func (c *baby) Get(r *ghttp.Request) {
	id := r.GetUint("id")
	info, err := service2.SysBaby.GetInfoById(r.GetCtx(), id)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, info)
}

// Edit 修改
func (c *baby) Edit(r *ghttp.Request) {
	var req *dao2.SysBabyEditReq
	//获取参数
	err := r.Parse(&req)
	if err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.UpdatedBy = r.GetUint64("user_id") // 获取登录用户的id
	err = service2.SysBaby.Edit(r.GetCtx(), req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "修改成功")
}

// Delete 删除
func (c *baby) Delete(r *ghttp.Request) {
	ids := r.GetInts("ids")
	err := service.SysBaby.DeleteByIds(r.GetCtx(), ids, r.GetInt64("user_id"))
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "删除成功")
}
