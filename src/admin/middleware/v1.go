package middleware

import (
	"encoding/base64"
	"gfast/library"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"net/http"
)

var (
	encryptKey = g.Cfg().GetString("gToken.system.EncryptKey")
)

func Token(r *ghttp.Request) {
	token := r.Get("token")
	// 实际上，还需要到缓存中找到对象，确认存在才可以通过
	if token == nil {
		r.Response.WriteStatus(http.StatusInternalServerError)
	}
	r.Middleware.Next()
}

func MiddlewareErrorHandler(r *ghttp.Request) {
	if r.Response.Status >= http.StatusInternalServerError {
		r.Response.ClearBuffer()
		//r.Response.Status = http.StatusOK
		library.FailJson(true, r, "登录过期，请重新登录！[0]")
	} else {
		// token 解析，此处先简单处理
		s, err := base64.StdEncoding.DecodeString(r.GetString("token", ""))
		if err != nil {
			library.FailJson(true, r, "登录过期，请重新登录！[1]")
			return
		}
		if len(string(s)) < len(encryptKey) {
			library.FailJson(true, r, "登录过期，请重新登录！[2]")
			return
		}
		user_id := string(s)[len(encryptKey):]
		r.SetParam("user_id", user_id)
		r.Middleware.Next()
	}
}
