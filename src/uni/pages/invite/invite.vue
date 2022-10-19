<template>
	<view>
		<text>邀请家人</text>
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
			
		}
	}
</script>

<style>

</style>
