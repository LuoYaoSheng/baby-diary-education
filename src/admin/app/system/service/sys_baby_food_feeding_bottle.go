// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:33:27
// 生成路径: gfast/app/system/service/sys_baby_food_feeding_bottle.go
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

type sysBabyFoodFeedingBottle struct {
}

var SysBabyFoodFeedingBottle = new(sysBabyFoodFeedingBottle)

// GetList 获取列表
func (s *sysBabyFoodFeedingBottle) GetList(req *dao.SysBabyFoodFeedingBottleSearchReq) (total, page int, list []*dao.SysBabyFoodFeedingBottleListRes, err error) {
	m := dao.SysBabyFoodFeedingBottle.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.Id+" = ?", gconv.Int(req.Id))
	}
	if req.BabyId != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
	}
	if req.StartAt != "" && len(req.StartAt) > 8 {
		//m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.StartAt+" = ?", gconv.Time(req.StartAt))
		startAt := req.StartAt[:10] + " 00:00:00"
		endAt := req.StartAt[:10] + " 23:59:59"

		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.StartAt+" >=", startAt)
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.StartAt+" <=", endAt)
	}
	if req.Appetite != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.Appetite+" = ?", gconv.Int(req.Appetite))
	}
	if req.Type != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.Type+" = ?", gconv.Int(req.Type))
	}
	if req.CreatedBy != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
	}
	if req.BeginTime != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.CreatedAt+" >=", req.BeginTime)
	}
	if req.EndTime != "" {
		m = m.Where(dao.SysBabyFoodFeedingBottle.Columns.CreatedAt+" <", req.EndTime)
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
	var res []*model.SysBabyFoodFeedingBottle
	err = m.Fields(dao.SysBabyFoodFeedingBottleListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyFoodFeedingBottleListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysBabyFoodFeedingBottleListRes{
			Id:                                    v.Id,
			BabyId:                                v.BabyId,
			StartAt:                               v.StartAt,
			Appetite:                              v.Appetite,
			Type:                                  v.Type,
			Remark:                                v.Remark,
			CreatedBy:                             v.CreatedBy,
			CreatedAt:                             v.CreatedAt,
			LinkedSysBabyFoodFeedingBottleSysBaby: v.LinkedSysBabyFoodFeedingBottleSysBaby,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysBabyFoodFeedingBottle) GetInfoById(ctx context.Context, id int) (info *dao.SysBabyFoodFeedingBottleInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysBabyFoodFeedingBottle
	err = dao.SysBabyFoodFeedingBottle.Ctx(ctx).WithAll().Where(dao.SysBabyFoodFeedingBottle.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysBabyFoodFeedingBottleInfoRes{
		Id:                                    data.Id,
		BabyId:                                data.BabyId,
		StartAt:                               data.StartAt,
		Appetite:                              data.Appetite,
		Type:                                  data.Type,
		Remark:                                data.Remark,
		CreatedBy:                             data.CreatedBy,
		UpdatedBy:                             data.UpdatedBy,
		CreatedAt:                             data.CreatedAt,
		UpdatedAt:                             data.UpdatedAt,
		DeletedAt:                             data.DeletedAt,
		LinkedSysBabyFoodFeedingBottleSysBaby: data.LinkedSysBabyFoodFeedingBottleSysBaby,
	}
	return
}

// Add 添加
func (s *sysBabyFoodFeedingBottle) Add(ctx context.Context, req *dao.SysBabyFoodFeedingBottleAddReq) (err error) {
	_, err = dao.SysBabyFoodFeedingBottle.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysBabyFoodFeedingBottle) Edit(ctx context.Context, req *dao.SysBabyFoodFeedingBottleEditReq) error {
	_, err := dao.SysBabyFoodFeedingBottle.Ctx(ctx).FieldsEx(dao.SysBabyFoodFeedingBottle.Columns.Id, dao.SysBabyFoodFeedingBottle.Columns.CreatedAt).Where(dao.SysBabyFoodFeedingBottle.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysBabyFoodFeedingBottle) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysBabyFoodFeedingBottle.Ctx(ctx).Delete(dao.SysBabyFoodFeedingBottle.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
