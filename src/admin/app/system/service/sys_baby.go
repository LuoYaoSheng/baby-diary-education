// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 15:43:07
// 生成路径: gfast/app/system/service/sys_baby.go
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

type sysBaby struct {
}

var SysBaby = new(sysBaby)

// GetList 获取列表
func (s *sysBaby) GetList(req *dao.SysBabySearchReq) (total, page int, list []*dao.SysBabyListRes, err error) {
	m := dao.SysBaby.Ctx(req.Ctx).WithAll()
	if req.Id != "" {
		m = m.Where(dao.SysBaby.Columns.Id+" = ?", gconv.Uint(req.Id))
	}
	if req.Nickname != "" {
		m = m.Where(dao.SysBaby.Columns.Nickname+" like ?", "%"+req.Nickname+"%")
	}
	if req.Sex != "" {
		m = m.Where(dao.SysBaby.Columns.Sex+" = ?", gconv.Int(req.Sex))
	}
	if req.Birthday != "" {
		m = m.Where(dao.SysBaby.Columns.Birthday+" = ?", gconv.Time(req.Birthday))
	}
	if req.CreatedBy != "" {
		m = m.Where(dao.SysBaby.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
	}
	if req.BeginTime != "" {
		m = m.Where(dao.SysBaby.Columns.CreatedAt+" >=", req.BeginTime)
	}
	if req.EndTime != "" {
		m = m.Where(dao.SysBaby.Columns.CreatedAt+" <", req.EndTime)
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
	var res []*model.SysBaby
	err = m.Fields(dao.SysBabyListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyListRes, len(res))
	for k, v := range res {
		list[k] = &dao.SysBabyListRes{
			Id:        v.Id,
			Nickname:  v.Nickname,
			Sex:       v.Sex,
			Avatar:    v.Avatar,
			Birthday:  v.Birthday,
			CreatedBy: v.CreatedBy,
			CreatedAt: v.CreatedAt,
		}
	}
	return
}

// GetInfoById 通过id获取
func (s *sysBaby) GetInfoById(ctx context.Context, id uint) (info *dao.SysBabyInfoRes, err error) {
	if id == 0 {
		err = gerror.New("参数错误")
		return
	}
	var data *model.SysBaby
	err = dao.SysBaby.Ctx(ctx).WithAll().Where(dao.SysBaby.Columns.Id, id).Scan(&data)
	if err != nil {
		g.Log().Error(err)
	}
	if data == nil || err != nil {
		err = gerror.New("获取信息失败")
		return
	}
	info = &dao.SysBabyInfoRes{
		Id:        data.Id,
		Nickname:  data.Nickname,
		Sex:       data.Sex,
		Avatar:    data.Avatar,
		Birthday:  data.Birthday,
		CreatedBy: data.CreatedBy,
		UpdatedBy: data.UpdatedBy,
		CreatedAt: data.CreatedAt,
		UpdatedAt: data.UpdatedAt,
		DeletedAt: data.DeletedAt,
	}
	return
}

// Add 添加
func (s *sysBaby) Add(ctx context.Context, req *dao.SysBabyAddReq) (err error) {
	_, err = dao.SysBaby.Ctx(ctx).Insert(req)
	return
}

// Edit 修改
func (s *sysBaby) Edit(ctx context.Context, req *dao.SysBabyEditReq) error {
	_, err := dao.SysBaby.Ctx(ctx).FieldsEx(dao.SysBaby.Columns.Id, dao.SysBaby.Columns.CreatedAt).Where(dao.SysBaby.Columns.Id, req.Id).
		Update(req)
	return err
}

// DeleteByIds 删除
func (s *sysBaby) DeleteByIds(ctx context.Context, ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}
	_, err = dao.SysBaby.Ctx(ctx).Delete(dao.SysBaby.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
