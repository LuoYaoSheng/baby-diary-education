// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-10-03 10:41:52
// 生成路径: gfast/app/system/service/sys_baby_food_breast_pump.go
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

type sysBabyFoodBreastPump struct {
}

var SysBabyFoodBreastPump = new(sysBabyFoodBreastPump)

// GetList 获取列表
func (s *sysBabyFoodBreastPump) GetList(req *dao.SysBabyFoodBreastPumpSearchReq) (total, page int, list []*dao.SysBabyFoodBreastPumpListRes, err error) {
	m := dao.SysBabyFoodBreastPump.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.Id+" = ?", gconv.Uint(req.Id))
	}
	if req.BabyId != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
	}
	if req.StartAt != "" && len(req.StartAt) > 8 {
		//m = m.Where(dao.SysBabyFoodBreastPump.Columns.StartAt+" = ?", gconv.Time(req.StartAt))
		startAt := req.StartAt[:10] + " 00:00:00"
		endAt := req.StartAt[:10] + " 23:59:59"

		m = m.Where(dao.SysBabyFoodBreastPump.Columns.StartAt+" >=", startAt)
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.StartAt+" <=", endAt)
	}
	if req.AppetiteLeft != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.AppetiteLeft+" = ?", gconv.Int(req.AppetiteLeft))
	}
	if req.AppetiteRight != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.AppetiteRight+" = ?", gconv.Int(req.AppetiteRight))
	}
	if req.DurationLeft != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.DurationLeft+" = ?", gconv.Int(req.DurationLeft))
	}
	if req.DurationRight != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.DurationRight+" = ?", gconv.Int(req.DurationRight))
	}
	if req.DurationType != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.DurationType+" = ?", gconv.Int(req.DurationType))
	}
	if req.CreatedBy != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
	}
	if req.BeginTime != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.CreatedAt+" >=", req.BeginTime)
	}
	if req.EndTime != "" {
		m = m.Where(dao.SysBabyFoodBreastPump.Columns.CreatedAt+" <", req.EndTime)
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
	var res []*model.SysBabyFoodBreastPump
	err = m.Fields(dao.SysBabyFoodBreastPumpListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyFoodBreastPumpListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysBabyFoodBreastPumpListRes{
			Id:                                 v.Id,
			BabyId:                             v.BabyId,
			StartAt:                            v.StartAt,
			AppetiteLeft:                       v.AppetiteLeft,
			AppetiteRight:                      v.AppetiteRight,
			DurationLeft:                       v.DurationLeft,
			DurationRight:                      v.DurationRight,
			DurationType:                       v.DurationType,
			Remark:                             v.Remark,
			CreatedBy:                          v.CreatedBy,
			CreatedAt:                          v.CreatedAt,
			LinkedSysBabyFoodBreastPumpSysBaby: v.LinkedSysBabyFoodBreastPumpSysBaby,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysBabyFoodBreastPump) GetInfoById(ctx context.Context, id uint) (info *dao.SysBabyFoodBreastPumpInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysBabyFoodBreastPump
	err = dao.SysBabyFoodBreastPump.Ctx(ctx).WithAll().Where(dao.SysBabyFoodBreastPump.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysBabyFoodBreastPumpInfoRes{
		Id:                                 data.Id,
		BabyId:                             data.BabyId,
		StartAt:                            data.StartAt,
		AppetiteLeft:                       data.AppetiteLeft,
		AppetiteRight:                      data.AppetiteRight,
		DurationLeft:                       data.DurationLeft,
		DurationRight:                      data.DurationRight,
		DurationType:                       data.DurationType,
		Remark:                             data.Remark,
		CreatedBy:                          data.CreatedBy,
		UpdatedBy:                          data.UpdatedBy,
		CreatedAt:                          data.CreatedAt,
		UpdatedAt:                          data.UpdatedAt,
		DeletedAt:                          data.DeletedAt,
		LinkedSysBabyFoodBreastPumpSysBaby: data.LinkedSysBabyFoodBreastPumpSysBaby,
	}
	return
}

// Add 添加
func (s *sysBabyFoodBreastPump) Add(ctx context.Context, req *dao.SysBabyFoodBreastPumpAddReq) (err error) {
	_, err = dao.SysBabyFoodBreastPump.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysBabyFoodBreastPump) Edit(ctx context.Context, req *dao.SysBabyFoodBreastPumpEditReq) error {
	_, err := dao.SysBabyFoodBreastPump.Ctx(ctx).FieldsEx(dao.SysBabyFoodBreastPump.Columns.Id, dao.SysBabyFoodBreastPump.Columns.CreatedAt).Where(dao.SysBabyFoodBreastPump.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysBabyFoodBreastPump) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysBabyFoodBreastPump.Ctx(ctx).Delete(dao.SysBabyFoodBreastPump.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
