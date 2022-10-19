// ==========================================================================
// GFast自动生成路由代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-30 21:44:50
// 生成路径: gfast/app/system/router/sys_baby_food_complementary.go
// 生成人：gfast
// ==========================================================================


package router
import (
    _ "gfast/app/common/tools"
    "gfast/app/system/api"
    "gfast/middleware"
    "github.com/gogf/gf/frame/g"
    "github.com/gogf/gf/net/ghttp"    
)
//加载路由
func init() {
    s := g.Server()
    s.Group("/", func(group *ghttp.RouterGroup) {
        group.Group("/system", func(group *ghttp.RouterGroup) {
            group.Group("/sysBabyFoodComplementary", func(group *ghttp.RouterGroup) {
                //gToken拦截器                
                api.GfToken.AuthMiddleware(group)                
                //context拦截器
                group.Middleware(middleware.Ctx, middleware.Auth)                
                group.GET("list", api.SysBabyFoodComplementary.List)
                group.GET("get", api.SysBabyFoodComplementary.Get)
                group.POST("add", api.SysBabyFoodComplementary.Add)
                group.PUT("edit", api.SysBabyFoodComplementary.Edit)
                group.DELETE("delete", api.SysBabyFoodComplementary.Delete)                
            })
        })
    })
}
