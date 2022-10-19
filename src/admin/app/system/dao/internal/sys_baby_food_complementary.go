// ==========================================================================
// GFast自动生成dao internal操作代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-09-30 21:44:50
// 生成路径: gfast/app/system/dao/internal/sys_baby_food_complementary.go
// 生成人：gfast
// ==========================================================================


package internal
import (
    "context"
    "github.com/gogf/gf/database/gdb"
    "github.com/gogf/gf/frame/g"
    "gfast/app/system/model"
)
// SysBabyFoodComplementaryDao is the manager for logic model data accessing and custom defined data operations functions management.
type SysBabyFoodComplementaryDao struct {
    Table   string         // Table is the underlying table name of the DAO.
    Group   string         // Group is the database configuration group name of current DAO.
    Columns SysBabyFoodComplementaryColumns // Columns is the short type for Columns, which contains all the column names of Table for convenient usage.
}
// SysBabyFoodComplementaryColumns defines and stores column names for table sys_baby_food_complementary.
type SysBabyFoodComplementaryColumns struct {    
    Id  string  // ID    
    BabyId  string  // 宝宝    
    StartAt  string  // 开始时间    
    Type  string  // 辅食类型    
    Character  string  // 性状    
    Appetite  string  // 食量    
    Duration  string  // 持续时间    
    Remark  string  // 备注    
    CreatedBy  string  // 创建人    
    UpdatedBy  string  // 修改人    
    CreatedAt  string  // 创建时间    
    UpdatedAt  string  // 修改时间    
    DeletedAt  string  // 删除时间    
}
var sysBabyFoodComplementaryColumns = SysBabyFoodComplementaryColumns{    
    Id:  "id",    
    BabyId:  "baby_id",    
    StartAt:  "start_at",    
    Type:  "type",    
    Character:  "character",    
    Appetite:  "appetite",    
    Duration:  "duration",    
    Remark:  "remark",    
    CreatedBy:  "created_by",    
    UpdatedBy:  "updated_by",    
    CreatedAt:  "created_at",    
    UpdatedAt:  "updated_at",    
    DeletedAt:  "deleted_at",    
}
// NewSysBabyFoodComplementaryDao creates and returns a new DAO object for table data access.
func NewSysBabyFoodComplementaryDao() *SysBabyFoodComplementaryDao {
	return &SysBabyFoodComplementaryDao{
        Group:    "default",
        Table: "sys_baby_food_complementary",
        Columns:sysBabyFoodComplementaryColumns,
	}
}
// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysBabyFoodComplementaryDao) DB() gdb.DB {
	return g.DB(dao.Group)
}
// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysBabyFoodComplementaryDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(model.SysBabyFoodComplementary{}).Safe().Ctx(ctx)
}
// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysBabyFoodComplementaryDao) Transaction(ctx context.Context, f func(ctx context.Context, tx *gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}