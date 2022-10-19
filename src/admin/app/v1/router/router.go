package router

import (
	"gfast/app/v1/api"
	"gfast/middleware"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

func init() {
	s := g.Server()
	s.Group("/", func(group *ghttp.RouterGroup) {

		group.Group("/v1", func(group *ghttp.RouterGroup) {
			group.POST("wx/login", api.Wx.Login)
			group.POST("wx/test", api.Wx.Test)
		})

		group.Group("/v1/upload", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.POST("/upImg", api.Upload.UpImg)
			group.POST("/ckEditorUp", api.Upload.CkEditorUp)
			group.POST("/upImgs", api.Upload.UpImgs)
			group.POST("/upFile", api.Upload.UpFile)
			group.POST("/upFiles", api.Upload.UpFiles)
		})

		group.Group("/v1/baby", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.Baby.List)
			group.GET("get", api.Baby.Get)
			group.POST("add", api.Baby.Add)
			group.PUT("edit", api.Baby.Edit)
			group.DELETE("delete", api.Baby.Delete)
		})

		group.Group("/v1/babyBody", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.SysBabyBody.List)
			group.GET("get", api.SysBabyBody.Get)
			group.POST("add", api.SysBabyBody.Add)
			group.PUT("edit", api.SysBabyBody.Edit)
			group.DELETE("delete", api.SysBabyBody.Delete)
		})

		group.Group("/v1/babyDiaper", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.SysBabyDiaper.List)
			group.GET("get", api.SysBabyDiaper.Get)
			group.POST("add", api.SysBabyDiaper.Add)
			group.PUT("edit", api.SysBabyDiaper.Edit)
			group.DELETE("delete", api.SysBabyDiaper.Delete)
		})

		group.Group("/v1/babyFoodBreastPump", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.SysBabyFoodBreastPump.List)
			group.GET("get", api.SysBabyFoodBreastPump.Get)
			group.POST("add", api.SysBabyFoodBreastPump.Add)
			group.PUT("edit", api.SysBabyFoodBreastPump.Edit)
			group.DELETE("delete", api.SysBabyFoodBreastPump.Delete)
		})

		group.Group("/v1/babyFoodComplementary", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.SysBabyFoodComplementary.List)
			group.GET("get", api.SysBabyFoodComplementary.Get)
			group.POST("add", api.SysBabyFoodComplementary.Add)
			group.PUT("edit", api.SysBabyFoodComplementary.Edit)
			group.DELETE("delete", api.SysBabyFoodComplementary.Delete)
		})

		group.Group("/v1/babyFoodFeedingBottle", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.SysBabyFoodFeedingBottle.List)
			group.GET("get", api.SysBabyFoodFeedingBottle.Get)
			group.POST("add", api.SysBabyFoodFeedingBottle.Add)
			group.PUT("edit", api.SysBabyFoodFeedingBottle.Edit)
			group.DELETE("delete", api.SysBabyFoodFeedingBottle.Delete)
		})

		group.Group("/v1/babyFoodFeedingMother", func(group *ghttp.RouterGroup) {
			group.Middleware(middleware.Token, middleware.MiddlewareErrorHandler)

			group.GET("list", api.SysBabyFoodFeedingMother.List)
			group.GET("get", api.SysBabyFoodFeedingMother.Get)
			group.POST("add", api.SysBabyFoodFeedingMother.Add)
			group.PUT("edit", api.SysBabyFoodFeedingMother.Edit)
			group.DELETE("delete", api.SysBabyFoodFeedingMother.Delete)
		})
	})
}
