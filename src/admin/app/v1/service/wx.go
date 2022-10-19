package service

import (
	"context"
	"fmt"
	dao2 "gfast/app/system/dao"
	"gfast/app/system/model"
	"gfast/app/v1/dao"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtimer"
	"github.com/gogf/gf/util/gconv"
	"github.com/medivhzhan/weapp/v2"
	"time"
)

type wx struct {
}

var (
	Wx          = new(wx)
	AccessToken string // 先不使用redis，临时开发，后期处理

	Appid      = g.Cfg().GetString("wx-miniprogram.appid")
	Secret     = g.Cfg().GetString("wx-miniprogram.secret")
	TemplateID = g.Cfg().GetString("wx-miniprogram.tmplId")
	EncryptKey = g.Cfg().GetString("gToken.system.EncryptKey")
)

func (i *wx) Login(ctx context.Context, req *dao.WxLoginReq) (int64, error) {

	m := dao2.SysUserBind.Ctx(ctx).WithAll()
	m = m.Where(dao2.SysUserBind.Columns.Openid+" = ?", req.Openid)
	m = m.Where(dao2.SysUserBind.Columns.Type+" = ?", gconv.Uint(req.Type))

	var res []*model.SysUserBind
	err := m.Scan(&res)

	if err != nil {
		return 0, err
	}

	// 不存在
	if len(res) <= 0 {
		data := &model.SysUserBind{
			Type:      req.Type,
			Openid:    req.Openid,
			Nickname:  req.Nickname,
			Avatarurl: req.Avatarurl,
		}
		bindId, err := dao2.SysUserBind.Ctx(ctx).InsertAndGetId(data)
		if err != nil {
			return 0, err
		}
		// 创建前台用户
		mobile := fmt.Sprintf("110%08d", bindId)
		user := &model.SysUser{
			UserName:     req.Openid,
			Mobile:       mobile,
			UserNickname: req.Nickname,
			IsAdmin:      0,
			Describe:     "微信小程序用户",
		}
		userId, err := dao2.SysUser.Ctx(ctx).InsertAndGetId(user)
		if err != nil {
			return 0, err
		}
		// 更新关联表
		_, err = dao2.SysUserBind.Ctx(ctx).Data(g.Map{"user_id": userId}).Where(dao2.SysUserBind.Columns.Id, bindId).Update()
		if err != nil {
			return 0, err
		}
		return userId, nil
	}

	data := res[0]
	return int64(data.UserId), nil
}

func (i *wx) GetAccessToken() {
	if len(AccessToken) == 0 {
		token, err := weapp.GetAccessToken(Appid, Secret)
		if err != nil {
			return
		}
		AccessToken = token.AccessToken

		gtimer.SetInterval(time.Second*time.Duration(token.ExpiresIn), func() {
			token2, _ := weapp.GetAccessToken(Appid, Secret)
			AccessToken = token2.AccessToken
		})
	}
}

func (i *wx) SendTmpleMsg(time1, thing2, page, usrOpenId string) error {
	sender := weapp.SubscribeMessage{
		ToUser:           usrOpenId, //"oSF004-SaeNkR9pR8-31E-aEof38",
		TemplateID:       TemplateID,
		Page:             page,                         //"/pages/nurse/nurse",
		MiniprogramState: weapp.MiniprogramStateFormal, // 或者: "developer"
		Data: weapp.SubscribeMessageData{
			"time1": {
				Value: time1, //"2019-11-11 20:20",
			},
			"thing2": {
				Value: thing2, //"测验N",
			},
		},
	}

	res, err := sender.Send(AccessToken)
	if err != nil {
		AccessToken = ""
		return err
	}

	if err := res.GetResponseError(); err != nil {
		AccessToken = ""
		return err
	}
	return nil
}
