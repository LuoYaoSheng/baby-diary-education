<template>
	<view>
		<view class="flex m-2">
			<uni-datetime-picker v-model="start_at" :border="false" type="date" />
		</view>

		<view class="bg-white flex">
			<block v-for="(item,index) in topList" :key="index">
				<view class="top-item flex flex-column align-center justify-center" @click="topSelectAction(index)">
					<text class="font flex-1 flex justify-center align-center"
						:class="{'top-item-select':topIdx==index}">{{item}}</text>
					<view class="top-item-line" v-if="topIdx==index"></view>
				</view>
			</block>


		</view>

		<view class="bg-white flex py-2 flex-column">
			<view class="total-item flex font-sm text-dark" v-if="topIdx==0 || topIdx==1">
				<text class="col-2 ">母乳亲喂</text>
				<text class="col-1 ">{{nurseObj.total}}次</text>
				<text class="col-9 ">{{nurseObj.content}}</text>
			</view>
			<view class="total-item flex font-sm text-dark" v-if="topIdx==0 || topIdx==2">
				<text class="col-2 ">奶瓶喂养</text>
				<text class="col-1 ">{{bottleObj.total}}次</text>
				<text class="col-9 ">{{bottleObj.content}}</text>
			</view>
			<view class="total-item flex font-sm text-dark" v-if="topIdx==0 || topIdx==3">
				<text class="col-2 ">换尿布</text>
				<text class="col-1 ">{{diaperObj.total}}次</text>
				<text class="col-9 ">{{diaperObj.content}}</text>
			</view>
			<view class="total-item flex font-sm text-dark" v-if="topIdx==0 || topIdx==4">
				<text class="col-2 ">吸奶器</text>
				<text class="col-1 ">{{suckleObj.total}}次</text>
				<text class="col-9 ">{{suckleObj.content}}</text>
			</view>
		</view>

		<view class="" v-if="listLen">
			<block v-for="item in list">
				<indexItem :itemObj="item" @delItem="delListItem"></indexItem>
			</block>
		</view>
		<view class="flex flex-column align-center mt-5" v-else>
			<image src="../../static/img/empty.png" mode="aspectFit"></image>
			<text class="h5 text-dark">当日无记录哦~</text>
		</view>

		<view style="height: 40rpx;"></view>

	</view>
</template>

