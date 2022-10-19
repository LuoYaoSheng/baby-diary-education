// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:33:16
// 生成路径: gfast/app/system/service/sys_baby_diaper.go
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

type sysBabyDiaper struct {
}

var SysBabyDiaper = new(sysBabyDiaper)

// GetList 获取列表
func (s *sysBabyDiaper) GetList(req *dao.SysBabyDiaperSearchReq) (total, page int, list []*dao.SysBabyDiaperListRes, err error) {
	m := dao.SysBabyDiaper.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.Id+" = ?", gconv.Uint(req.Id))
	}
	if req.BabyId != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
	}
	if req.StartAt != "" && len(req.StartAt) > 8 {
		//m = m.Where(dao.SysBabyDiaper.Columns.StartAt+" = ?", gconv.Time(req.StartAt))
		startAt := req.StartAt[:10] + " 00:00:00"
		endAt := req.StartAt[:10] + " 23:59:59"

		m = m.Where(dao.SysBabyDiaper.Columns.StartAt+" >=", startAt)
		m = m.Where(dao.SysBabyDiaper.Columns.StartAt+" <=", endAt)
	}
	if req.Type != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.Type+" = ?", gconv.Int(req.Type))
	}
	if req.Weight != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.Weight+" = ?", gconv.Int(req.Weight))
	}
	if req.Status != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.Status+" = ?", gconv.Int(req.Status))
	}
	if req.Colour != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.Colour+" = ?", gconv.Int(req.Colour))
	}
	if req.CreatedBy != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
	}
	if req.BeginTime != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.CreatedAt+" >=", req.BeginTime)
	}
	if req.EndTime != "" {
		m = m.Where(dao.SysBabyDiaper.Columns.CreatedAt+" <", req.EndTime)
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
	var res []*model.SysBabyDiaper
	err = m.Fields(dao.SysBabyDiaperListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyDiaperListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysBabyDiaperListRes{
			Id:                         v.Id,
			BabyId:                     v.BabyId,
			StartAt:                    v.StartAt,
			Type:                       v.Type,
			Weight:                     v.Weight,
			Status:                     v.Status,
			Colour:                     v.Colour,
			Remark:                     v.Remark,
			CreatedBy:                  v.CreatedBy,
			CreatedAt:                  v.CreatedAt,
			LinkedSysBabyDiaperSysBaby: v.LinkedSysBabyDiaperSysBaby,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysBabyDiaper) GetInfoById(ctx context.Context, id uint) (info *dao.SysBabyDiaperInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysBabyDiaper
	err = dao.SysBabyDiaper.Ctx(ctx).WithAll().Where(dao.SysBabyDiaper.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysBabyDiaperInfoRes{
		Id:                         data.Id,
		BabyId:                     data.BabyId,
		StartAt:                    data.StartAt,
		Type:                       data.Type,
		Weight:                     data.Weight,
		Status:                     data.Status,
		Colour:                     data.Colour,
		Remark:                     data.Remark,
		CreatedBy:                  data.CreatedBy,
		UpdatedBy:                  data.UpdatedBy,
		CreatedAt:                  data.CreatedAt,
		UpdatedAt:                  data.UpdatedAt,
		DeletedAt:                  data.DeletedAt,
		LinkedSysBabyDiaperSysBaby: data.LinkedSysBabyDiaperSysBaby,
	}
	return
}

// Add 添加
func (s *sysBabyDiaper) Add(ctx context.Context, req *dao.SysBabyDiaperAddReq) (err error) {
	_, err = dao.SysBabyDiaper.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysBabyDiaper) Edit(ctx context.Context, req *dao.SysBabyDiaperEditReq) error {
	_, err := dao.SysBabyDiaper.Ctx(ctx).FieldsEx(dao.SysBabyDiaper.Columns.Id, dao.SysBabyDiaper.Columns.CreatedAt).Where(dao.SysBabyDiaper.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysBabyDiaper) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysBabyDiaper.Ctx(ctx).Delete(dao.SysBabyDiaper.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
