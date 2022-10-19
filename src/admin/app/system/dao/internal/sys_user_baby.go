// ==========================================================================
// GFast自动生成dao internal操作代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-29 23:19:24
// 生成路径: gfast/app/system/dao/internal/sys_user_baby.go
// 生成人：gfast
// ==========================================================================


package internal
import (
    "context"
    "github.com/gogf/gf/database/gdb"
    "github.com/gogf/gf/frame/g"
    "gfast/app/system/model"
)
// SysUserBabyDao is the manager for logic model data accessing and custom defined data operations functions management.
type SysUserBabyDao struct {
    Table   string         // Table is the underlying table name of the DAO.
    Group   string         // Group is the database configuration group name of current DAO.
    Columns SysUserBabyColumns // Columns is the short type for Columns, which contains all the column names of Table for convenient usage.
}
// SysUserBabyColumns defines and stores column names for table sys_user_baby.
type SysUserBabyColumns struct {    
    Id  string  // ID    
    UserId  string  // 用户ID    
    BabyId  string  // 宝宝ID    
}
var sysUserBabyColumns = SysUserBabyColumns{    
    Id:  "id",    
    UserId:  "user_id",    
    BabyId:  "baby_id",    
}
// NewSysUserBabyDao creates and returns a new DAO object for table data access.
func NewSysUserBabyDao() *SysUserBabyDao {
	return &SysUserBabyDao{
        Group:    "default",
        Table: "sys_user_baby",
        Columns:sysUserBabyColumns,
	}
}
// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysUserBabyDao) DB() gdb.DB {
	return g.DB(dao.Group)
}
// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysUserBabyDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(model.SysUserBaby{}).Safe().Ctx(ctx)
}
// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysUserBabyDao) Transaction(ctx context.Context, f func(ctx context.Context, tx *gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}