<script>
	import getDateTime from '@/common/getdateTime.js'
	// 引入自定义组件
	import indexItem from '@/components/indexItem.vue'

	export default {
		components: {
			indexItem
		},
		data() {
			return {
				start_at: '',
				topIdx: 0,
				topList: ['全部', '亲喂', '瓶喂', '换尿布', '吸奶'],

				babyId: 0,
				suckleList: [], //吸奶器吸奶
				nurseList: [], //母乳亲喂
				bottleList: [], //奶瓶喂养
				diaperList: [], //换尿布
			}
		},
		onPullDownRefresh() {
			this.netList()
		},
		onLoad() {
			let that = this
			setTimeout(function() {
				that.typeList = that.$T.bottleTypeList()
				that.start_at = getDateTime.dateTimeStr('y-m-d h:i:s')
				
				let key = that.$C.babyIdKey
				that.babyId = uni.getStorageSync(key)
				
				that.netList()
			}, 300)
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		computed: {
			listLen() {
				return this.list.length
			},

			//母乳亲喂
			nurseObj() {
				let total = this.nurseList.length
				let duration = 0
				let duration_left = 0
				let duration_right = 0

				for (let s of this.nurseList) {
					duration_left += parseInt(s.durationLeft)
					duration_right += parseInt(s.durationRight)
				}

				duration = duration_left + duration_right

				let content = duration + '分钟 | 左 ' + duration_left + ' 分钟 | 右 ' + duration_right + ' 分钟'

				let obj = {
					total: total,
					content: content
				}
				return obj
			},
			//奶瓶喂养
			bottleObj() {
				let total = this.bottleList.length
				let typeList = this.$T.bottleTypeList()
				let appetite = 0
				let count = [0, 0, 0, 0, 0, 0]

				for (let s of this.bottleList) {
					appetite += parseInt(s.appetite)
					count[parseInt(s.type)] += 1
				}

				let content = appetite + 'ml'
				for (var i = 0; i < count.length; i++) {
					if (count[i] > 0) {
						content = content + ' | ' + typeList[i] + count[i] + '次'
					}
				}

				let obj = {
					total: total,
					content: content
				}

				return obj
			},
			//换尿布
			diaperObj() {
				let total = this.diaperList.length
				// let typeList = this.$T.diaperTypeList()
				let count = [0, 0, 0]

				for (let s of this.diaperList) {
					count[parseInt(s.type)] += 1
				}
				let content = '嘘嘘 ' + count[0] + ' 次 | 便便 ' + count[1] + ' 次 | 嘘嘘+便便 ' + count[2] + ' 次'

				let obj = {
					total: total,
					content: content
				}
				return obj
			},
			//吸奶器吸奶
			suckleObj() {
				let total = this.suckleList.length

				let appetite_left = 0
				let appetite_right = 0
				let duration_left = 0
				let duration_right = 0

				for (let s of this.suckleList) {
					appetite_left += parseInt(s.appetiteLeft)
					appetite_right += parseInt(s.appetiteRight)
					duration_left += parseInt(s.durationLeft)
					duration_right += parseInt(s.durationRight)
				}

				let content = appetite_left + '分钟/' + duration_left + 'ml | ' + appetite_right + '分钟/' + duration_right +
					'ml'
				let obj = {
					total: total,
					content: content
				}
				return obj
			},
			list() {

				let itemList = []

				if (this.topIdx == 0 || this.topIdx == 1) {
					for (let obj of this.nurseList) {
						itemList.push(this.$T.nurseToObj(obj))
					}
				}

				if (this.topIdx == 0 || this.topIdx == 2) {
					for (let obj of this.bottleList) {
						itemList.push(this.$T.bottleToObj(obj))
					}
				}

				if (this.topIdx == 0 || this.topIdx == 3) {
					for (let obj of this.diaperList) {
						itemList.push(this.$T.diaperToObj(obj))
					}
				}

				if (this.topIdx == 0 || this.topIdx == 4) {
					for (let obj of this.suckleList) {
						itemList.push(this.$T.suckleToObj(obj))
					}
				}
				if (this.topIdx == 0) {
					// itemList.sort()
					itemList = this.$T.objArraySort(itemList, 'startAt')
				}

				return itemList
			},

		},
		watch: {
			start_at(newVal, oldVal) {
				this.netList()
			}
		},
		methods: {
			topSelectAction(idx) {
				this.topIdx = idx
			},
			delListItem(e) {
				let that = this
				uni.showModal({
					title: '警告',
					content: '确认删除该条信息？',
					confirmText: '删除',
					success: function(res) {
						if (res.confirm) {
							let url
							switch (e.type) {
								case 0: //母乳
									url = that.$Url.Url.NurseDelete
									break;
								case 1: //瓶喂
									url = that.$Url.Url.BottleDelete
									break;
								case 2: //换尿布
									url = that.$Url.Url.DiaperDelete
									break;
								default: //吸奶器
									url = that.$Url.Url.SuckleDelete
									break;
							}
							that.netDelItem(url, e.id)
						}
					}
				})
			},

			netList() {
				this.netSuckleList()
				this.netNurseList()
				this.netBottleList()
				this.netDiaperList()
			},

			netSuckleList() {

				let that = this
				let url = this.$Url.Url.SuckleList
				this.$H.get(url, {
					babyId: this.babyId,
					PageNum: 1,
					PageSize: 100,
					StartAt: this.start_at
				}, {
					token: true
				}, {}).then(res => {
					uni.stopPullDownRefresh()
					if (res == -1) return
					this.suckleList = res.list
				})
			},
			netNurseList() {
				let that = this
				let url = this.$Url.Url.NurseList
				this.$H.get(url, {
					babyId: this.babyId,
					PageNum: 1,
					PageSize: 100,
					StartAt: this.start_at
				}, {
					token: true
				}, {}).then(res => {
					uni.stopPullDownRefresh()
					if (res == -1) return
					this.nurseList = res.list
				})
			},
			netBottleList() {
				let that = this
				let url = this.$Url.Url.BottleList
				this.$H.get(url, {
					babyId: this.babyId,
					PageNum: 1,
					PageSize: 100,
					StartAt: this.start_at
				}, {
					token: true
				}, {}).then(res => {
					uni.stopPullDownRefresh()
					if (res == -1) return
					this.bottleList = res.list
				})
			},
			netDiaperList() {
				let that = this
				let url = this.$Url.Url.DiaperList
				this.$H.get(url, {
					babyId: this.babyId,
					PageNum: 1,
					PageSize: 100,
					StartAt: this.start_at
				}, {
					token: true
				}, {}).then(res => {
					uni.stopPullDownRefresh()
					if (res == -1) return
					this.diaperList = res.list
				})
			},
			netDelItem(url, itemId) {
				let that = this
				this.$H.delete(url, {
					ids: [itemId]
				}, {
					token: true
				}, {}).then(res => {
					if (res == -1) return

					uni.showToast({
						title: '删除成功'
					})

					if (that.isLogin) {
						that.netList()
					}
				})
			},

		}
	}
</script>

<style>
	.top-item {
		width: 20%;
		height: 76rpx;
		color: #343a40;
	}

	.top-item-line {
		width: 60rpx;
		height: 6rpx;
		border-radius: 6rpx;
		background-color: #FE687F;
	}

	.top-item-select {
		color: #FE687F;
	}

	.total-item {
		height: 56rpx;
		line-height: 56rpx;
	}
</style>
