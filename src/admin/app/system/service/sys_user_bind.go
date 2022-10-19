// ==========================================================================
// GFast自动生成业务逻辑层相关代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-29 10:42:33
// 生成路径: gfast/app/system/service/sys_user_bind.go
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
type sysUserBind struct {
}
var SysUserBind = new(sysUserBind)
// GetList 获取列表
func (s *sysUserBind) GetList(req *dao.SysUserBindSearchReq) (total, page int, list []*dao.SysUserBindListRes, err error) {
    m := dao.SysUserBind.Ctx(req.Ctx).WithAll()      
    if req.Id != "" {
        m = m.Where(dao.SysUserBind.Columns.Id+" = ?", gconv.Uint(req.Id))
    }      
    if req.Type != "" {
        m = m.Where(dao.SysUserBind.Columns.Type+" = ?", gconv.Int(req.Type))
    }      
    if req.Openid != "" {
        m = m.Where(dao.SysUserBind.Columns.Openid+" = ?", req.Openid)
    }      
    if req.UserId != "" {
        m = m.Where(dao.SysUserBind.Columns.UserId+" = ?", gconv.Uint(req.UserId))
    }    
    if req.Nickname != "" {
        m = m.Where(dao.SysUserBind.Columns.Nickname+" like ?", "%"+req.Nickname+"%")
    }      
    if req.Unionid != "" {
        m = m.Where(dao.SysUserBind.Columns.Unionid+" = ?", req.Unionid)
    }      
    if req.CreatedBy != "" {
        m = m.Where(dao.SysUserBind.Columns.CreatedBy+" = ?", gconv.Uint64(req.CreatedBy))
    }        
    if req.BeginTime != "" {
        m = m.Where(dao.SysUserBind.Columns.CreatedAt+" >=", req.BeginTime)
    }
    if req.EndTime != "" {
        m = m.Where(dao.SysUserBind.Columns.CreatedAt+" <", req.EndTime)
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
    var res []*model.SysUserBind
    err = m.Fields(dao.SysUserBindListRes{}).Page(page, req.PageSize).Order(order).Scan(&res)    
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取数据失败")
	}
	list = make([]*dao.SysUserBindListRes,len(res))
    for k,v:=range res{        
        list[k] = &dao.SysUserBindListRes{                
            Id : v.Id,                
            Type : v.Type,                
            Openid : v.Openid,                
            UserId : v.UserId,                
            Nickname : v.Nickname,                
            Avatarurl : v.Avatarurl,                
            Unionid : v.Unionid,                
            CreatedBy : v.CreatedBy,                
            CreatedAt : v.CreatedAt,            
        }
    }
    return
}
// GetInfoById 通过id获取
func (s *sysUserBind) GetInfoById(ctx context.Context,id uint) (info *dao.SysUserBindInfoRes, err error) {
    if id == 0 {
        err = gerror.New("参数错误")
        return
    }
    var data *model.SysUserBind
    err = dao.SysUserBind.Ctx(ctx).WithAll().Where(dao.SysUserBind.Columns.Id, id).Scan(&data)
    if err != nil {
        g.Log().Error(err)
    }
    if data == nil || err != nil {
        err = gerror.New("获取信息失败")
        return
    }    
    info = &dao.SysUserBindInfoRes{        
        Id : data.Id,        
        Type : data.Type,        
        Openid : data.Openid,        
        UserId : data.UserId,        
        Nickname : data.Nickname,        
        Avatarurl : data.Avatarurl,        
        Unionid : data.Unionid,        
        CreatedBy : data.CreatedBy,        
        UpdatedBy : data.UpdatedBy,        
        CreatedAt : data.CreatedAt,        
        UpdatedAt : data.UpdatedAt,        
        DeletedAt : data.DeletedAt,        
    }
    return
}
// Add 添加
func (s *sysUserBind) Add(ctx context.Context,req *dao.SysUserBindAddReq) (err error) {
	_, err = dao.SysUserBind.Ctx(ctx).Insert(req)
	return
}
// Edit 修改
func (s *sysUserBind) Edit(ctx context.Context,req *dao.SysUserBindEditReq) error {    
	_, err := dao.SysUserBind.Ctx(ctx).FieldsEx(dao.SysUserBind.Columns.Id,dao.SysUserBind.Columns.CreatedAt).Where(dao.SysUserBind.Columns.Id, req.Id).
		Update(req)
	return err
}
// DeleteByIds 删除
func (s *sysUserBind) DeleteByIds(ctx context.Context,ids []int) (err error) {
	if len(ids) == 0 {
		err = gerror.New("参数错误")
		return
	}	
	_, err = dao.SysUserBind.Ctx(ctx).Delete(dao.SysUserBind.Columns.Id+" in (?)", ids)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("删除失败")
	}
	return
}
