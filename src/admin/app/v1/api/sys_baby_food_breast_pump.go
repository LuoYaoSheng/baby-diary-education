// ==========================================================================
// GFast自动生成控制器相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:33:11
// 生成路径: gfast/app/system/api/sys_baby_food_breast_pump.go
// 生成人：gfast
// ==========================================================================

package api

import (
	sysApi "gfast/app/system/api"
	"gfast/app/system/dao"
	"gfast/app/system/service"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gvalid"
	"strconv"
)

type sysBabyFoodBreastPump struct {
	sysApi.SystemBase
}

var SysBabyFoodBreastPump = new(sysBabyFoodBreastPump)

// List 列表
func (c *sysBabyFoodBreastPump) List(r *ghttp.Request) {
	var req *dao.SysBabyFoodBreastPumpSearchReq
	//获取参数
	if err := r.Parse(&req); err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}

	// 前端问题，临时补救
	babyId, _ := strconv.Atoi(req.BabyId)
	if babyId == 0 {
		result := g.Map{
			"currentPage": req.PageNum,
			"total":       0,
			"list":        []string{},
		}
		c.SusJsonExit(r, result)
	}

	req.Ctx = r.GetCtx()
	req.OrderBy = "id desc"
	total, page, list, err := service.SysBabyFoodBreastPump.GetList(req)
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
func (c *sysBabyFoodBreastPump) Add(r *ghttp.Request) {
	var req *dao.SysBabyFoodBreastPumpAddReq
	//获取参数
	err := r.Parse(&req)
	if err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.CreatedBy = r.GetUint64("user_id") //获取登陆用户id
	err = service.SysBabyFoodBreastPump.Add(r.GetCtx(), req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "添加成功")
}

// Get 获取
func (c *sysBabyFoodBreastPump) Get(r *ghttp.Request) {
	id := r.GetUint("id")
	info, err := service.SysBabyFoodBreastPump.GetInfoById(r.GetCtx(), id)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, info)
}

// Edit 修改
func (c *sysBabyFoodBreastPump) Edit(r *ghttp.Request) {
	var req *dao.SysBabyFoodBreastPumpEditReq
	//获取参数
	err := r.Parse(&req)
	if err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.UpdatedBy = r.GetUint64("user_id") //获取登陆用户id
	err = service.SysBabyFoodBreastPump.Edit(r.GetCtx(), req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "修改成功")
}

// Delete 删除
func (c *sysBabyFoodBreastPump) Delete(r *ghttp.Request) {
	ids := r.GetInts("ids")
	err := service.SysBabyFoodBreastPump.DeleteByIds(r.GetCtx(), ids)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "删除成功")
}
