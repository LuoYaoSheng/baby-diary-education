package api

import (
	"encoding/base64"
	sysApi "gfast/app/system/api"
	"gfast/app/v1/dao"
	"gfast/app/v1/service"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gvalid"
	"github.com/medivhzhan/weapp/v2"
	"strconv"
)

type wx struct {
	sysApi.SystemBase
}

var (
	Wx = new(wx)
)

func (c *wx) Login(r *ghttp.Request) {
	var req *dao.WxLoginReq
	//获取参数
	if err := r.Parse(&req); err != nil {
		c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	}

	res, err := weapp.Login(service.Appid, service.Secret, req.Code)
	if err != nil {
		c.FailJsonExit(r, err.Error())
	}

	if err := res.GetResponseError(); err != nil {
		c.FailJsonExit(r, err.Error())
	}

	if res.ErrCode == 0 {
		req.Openid = res.OpenID
		userId, err := service.Wx.Login(r.GetCtx(), req)
		if err != nil {
			c.FailJsonExit(r, err.Error())
		} else {
			// 暂时先用 id 作为 token，后期再来修正
			src := service.EncryptKey + strconv.Itoa(int(userId))
			token := base64.StdEncoding.EncodeToString([]byte(src))
			c.SusJsonExit(r, g.Map{"token": token, "sessionKey": res.SessionKey, "expires_in": 10000})
		}
	} else {
		c.FailJsonExit(r, res.ErrMSG)
	}
}

func (c *wx) Test(r *ghttp.Request) {

	//var req *dao.WxLoginReq
	////获取参数
	//if err := r.Parse(&req); err != nil {
	//	c.FailJsonExit(r, err.(gvalid.Error).FirstString())
	//}
	//
	//req.Openid = req.Code
	//userId, err := service.Wx.Login(r.GetCtx(), req)
	//if err != nil {
	//	c.FailJsonExit(r, err.Error())
	//} else {
	//	// 暂时先用 id 作为 token，后期再来修正
	//	src := service.EncryptKey + strconv.Itoa(int(userId))
	//	token := base64.StdEncoding.EncodeToString([]byte(src))
	//	c.SusJsonExit(r, g.Map{"token": token, "sessionKey": "res.SessionKey", "expires_in": 10000})
	//}

	service.Wx.SendTmpleMsg("2022年10月12日 09:09:09", "奶瓶喂奶", "/pages/nurse/nurse", "oSF004-SaeNkR9pR8-31E-aEof38")
}
