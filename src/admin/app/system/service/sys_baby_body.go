// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:33:19
// 生成路径: gfast/app/system/service/sys_baby_body.go
// 生成人：gfast
// ==========================================================================


package service
import (
    "context"
	comModel "gfast/app/common/model"
	"gfast/app/system/dao"
	"gfast/app/system/model"	
	"github.com/gogf/gf/util/gconv"	
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
)
type sysBabyBody struct {
}
var SysBabyBody = new(sysBabyBody)
// GetList 获取列表
func (s *sysBabyBody) GetList(req *dao.SysBabyBodySearchReq) (total, page int, list []*dao.SysBabyBodyListRes, err error) {
    m := dao.SysBabyBody.Ctx(req.Ctx).WithAll()      
    if req.Id != "" {
        m = m.Where(dao.SysBabyBody.Columns.Id+" = ?", gconv.Uint(req.Id))
    }      
    if req.BabyId != "" {
        m = m.Where(dao.SysBabyBody.Columns.BabyId+" = ?", gconv.Int64(req.BabyId))
    }      
    if req.Height != "" {
        m = m.Where(dao.SysBabyBody.Columns.Height+" = ?", gconv.Int(req.Height))
    }      
    if req.Weight != "" {
        m = m.Where(dao.SysBabyBody.Columns.Weight+" = ?", gconv.Int(req.Weight))
    }      
    if req.Hc != "" {
        m = m.Where(dao.SysBabyBody.Columns.Hc+" = ?", gconv.Int(req.Hc))
    }      
    if req.CreatedBy != "" {
        m = m.Where(dao.SysBabyBody.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
    }        
    if req.BeginTime != "" {
        m = m.Where(dao.SysBabyBody.Columns.CreatedAt+" >=", req.BeginTime)
    }
    if req.EndTime != "" {
        m = m.Where(dao.SysBabyBody.Columns.CreatedAt+" <", req.EndTime)
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
    order:= "id asc"
    if req.OrderBy!=""{
        order = req.OrderBy
    }
    var res []*model.SysBabyBody
    err = m.Fields(dao.SysBabyBodyListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)    
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysBabyBodyListRes,len(res))
    for k,v:=range res{        
        list[k] = &dao.SysBabyBodyListRes{                
            Id : v.Id,                
            BabyId : v.BabyId,                
            Height : v.Height,                
            Weight : v.Weight,                
            Hc : v.Hc,                
            Remark : v.Remark,                
            CreatedBy : v.CreatedBy,                
            CreatedAt : v.CreatedAt,            
            LinkedSysBabyBodySysBaby : v.LinkedSysBabyBodySysBaby,            
        }
    }
    return
}
// GetInfoById 通过id获取
func (s *sysBabyBody) GetInfoById(ctx context.Context,id uint) (info *dao.SysBabyBodyInfoRes, err error) {
    if id == 0 {
        err = gerror.New("参数错误")
        return
    }
    var data *model.SysBabyBody
    err = dao.SysBabyBody.Ctx(ctx).WithAll().Where(dao.SysBabyBody.Columns.Id, id).Scan(&data)
    if err != nil {
        g.Log().Error(err)
    }
    if data == nil || err != nil {
        err = gerror.New("获取信息失败")
        return
    }    
    info = &dao.SysBabyBodyInfoRes{        
        Id : data.Id,        
        BabyId : data.BabyId,        
        Height : data.Height,        
        Weight : data.Weight,        
        Hc : data.Hc,        
        Remark : data.Remark,        
        CreatedBy : data.CreatedBy,        
        UpdatedBy : data.UpdatedBy,        
        CreatedAt : data.CreatedAt,        
        UpdatedAt : data.UpdatedAt,        
        DeletedAt : data.DeletedAt,        
        LinkedSysBabyBodySysBaby : data.LinkedSysBabyBodySysBaby,        
    }
    return
}
// Add 添加
func (s *sysBabyBody) Add(ctx context.Context,req *dao.SysBabyBodyAddReq) (err error) {
	_, err = dao.SysBabyBody.Ctx(ctx).Insert(req)
	return
}
// Edit 修改
func (s *sysBabyBody) Edit(ctx context.Context,req *dao.SysBabyBodyEditReq) error {    
	_, err := dao.SysBabyBody.Ctx(ctx).FieldsEx(dao.SysBabyBody.Columns.Id,dao.SysBabyBody.Columns.CreatedAt).Where(dao.SysBabyBody.Columns.Id, req.Id).
		Update(req)
	return err
}
// DeleteByIds 删除
func (s *sysBabyBody) DeleteByIds(ctx context.Context,ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}	
	_, err = dao.SysBabyBody.Ctx(ctx).Delete(dao.SysBabyBody.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
