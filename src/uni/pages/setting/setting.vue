<template>
	<view>
		<view class="rounded shadow mt-2 mx-2 bg-white">
			<block v-for="(item,idx) in list" :key="idx">
				<view class="list-item flex align-center" @click="itemAction(item)">
					<text class="flex-1 ml-2">{{item.title}}</text>
					<text class="mr-2">></text>
				</view>
				<dividersm></dividersm>
			</block>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				list: [{
						"title": "宝宝管理",
						"url": "/pages/baby/baby"
					},
					// {
					// 	"title": "我的信息",
					// 	"url": "/pages/my/my"
					// },
					// {
					// 	"title": "邀请家人",
					// 	"url": "/pages/invite/invite"
					// },
					{
						"title": "关于我们",
						"url": "/pages/about/about"
					}
				]
			}
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		methods: {
			itemAction(item) {
				console.log(item.url);
				uni.navigateTo({
					url: item.url
				})
			}
		}
	}
</script>

<style>

</style>
