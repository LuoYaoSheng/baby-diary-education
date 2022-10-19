<template>
	<view>
		<view class="top flex flex-column align-center justify-center ">
			<view class="top-header rounded-circle bg-common ">
				<image class="top-header" src="../../static/img/girl.png" mode="aspectFit"></image>
			</view>
			<text class="h5">昵称：罗</text>
			<text class="h5 mt-1">账户编号：123456798</text>
		</view>
		
		<button class='bottom shadow mx-2 font bg-white' open-type="getUserInfo" withCredentials="true" lang="zh_CN"
			@getuserinfo="wxGetUserInfo">
			更新个人信息
		</button>

	</view>
</template>

<script>
	export default {
		data() {
			return {

			}
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		methods: {
			wxGetUserInfo() {
				console.log("--- 更新个人信息 ---");
			}
		}
	}
</script>

<style>
	.top {
		height: 400rpx;
	}
</style>
