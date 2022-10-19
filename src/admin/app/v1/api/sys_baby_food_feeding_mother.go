// ==========================================================================
// GFast自动生成控制器相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:33:23
// 生成路径: gfast/app/system/api/sys_baby_food_feeding_mother.go
// 生成人：gfast
// ==========================================================================

package api

import (
	sysApi "gfast/app/system/api"
	"gfast/app/system/dao"
	"gfast/app/system/model"
	"gfast/app/system/service"
	service2 "gfast/app/v1/service"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/os/gtimer"
	"github.com/gogf/gf/util/gvalid"
	"strconv"
	"time"
)

type sysBabyFoodFeedingMother struct {
	sysApi.SystemBase
}

var SysBabyFoodFeedingMother = new(sysBabyFoodFeedingMother)

// List 列表
func (c *sysBabyFoodFeedingMother) List(r *ghttp.Request) {
	var req *dao.SysBabyFoodFeedingMotherSearchReq
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
	total, page, list, err := service.SysBabyFoodFeedingMother.GetList(req)
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
func (c *sysBabyFoodFeedingMother) Add(r *ghttp.Request) {
	var req *dao.SysBabyFoodFeedingMotherAddReq
	//获取参数
	err := r.Parse(&req)
	if err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.CreatedBy = r.GetUint64("user_id") //获取登陆用户id
	err = service.SysBabyFoodFeedingMother.Add(r.GetCtx(), req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}

	if req.Remind > 0 {
		// 获取用户的 openid
		var res []*model.SysUserBind
		dao.SysUserBind.Ctx(r.GetCtx()).Where(dao.SysUserBind.Columns.UserId, r.GetString("user_id")).Scan(&res)
		if len(res) > 0 {
			gtimer.SetTimeout(time.Hour*2, func() {
				service2.Wx.SendTmpleMsg(req.StartAt.String(), "母乳喂养", "/pages/nurse/editNurse", res[0].Openid)
			})
		}
	}

	c.SusJsonExit(r, "添加成功")
}

// Get 获取
func (c *sysBabyFoodFeedingMother) Get(r *ghttp.Request) {
	id := r.GetUint("id")
	info, err := service.SysBabyFoodFeedingMother.GetInfoById(r.GetCtx(), id)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, info)
}

// Edit 修改
func (c *sysBabyFoodFeedingMother) Edit(r *ghttp.Request) {
	var req *dao.SysBabyFoodFeedingMotherEditReq
	//获取参数
	err := r.Parse(&req)
	if err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.UpdatedBy = r.GetUint64("user_id") //获取登陆用户id
	err = service.SysBabyFoodFeedingMother.Edit(r.GetCtx(), req)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "修改成功")
}

// Delete 删除
func (c *sysBabyFoodFeedingMother) Delete(r *ghttp.Request) {
	ids := r.GetInts("ids")
	err := service.SysBabyFoodFeedingMother.DeleteByIds(r.GetCtx(), ids)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "删除成功")
}
