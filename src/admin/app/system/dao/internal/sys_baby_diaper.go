// ==========================================================================
// GFast自动生成dao internal操作代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-30 21:33:16
// 生成路径: gfast/app/system/dao/internal/sys_baby_diaper.go
// 生成人：gfast
// ==========================================================================


package internal
import (
    "context"
    "github.com/gogf/gf/database/gdb"
    "github.com/gogf/gf/frame/g"
    "gfast/app/system/model"
)
// SysBabyDiaperDao is the manager for logic model data accessing and custom defined data operations functions management.
type SysBabyDiaperDao struct {
    Table   string         // Table is the underlying table name of the DAO.
    Group   string         // Group is the database configuration group name of current DAO.
    Columns SysBabyDiaperColumns // Columns is the short type for Columns, which contains all the column names of Table for convenient usage.
}
// SysBabyDiaperColumns defines and stores column names for table sys_baby_diaper.
type SysBabyDiaperColumns struct {    
    Id  string  // ID    
    BabyId  string  // 宝宝    
    StartAt  string  // 更换时间    
    Type  string  // 类型    
    Weight  string  // 尿布重量    
    Status  string  // 便便状态    
    Colour  string  // 便便颜色    
    Remark  string  // 备注    
    CreatedBy  string  // 创建人    
    UpdatedBy  string  // 修改人    
    CreatedAt  string  // 创建时间    
    UpdatedAt  string  // 修改时间    
    DeletedAt  string  // 删除时间    
}
var sysBabyDiaperColumns = SysBabyDiaperColumns{    
    Id:  "id",    
    BabyId:  "baby_id",    
    StartAt:  "start_at",    
    Type:  "type",    
    Weight:  "weight",    
    Status:  "status",    
    Colour:  "colour",    
    Remark:  "remark",    
    CreatedBy:  "created_by",    
    UpdatedBy:  "updated_by",    
    CreatedAt:  "created_at",    
    UpdatedAt:  "updated_at",    
    DeletedAt:  "deleted_at",    
}
// NewSysBabyDiaperDao creates and returns a new DAO object for table data access.
func NewSysBabyDiaperDao() *SysBabyDiaperDao {
	return &SysBabyDiaperDao{
        Group:    "default",
        Table: "sys_baby_diaper",
        Columns:sysBabyDiaperColumns,
	}
}
// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysBabyDiaperDao) DB() gdb.DB {
	return g.DB(dao.Group)
}
// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysBabyDiaperDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(model.SysBabyDiaper{}).Safe().Ctx(ctx)
}
// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysBabyDiaperDao) Transaction(ctx context.Context, f func(ctx context.Context, tx *gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}