package service

import (
	"context"
	comModel "gfast/app/common/model"
	dao2 "gfast/app/system/dao"
	"gfast/app/system/model"
	"gfast/app/v1/dao"
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/util/gconv"
)

type sysBaby struct {
}

var SysBaby = new(sysBaby)

// Add 添加
func (s *sysBaby) Add(ctx context.Context, req *dao.SysBabyAddReq) (lastInsertId int64, err error) {
	lastInsertId, err = dao2.SysBaby.Ctx(ctx).InsertAndGetId(req)
	return
}

// GetList 获取列表
func (s *sysBaby) GetList(req *dao.SysBabySearchReq) (total, page int, list []*dao2.SysBabyListRes, err error) {
	m := dao2.SysUserBaby.Ctx(req.Ctx).WithAll()
	if req.UserId != "" {
		m = m.Where(dao2.SysUserBaby.Columns.UserId+" = ?", gconv.Int64(req.UserId))
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
	err = m.Fields(dao2.SysUserBabyListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}

	var ids []int64
	for _, re := range res {
		ids = append(ids, re.BabyId)
	}

	var babys []*model.SysBaby
	err = dao2.SysBaby.Ctx(req.Ctx).WhereIn(dao2.SysBaby.Columns.Id, ids).Scan(&babys)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}

	list = make([]*dao2.SysBabyListRes, len(res))
	for k, v := range babys {
		list[k] = &dao2.SysBabyListRes{
			Id:        v.Id,
			Nickname:  v.Nickname,
			Birthday:  v.Birthday,
			Sex:       v.Sex,
			Avatar:    v.Avatar,
			CreatedBy: v.CreatedBy,
			CreatedAt: v.CreatedAt,
		}
	}
	return
}

// DeleteByIds 删除
func (s *sysBaby) DeleteByIds(ctx context.Context, ids []int, user_id int64) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}

	var userBabys []*model.SysUserBaby
	err = dao2.SysUserBaby.Ctx(ctx).Where(dao2.SysUserBaby.Columns.UserId, user_id).WhereIn(dao2.SysUserBaby.Columns.BabyId, ids).Scan(&userBabys)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}

	var id2s []int
	for _, ub := range userBabys {
		id2s = append(id2s, int(ub.Id))
	}

	_, err = dao2.SysUserBaby.Ctx(ctx).Delete(dao2.SysUserBaby.Columns.Id+" in (?)", id2s)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}

	return
}
