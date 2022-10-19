<template>
	<view class="flex flex-column mx-2">
		<block v-for="(item,index) in babyList" :key="index">
			<babyitem :item="item" @setCurBaby="setCurBabyAction"></babyitem>
		</block>

		<view class="baby-add-btn mt-1 flex rounded shadow align-center justify-center bg-white">
			<view class="animated" hover-class="wobble" @click="chartAction()">
				<text class="iconfont icon-add-circle font-lg text-dark"></text>
			</view>
			<text class="h5 text-dark ml-1" @click="toAddBabyAction()">添加宝宝</text>
		</view>
	</view>
</template>

<script>
	// 引入自定义组件
	import babyitem from '@/components/babyitem.vue'

	export default {
		components: {
			babyitem
		},
		data() {
			return {
				babyList: [],
				babyId: 0,
			}
		},
		onLoad() {
			let key = this.$C.babyIdKey
			this.babyId = uni.getStorageSync(key)
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		onShow() {
			this.netBabyList()
		},
		methods: {
			netBabyList() {
				let that = this
				let url = this.$Url.Url.BabyList
				this.$H.get(url, {
					PageNum: 1,
				}, {
					token: true
				}, {}).then(res => {
					that.babyList = []
					for (let item of res.list) {
						if (that.babyId == item.id) {
							item['sel'] = 1
						} else {
							item['sel'] = 0
						}
						that.babyList.push(item)
					}

				})
			},
			toAddBabyAction() {
				uni.navigateTo({
					url: "/pages/baby/editBaby"
				})
			},
			setCurBabyAction(e) {
				// 存储当前baby
				this.babyId = e
				let key = this.$C.babyIdKey
				uni.setStorageSync(key, e)
				
				// 刷新页面
				for (let item of this.babyList ) {
					if (this.babyId == item.id) {
						item['sel'] = 1
					} else {
						item['sel'] = 0
					}
				}
				
			}
		}
	}
</script>

<style>
	.baby-add-btn {
		height: 90rpx;
	}
</style>
