// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-29 23:19:24
// 生成路径: gfast/app/system/service/sys_user_baby.go
// 生成人：gfast
// ==========================================================================

package service

import (
	"context"
	comModel "gfast/app/common/model"
	"gfast/app/system/dao"
	"gfast/app/system/model"
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/util/gconv"
)

type sysUserBaby struct {
}

var SysUserBaby = new(sysUserBaby)

// GetList 获取列表
func (s *sysUserBaby) GetList(req *dao.SysUserBabySearchReq) (total, page int, list []*dao.SysUserBabyListRes, err error) {
	m := dao.SysUserBaby.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysUserBaby.Columns.Id+" = ?", gconv.Uint64(req.Id))
	}
	if req.UserId != "" {
		m = m.Where(dao.SysUserBaby.Columns.UserId+" = ?", gconv.Int64(req.UserId))
	}
	if req.BabyId != "" {
		m = m.Where(dao.SysUserBaby.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
	}
	total, err = m.Count()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取总行数失败")
		return
	}
	if req.PageNum == 0 {
		req.PageNum = 1
	}
	page = req.PageNum
	if req.PageSize == 0 {
		req.PageSize = comModel.PageSize
	}
	order := "id asc"
	if req.OrderBy != "" {
		order = req.OrderBy
	}
	var res []*model.SysUserBaby
	err = m.Fields(dao.SysUserBabyListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysUserBabyListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysUserBabyListRes{
			Id:     v.Id,
			UserId: v.UserId,
			BabyId: v.BabyId,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysUserBaby) GetInfoById(ctx context.Context, id uint64) (info *dao.SysUserBabyInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysUserBaby
	err = dao.SysUserBaby.Ctx(ctx).WithAll().Where(dao.SysUserBaby.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysUserBabyInfoRes{
		Id:     data.Id,
		UserId: data.UserId,
		BabyId: data.BabyId,
	}
	return
}

// Add 添加
func (s *sysUserBaby) Add(ctx context.Context, req *dao.SysUserBabyAddReq) (err error) {
	_, err = dao.SysUserBaby.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysUserBaby) Edit(ctx context.Context, req *dao.SysUserBabyEditReq) error {
	_, err := dao.SysUserBaby.Ctx(ctx).FieldsEx(dao.SysUserBaby.Columns.Id).Where(dao.SysUserBaby.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysUserBaby) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysUserBaby.Ctx(ctx).Delete(dao.SysUserBaby.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
