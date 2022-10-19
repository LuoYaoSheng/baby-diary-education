// ==========================================================================
// GFast自动生成dao internal操作代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-30 21:33:19
// 生成路径: gfast/app/system/dao/internal/sys_baby_body.go
// 生成人：gfast
// ==========================================================================


package internal
import (
    "context"
    "github.com/gogf/gf/database/gdb"
    "github.com/gogf/gf/frame/g"
    "gfast/app/system/model"
)
// SysBabyBodyDao is the manager for logic model data accessing and custom defined data operations functions management.
type SysBabyBodyDao struct {
    Table   string         // Table is the underlying table name of the DAO.
    Group   string         // Group is the database configuration group name of current DAO.
    Columns SysBabyBodyColumns // Columns is the short type for Columns, which contains all the column names of Table for convenient usage.
}
// SysBabyBodyColumns defines and stores column names for table sys_baby_body.
type SysBabyBodyColumns struct {    
    Id  string  // ID    
    BabyId  string  // 宝宝    
    Height  string  // 身高    
    Weight  string  // 体重    
    Hc  string  // 头围    
    Remark  string  // 备注    
    CreatedBy  string  // 创建人    
    UpdatedBy  string  // 修改人    
    CreatedAt  string  // 创建时间    
    UpdatedAt  string  // 修改时间    
    DeletedAt  string  // 删除时间    
}
var sysBabyBodyColumns = SysBabyBodyColumns{    
    Id:  "id",    
    BabyId:  "baby_id",    
    Height:  "height",    
    Weight:  "weight",    
    Hc:  "hc",    
    Remark:  "remark",    
    CreatedBy:  "created_by",    
    UpdatedBy:  "updated_by",    
    CreatedAt:  "created_at",    
    UpdatedAt:  "updated_at",    
    DeletedAt:  "deleted_at",    
}
// NewSysBabyBodyDao creates and returns a new DAO object for table data access.
func NewSysBabyBodyDao() *SysBabyBodyDao {
	return &SysBabyBodyDao{
        Group:    "default",
        Table: "sys_baby_body",
        Columns:sysBabyBodyColumns,
	}
}
// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysBabyBodyDao) DB() gdb.DB {
	return g.DB(dao.Group)
}
// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysBabyBodyDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(model.SysBabyBody{}).Safe().Ctx(ctx)
}
// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysBabyBodyDao) Transaction(ctx context.Context, f func(ctx context.Context, tx *gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}