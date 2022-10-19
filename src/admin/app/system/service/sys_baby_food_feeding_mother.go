// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-10-03 21:33:32
// 生成路径: gfast/app/system/service/sys_baby_food_feeding_mother.go
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

type sysBabyFoodFeedingMother struct {
}

var SysBabyFoodFeedingMother = new(sysBabyFoodFeedingMother)

// GetList 获取列表
func (s *sysBabyFoodFeedingMother) GetList(req *dao.SysBabyFoodFeedingMotherSearchReq) (total, page int, list []*dao.SysBabyFoodFeedingMotherListRes, err error) {
	m := dao.SysBabyFoodFeedingMother.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.Id+" = ?", gconv.Uint(req.Id))
	}
	if req.BabyId != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
	}
	if req.StartAt != "" && len(req.StartAt) > 8 {
		//m = m.Where(dao.SysBabyFoodFeedingMother.Columns.StartAt+" = ?", gconv.Time(req.StartAt))

		startAt := req.StartAt[:10] + " 00:00:00"
		endAt := req.StartAt[:10] + " 23:59:59"

		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.StartAt+" >=", startAt)
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.StartAt+" <=", endAt)
	}
	if req.DurationLeft != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.DurationLeft+" = ?", gconv.Int(req.DurationLeft))
	}
	if req.DurationRight != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.DurationRight+" = ?", gconv.Int(req.DurationRight))
	}
	if req.CreatedBy != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
	}
	if req.BeginTime != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.CreatedAt+" >=", req.BeginTime)
	}
	if req.EndTime != "" {
		m = m.Where(dao.SysBabyFoodFeedingMother.Columns.CreatedAt+" <", req.EndTime)
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
	var res []*model.SysBabyFoodFeedingMother
	err = m.Fields(dao.SysBabyFoodFeedingMotherListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyFoodFeedingMotherListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysBabyFoodFeedingMotherListRes{
			Id:                                    v.Id,
			BabyId:                                v.BabyId,
			StartAt:                               v.StartAt,
			DurationLeft:                          v.DurationLeft,
			DurationRight:                         v.DurationRight,
			Remark:                                v.Remark,
			CreatedBy:                             v.CreatedBy,
			CreatedAt:                             v.CreatedAt,
			LinkedSysBabyFoodFeedingMotherSysBaby: v.LinkedSysBabyFoodFeedingMotherSysBaby,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysBabyFoodFeedingMother) GetInfoById(ctx context.Context, id uint) (info *dao.SysBabyFoodFeedingMotherInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysBabyFoodFeedingMother
	err = dao.SysBabyFoodFeedingMother.Ctx(ctx).WithAll().Where(dao.SysBabyFoodFeedingMother.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysBabyFoodFeedingMotherInfoRes{
		Id:                                    data.Id,
		BabyId:                                data.BabyId,
		StartAt:                               data.StartAt,
		DurationLeft:                          data.DurationLeft,
		DurationRight:                         data.DurationRight,
		Remark:                                data.Remark,
		CreatedBy:                             data.CreatedBy,
		UpdatedBy:                             data.UpdatedBy,
		CreatedAt:                             data.CreatedAt,
		UpdatedAt:                             data.UpdatedAt,
		DeletedAt:                             data.DeletedAt,
		LinkedSysBabyFoodFeedingMotherSysBaby: data.LinkedSysBabyFoodFeedingMotherSysBaby,
	}
	return
}

// Add 添加
func (s *sysBabyFoodFeedingMother) Add(ctx context.Context, req *dao.SysBabyFoodFeedingMotherAddReq) (err error) {
	_, err = dao.SysBabyFoodFeedingMother.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysBabyFoodFeedingMother) Edit(ctx context.Context, req *dao.SysBabyFoodFeedingMotherEditReq) error {
	_, err := dao.SysBabyFoodFeedingMother.Ctx(ctx).FieldsEx(dao.SysBabyFoodFeedingMother.Columns.Id, dao.SysBabyFoodFeedingMother.Columns.CreatedAt).Where(dao.SysBabyFoodFeedingMother.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysBabyFoodFeedingMother) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysBabyFoodFeedingMother.Ctx(ctx).Delete(dao.SysBabyFoodFeedingMother.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
