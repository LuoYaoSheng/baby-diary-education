package dao

type WxLoginReq struct {
	Code      string `p:"code" v:"required#code不能为空"`
	Nickname  string `p:"nickname" `
	Avatarurl string `p:"avatarurl" `
	Type      int    `p:"type" `

	Openid string `p:"openid" `
}

type WxTestReq struct {
	UserId string `p:"user_id"`
}
