// ==========================================================================
// GFast自动生成路由代码，只生成一次，按需修改,再次生成不会覆盖.
// 生成日期：2022-09-29 10:42:33
// 生成路径: gfast/app/system/router/sys_user_bind.go
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
            group.Group("/sysUserBind", func(group *ghttp.RouterGroup) {
                //gToken拦截器                
                api.GfToken.AuthMiddleware(group)                
                //context拦截器
                group.Middleware(middleware.Ctx, middleware.Auth)                
                group.GET("list", api.SysUserBind.List)
                group.GET("get", api.SysUserBind.Get)
                group.POST("add", api.SysUserBind.Add)
                group.PUT("edit", api.SysUserBind.Edit)
                group.DELETE("delete", api.SysUserBind.Delete)                
            })
        })
    })
}
