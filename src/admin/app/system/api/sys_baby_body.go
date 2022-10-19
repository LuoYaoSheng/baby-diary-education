// ==========================================================================
// GFast自动生成控制器相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:33:19
// 生成路径: gfast/app/system/api/sys_baby_body.go
// 生成人：gfast
// ==========================================================================


package api
import (    
    "gfast/app/system/dao"
    "gfast/app/system/service"
    "github.com/gogf/gf/frame/g"
    "github.com/gogf/gf/net/ghttp"
    "github.com/gogf/gf/util/gvalid"    
)
type sysBabyBody struct {    
    SystemBase    
}
var SysBabyBody = new(sysBabyBody)
// List 列表
func (c *sysBabyBody) List(r *ghttp.Request) {
	var req *dao.SysBabyBodySearchReq
	//获取参数
	if err := r.Parse(&req); err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}
	req.Ctx = r.GetCtx()
	total, page, list, err := service.SysBabyBody.GetList(req)
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
func (c *sysBabyBody) Add(r *ghttp.Request) {
    var req *dao.SysBabyBodyAddReq
    //获取参数
    err := r.Parse(&req)
    if err != nil {
       c.FailJsonExit(r, err.(gvalid.Error).FirstString())
    }    
    req.CreatedBy = c.GetCurrentUser(r.GetCtx()).GetUserId()    
    err = service.SysBabyBody.Add(r.GetCtx(),req)
    if err != nil {
        c.FailJsonExit(r, err.Error())
    }
    c.SusJsonExit(r, "添加成功")
}
// Get 获取
func (c *sysBabyBody) Get(r *ghttp.Request) {
	id := r.GetUint("id")
	info, err := service.SysBabyBody.GetInfoById(r.GetCtx(),id)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, info)
}
// Edit 修改
func (c *sysBabyBody) Edit(r *ghttp.Request) {
    var req *dao.SysBabyBodyEditReq
    //获取参数
    err := r.Parse(&req)
    if err != nil {
        c.FailJsonExit(r, err.(gvalid.Error).FirstString())
    }    
    req.UpdatedBy = c.GetCurrentUser(r.GetCtx()).GetUserId() //获取登陆用户id    
    err = service.SysBabyBody.Edit(r.GetCtx(),req)
    if err != nil {
        c.FailJsonExit(r, err.Error())
    }
    c.SusJsonExit(r, "修改成功")
}
// Delete 删除
func (c *sysBabyBody) Delete(r *ghttp.Request) {
	ids := r.GetInts("ids")
	err := service.SysBabyBody.DeleteByIds(r.GetCtx(),ids)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}
	c.SusJsonExit(r, "删除成功")
}
