// ==========================================================================
// GFast自动生成dao internal操作代码，无需手动修改，重新生成会自动覆盖.
// 生成日期：2022-10-03 10:41:52
// 生成路径: gfast/app/system/dao/internal/sys_baby_food_breast_pump.go
// 生成人：gfast
// ==========================================================================


package internal
import (
    "context"
    "github.com/gogf/gf/database/gdb"
    "github.com/gogf/gf/frame/g"
    "gfast/app/system/model"
)
// SysBabyFoodBreastPumpDao is the manager for logic model data accessing and custom defined data operations functions management.
type SysBabyFoodBreastPumpDao struct {
    Table   string         // Table is the underlying table name of the DAO.
    Group   string         // Group is the database configuration group name of current DAO.
    Columns SysBabyFoodBreastPumpColumns // Columns is the short type for Columns, which contains all the column names of Table for convenient usage.
}
// SysBabyFoodBreastPumpColumns defines and stores column names for table sys_baby_food_breast_pump.
type SysBabyFoodBreastPumpColumns struct {    
    Id  string  // ID    
    BabyId  string  // 宝宝    
    StartAt  string  // 开始时间    
    AppetiteLeft  string  // 左侧量    
    AppetiteRight  string  // 右侧量    
    DurationLeft  string  // 左侧时长    
    DurationRight  string  // 右侧时长    
    DurationType  string  // 吸奶方式    
    Remark  string  // 备注    
    CreatedBy  string  // 创建人    
    UpdatedBy  string  // 修改人    
    CreatedAt  string  // 创建时间    
    UpdatedAt  string  // 修改时间    
    DeletedAt  string  // 删除时间    
}
var sysBabyFoodBreastPumpColumns = SysBabyFoodBreastPumpColumns{    
    Id:  "id",    
    BabyId:  "baby_id",    
    StartAt:  "start_at",    
    AppetiteLeft:  "appetite_left",    
    AppetiteRight:  "appetite_right",    
    DurationLeft:  "duration_left",    
    DurationRight:  "duration_right",    
    DurationType:  "duration_type",    
    Remark:  "remark",    
    CreatedBy:  "created_by",    
    UpdatedBy:  "updated_by",    
    CreatedAt:  "created_at",    
    UpdatedAt:  "updated_at",    
    DeletedAt:  "deleted_at",    
}
// NewSysBabyFoodBreastPumpDao creates and returns a new DAO object for table data access.
func NewSysBabyFoodBreastPumpDao() *SysBabyFoodBreastPumpDao {
	return &SysBabyFoodBreastPumpDao{
        Group:    "default",
        Table: "sys_baby_food_breast_pump",
        Columns:sysBabyFoodBreastPumpColumns,
	}
}
// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysBabyFoodBreastPumpDao) DB() gdb.DB {
	return g.DB(dao.Group)
}
// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysBabyFoodBreastPumpDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(model.SysBabyFoodBreastPump{}).Safe().Ctx(ctx)
}
// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysBabyFoodBreastPumpDao) Transaction(ctx context.Context, f func(ctx context.Context, tx *gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}