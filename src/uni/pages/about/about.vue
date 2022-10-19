<template>
	<view>
		<view class="top flex flex-column align-center justify-center ">
			<view class="top-header rounded-circle bg-common ">
				<image class="top-header rounded-circle shadow" src="../../static/logo.png" mode="aspectFit"></image>
			</view>
			<text class="h4 mt-1">宝宝日志</text>
			<text class="h5 text-secondary">版本号：{{version}}</text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				version: '1.0.0'
			}
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/about/about'
			}
		},
		methods: {}
	}
</script>

<style>
	.top {
		height: 400rpx;
	}
</style>
