<template>
	<view class="mx-2">
		<view class="top flex flex-column align-center justify-center ">
			<view class="top-header rounded-circle bg-common ">
				<image class="top-header rounded-circle shadow" src="../../static/logo.png" mode="aspectFit"></image>
			</view>
			<text class="h4 mt-1">宝宝日志</text>
		</view>
		<button class='bottom' open-type="getUserInfo" withCredentials="true" lang="zh_CN" @getuserinfo="wxGetUserInfo">
			授权登录
		</button>

		<button class="mt-3" @click="h5Action()" v-if="isH5">h5 测试登录</button>
	</view>
	<!-- 	<view class="content">
		<button class='bottom' type='primary' open-type="getUserInfo" withCredentials="true" lang="zh_CN"
			@getuserinfo="wxGetUserInfo">
			授权登录
		</button>

		<button class="mt-3" @click="h5Action()">h5 测试登录</button>
	</view> -->
</template>

<script>
	export default {
		data() {
			return {
				isH5: false
			}
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		onLoad() {
			/*#ifdef H5*/
			this.isH5 = true
			/*#endif*/
		},
		methods: {
			h5Action() {
				let key = this.$C.TokenKey
				let token = 'a29pMjlhODNpZGFrZ3VxanEyOWFzZDlhc2Q4YTdqaHE2MA=='

				uni.setStorage({
					key: key,
					data: token,
					success() {
						uni.navigateBack()
					},
					fail() {
						uni.showToast({
							title: '操作异常，请重试！'
						})
					}
				})
			},
			wxGetUserInfo() {
				let that = this
				uni.login({
					provider: 'weixin',
					success: (loginRes) => {
						if (loginRes.errMsg == 'login:ok') {
							let code = loginRes.code

							uni.getUserInfo({
								provider: 'weixin',
								success: function(infoRes) {
									let nickname = infoRes.userInfo.nickName
									let avatarurl = infoRes.userInfo.avatarUrl
									let data = {
										code: code,
										nickname: nickname,
										avatarurl: avatarurl,
										type: 0
									}

									let url = that.$Url.Url.Login
									that.$H.post(url, data, {}, {}).then(res => {

										if (res == -1) {
											return
										}

										let key = that.$C.TokenKey
										uni.setStorage({
											key: key,
											data: res.token,
											success() {
												setTimeout(function() {
													uni.navigateBack()
												}, 300)
											},
											fail() {
												uni.showToast({
													title: '操作异常，请重试！'
												})
											}
										})
									})
								}
							})
						}
					}
				})
			}
		},
	}
</script>

<style>
	.top {
		height: 400rpx;
	}
</style>
