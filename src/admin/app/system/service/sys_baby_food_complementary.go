// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:44:50
// 生成路径: gfast/app/system/service/sys_baby_food_complementary.go
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

type sysBabyFoodComplementary struct {
}

var SysBabyFoodComplementary = new(sysBabyFoodComplementary)

// GetList 获取列表
func (s *sysBabyFoodComplementary) GetList(req *dao.SysBabyFoodComplementarySearchReq) (total, page int, list []*dao.SysBabyFoodComplementaryListRes, err error) {
	m := dao.SysBabyFoodComplementary.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.Id+" = ?", gconv.Uint(req.Id))
	}
	if req.BabyId != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
	}
	if req.StartAt != "" && len(req.StartAt) > 8 {
		//m = m.Where(dao.SysBabyFoodComplementary.Columns.StartAt+" = ?", gconv.Time(req.StartAt))
		startAt := req.StartAt[:10] + " 00:00:00"
		endAt := req.StartAt[:10] + " 23:59:59"

		m = m.Where(dao.SysBabyFoodComplementary.Columns.StartAt+" >=", startAt)
		m = m.Where(dao.SysBabyFoodComplementary.Columns.StartAt+" <=", endAt)
	}
	if req.Type != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.Type+" = ?", gconv.Int64(req.Type))
	}
	if req.Character != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.Character+" = ?", gconv.Int(req.Character))
	}
	if req.Appetite != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.Appetite+" = ?", gconv.Int(req.Appetite))
	}
	if req.Duration != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.Duration+" = ?", gconv.Int(req.Duration))
	}
	if req.CreatedBy != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
	}
	if req.BeginTime != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.CreatedAt+" >=", req.BeginTime)
	}
	if req.EndTime != "" {
		m = m.Where(dao.SysBabyFoodComplementary.Columns.CreatedAt+" <", req.EndTime)
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
	var res []*model.SysBabyFoodComplementary
	err = m.Fields(dao.SysBabyFoodComplementaryListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyFoodComplementaryListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysBabyFoodComplementaryListRes{
			Id:                                    v.Id,
			BabyId:                                v.BabyId,
			StartAt:                               v.StartAt,
			Type:                                  v.Type,
			Character:                             v.Character,
			Appetite:                              v.Appetite,
			Duration:                              v.Duration,
			Remark:                                v.Remark,
			CreatedBy:                             v.CreatedBy,
			CreatedAt:                             v.CreatedAt,
			LinkedSysBabyFoodComplementarySysBaby: v.LinkedSysBabyFoodComplementarySysBaby,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysBabyFoodComplementary) GetInfoById(ctx context.Context, id uint) (info *dao.SysBabyFoodComplementaryInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysBabyFoodComplementary
	err = dao.SysBabyFoodComplementary.Ctx(ctx).WithAll().Where(dao.SysBabyFoodComplementary.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysBabyFoodComplementaryInfoRes{
		Id:                                    data.Id,
		BabyId:                                data.BabyId,
		StartAt:                               data.StartAt,
		Type:                                  data.Type,
		Character:                             data.Character,
		Appetite:                              data.Appetite,
		Duration:                              data.Duration,
		Remark:                                data.Remark,
		CreatedBy:                             data.CreatedBy,
		UpdatedBy:                             data.UpdatedBy,
		CreatedAt:                             data.CreatedAt,
		UpdatedAt:                             data.UpdatedAt,
		DeletedAt:                             data.DeletedAt,
		LinkedSysBabyFoodComplementarySysBaby: data.LinkedSysBabyFoodComplementarySysBaby,
	}
	return
}

// Add 添加
func (s *sysBabyFoodComplementary) Add(ctx context.Context, req *dao.SysBabyFoodComplementaryAddReq) (err error) {
	_, err = dao.SysBabyFoodComplementary.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysBabyFoodComplementary) Edit(ctx context.Context, req *dao.SysBabyFoodComplementaryEditReq) error {
	_, err := dao.SysBabyFoodComplementary.Ctx(ctx).FieldsEx(dao.SysBabyFoodComplementary.Columns.Id, dao.SysBabyFoodComplementary.Columns.CreatedAt).Where(dao.SysBabyFoodComplementary.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysBabyFoodComplementary) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysBabyFoodComplementary.Ctx(ctx).Delete(dao.SysBabyFoodComplementary.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
