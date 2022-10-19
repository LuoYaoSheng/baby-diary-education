// ==========================================================================
// GFast自动生成dao internal操作代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-29 10:42:33
// 生成路径: gfast/app/system/dao/internal/sys_user_bind.go
// 生成人：gfast
// ==========================================================================


package internal
import (
    "context"
    "github.com/gogf/gf/database/gdb"
    "github.com/gogf/gf/frame/g"
    "gfast/app/system/model"
)
// SysUserBindDao is the manager for logic model data accessing and custom defined data operations functions management.
type SysUserBindDao struct {
    Table   string         // Table is the underlying table name of the DAO.
    Group   string         // Group is the database configuration group name of current DAO.
    Columns SysUserBindColumns // Columns is the short type for Columns, which contains all the column names of Table for convenient usage.
}
// SysUserBindColumns defines and stores column names for table sys_user_bind.
type SysUserBindColumns struct {    
    Id  string  // ID    
    Type  string  // 来源    
    Openid  string  // openid    
    UserId  string  // 用户id    
    Nickname  string  // 昵称    
    Avatarurl  string  // 头像    
    Unionid  string  // unionid    
    CreatedBy  string  // 创建人    
    UpdatedBy  string  // 修改人    
    CreatedAt  string  // 创建时间    
    UpdatedAt  string  // 修改时间    
    DeletedAt  string  // 删除时间    
}
var sysUserBindColumns = SysUserBindColumns{    
    Id:  "id",    
    Type:  "type",    
    Openid:  "openid",    
    UserId:  "user_id",    
    Nickname:  "nickname",    
    Avatarurl:  "avatarurl",    
    Unionid:  "unionid",    
    CreatedBy:  "created_by",    
    UpdatedBy:  "updated_by",    
    CreatedAt:  "created_at",    
    UpdatedAt:  "updated_at",    
    DeletedAt:  "deleted_at",    
}
// NewSysUserBindDao creates and returns a new DAO object for table data access.
func NewSysUserBindDao() *SysUserBindDao {
	return &SysUserBindDao{
        Group:    "default",
        Table: "sys_user_bind",
        Columns:sysUserBindColumns,
	}
}
// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysUserBindDao) DB() gdb.DB {
	return g.DB(dao.Group)
}
// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysUserBindDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(model.SysUserBind{}).Safe().Ctx(ctx)
}
// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysUserBindDao) Transaction(ctx context.Context, f func(ctx context.Context, tx *gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}