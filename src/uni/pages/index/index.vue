<template>
	<view class="content">
		<view class="px-1 top rounded flex align-center">
			<view class="flex-1  flex align-center">
				<view class="top-header rounded-circle bg-hover-light mx-2">
					<image class="top-header" src="../../static/img/boy.png" mode="aspectFit"
						v-if="curBaby && curBaby.sex==1"></image>
					<image class="top-header" src="../../static/img/girl.png" mode="aspectFit" v-else></image>
				</view>
				<view class="flex flex-column " v-if="isHasBaby" @click="toEditBabyAction()">
					<text class="h4 text-dark">{{curBaby.nickname}}</text>
					<text class="font-sm text-secondary">{{curBaby.days}}天</text>
				</view>
				<text class="h5" v-else @click="toAddBabyAction()">添加宝宝</text>
			</view>
			<view class="touch-btn rounded-circle flex align-center justify-center animated" hover-class="wobble"
				@click="toSettingAction()">
				<text class="iconfont icon-setting h2 text-dark"></text>
			</view>
		</view>

		<view class="m-2">
			<text class="h5 text-dark">最近记录</text>
		</view>

		<view class="mx-2 flex justify-between">
			<indexlump :tip="'最近喂奶'" :itemObj="nurseObject" :bgColor="'bg-linear-red'" style="width: 100%;"
				@click.native="indexlumpAction(0)">
			</indexlump>
			<indexlump :tip="'最近尿布'" :itemObj="diaperObject" :bgColor="'bg-linear-orange'" class="mx-1"
				style="width: 100%;" @click.native="indexlumpAction(1)"></indexlump>
			<indexlump :tip="'最近吸奶'" :itemObj="suckleObject" :bgColor="'bg-linear-blue'" style="width: 100%;"
				@click.native="indexlumpAction(2)">
			</indexlump>
		</view>

		<view class="m-2 flex">
			<text class="flex-1 h5 text-dark">最近喂养记录</text>
			<view class="flex">
				<view class="animated" hover-class="wobble" @click="logsAction()">
					<text class="iconfont icon-menu font-lg text-dark mr-2"></text>
				</view>
				<!-- <view class="animated" hover-class="wobble" @click="chartAction()">
					<text class="iconfont icon-data-view font-lg text-dark"></text>
				</view> -->
			</view>
		</view>
		<view class="" v-if="listLen">
			<block v-for="item,idx in list" :key="idx">
				<indexItem :itemObj="item" @delItem="delListItem"></indexItem>
			</block>
		</view>
		<view class="flex flex-column align-center mt-5" v-else>
			<image src="../../static/img/empty.png" mode="aspectFit"></image>
			<text class="h5 text-dark">快开始记录吧~</text>
		</view>

		<view style="height: 40rpx;"></view>
	</view>
</template>

<script>
	// 引入自定义组件
	import indexlump from '@/components/indexlump.vue'
	import indexItem from '@/components/indexItem.vue'

	export default {
		components: {
			indexlump,
			indexItem
		},
		data() {
			return {
				isLogin: false,
				babyId: 0,
				babyList: [],
				suckleList: [], //吸奶器吸奶
				nurseList: [], //母乳亲喂
				bottleList: [], //奶瓶喂养
				diaperList: [], //换尿布
			}
		},
		onPullDownRefresh() {
			if (this.isLogin) {
				this.netBabyList()
			}

			setTimeout(function() {
				uni.stopPullDownRefresh()
			}, 1000)
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
			// isLogin() {

			// 	let key = this.$C.TokenKey
			// 	let token = uni.getStorageSync(key)

			// 	console.log('----token: ',token);

			// 	return token.length > 0
			// },
			isHasBaby() {
				return this.babyList.length > 0
			},
			curBaby() {
				for (let s of this.babyList) {
					if (s.id == this.babyId) {
						s.days = this.$T.babyDays(s.birthday)
						return s
					}
				}
				return null
			},
			list() {

				let itemList = []
				for (let obj of this.suckleList) {
					itemList.push(this.$T.suckleToObj(obj))
				}
				for (let obj of this.nurseList) {
					itemList.push(this.$T.nurseToObj(obj))
				}
				for (let obj of this.bottleList) {
					itemList.push(this.$T.bottleToObj(obj))
				}
				for (let obj of this.diaperList) {
					itemList.push(this.$T.diaperToObj(obj))
				}

				itemList.sort()

				itemList = this.$T.objArraySort(itemList, 'startAt')

				// itemList.reverse()

				return itemList
			},
			nurseObject() {
				if (this.nurseList.length > 0 || this.bottleList.length > 0) {
					if (this.nurseList.length > 0 && this.bottleList.length > 0) {
						let nurse = this.nurseList[0]
						let bottle = this.bottleList[0]
						let obj
						if (nurse.startAt > bottle.startAt) {
							obj = this.$T.nurseToObj(nurse)
						} else {
							obj = this.$T.bottleToObj(bottle)
						}
						return obj
					}

					if (this.nurseList.length > 0) {
						let nurse = this.nurseList[0]
						return this.$T.nurseToObj(nurse)
					}

					if (this.bottleList.length > 0) {
						let bottle = this.bottleList[0]
						return this.$T.bottleToObj(bottle)
					}
				}
				return {
					id: 0
				}
			},
			diaperObject() {
				if (this.diaperList.length > 0) {
					let obj = this.diaperList[0]
					return this.$T.diaperToObj(obj)
				}
				return {
					id: 0
				}
			},
			suckleObject() {
				if (this.suckleList.length > 0) {
					let obj = this.suckleList[0]
					return this.$T.suckleToObj(obj)
				}
				return {
					id: 0
				}
			}
		},
		onLoad() {},
		onShow() {
			let key = this.$C.TokenKey
			let token = uni.getStorageSync(key)
			this.isLogin = token.length > 0

			if (this.isLogin) {
				let key = this.$C.babyIdKey
				this.babyId = uni.getStorageSync(key)
				this.netBabyList()
			}
		},
		methods: {
			toSettingAction() {
				if (this.checkLogin()) {
					uni.navigateTo({
						url: "/pages/setting/setting"
					})
				}
			},
			toEditBabyAction() {
				// 编辑宝宝信息，页面还没处理
				if (this.checkLogin()) {
					uni.navigateTo({
						url: "/pages/baby/editBaby?item=" + JSON.stringify(this.curBaby)
					})
				}
			},
			toAddBabyAction() {
				if (this.checkLogin()) {
					uni.navigateTo({
						url: "/pages/baby/editBaby"
					})
				}
			},
			indexlumpAction(idx) {
				if (this.checkLogin() && this.checkBaby()) {
					let url = ""
					switch (idx) {
						case 0:
							url = "/pages/nurse/nurse"
							break
						case 1:
							url = "/pages/diaper/diaper"
							break
						default:
							url = "/pages/suckle/suckle"
					}
					uni.navigateTo({
						url: url
					})
				}
			},
			logsAction() {
				if (this.checkLogin() && this.checkBaby()) {
					uni.navigateTo({
						url: "/pages/logs/logs"
					})
				}
			},
			chartAction() {
				if (this.checkLogin() && this.checkBaby()) {
					uni.navigateTo({
						url: "/pages/chart/chart"
					})
				}
			},
			checkLogin() {
				if (!this.isLogin) {
					uni.navigateTo({
						url: "/pages/login/login"
					})
				}
				return this.isLogin
			},
			checkBaby() {
				if (!this.isHasBaby) {
					uni.showModal({
						title: '是否添加宝宝？',
						confirmText: '添加',
						success: function(res) {
							if (res.confirm) {
								uni.navigateTo({
									url: "/pages/baby/addBaby"
								})
							}
						}
					})
				}
				return this.isHasBaby
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

			netBabyList() {
				let that = this
				let url = this.$Url.Url.BabyList
				this.$H.get(url, {
					PageNum: 1,
				}, {
					token: true
				}, {}).then(res => {
					if (res == -1) return

					that.babyList = []
					for (let item of res.list) {
						// 不存在，则默认随机一个
						if (that.babyId == 0) that.babyId = item.id
						// 保存选择的baby
						uni.setStorage({
							key: that.$C.babyIdKey,
							data: that.babyId
						})

						if (that.babyId == item.id) {
							item['sel'] = 1
						} else {
							item['sel'] = 0
						}

						that.babyList.push(item)
					}

					// 加载最新信息
					that.netSuckleList()
					that.netNurseList()
					that.netBottleList()
					that.netDiaperList()

					// 查看是否有宝宝
					if (that.babyList.length == 0) {
						uni.showModal({
							title: '提示',
							content: '当前没有宝宝，是否添加？',
							confirmText: '添加',
							success: function(res) {
								if (res.confirm) {
									uni.navigateTo({
										url: "/pages/baby/editBaby"
									})
								}
							}
						})
					}
				})
			},

			netSuckleList() {
				if (this.babyId == 0) return
				let that = this
				let url = this.$Url.Url.SuckleList
				this.$H.get(url, {
					PageNum: 1,
					babyId: this.babyId
				}, {
					token: true
				}, {}).then(res => {
					if (res == -1) return
					this.suckleList = res.list
				})
			},
			netNurseList() {
				if (this.babyId == 0) return
				let that = this
				let url = this.$Url.Url.NurseList
				this.$H.get(url, {
					PageNum: 1,
					babyId: this.babyId
				}, {
					token: true
				}, {}).then(res => {
					if (res == -1) return
					this.nurseList = res.list
				})
			},
			netBottleList() {
				if (this.babyId == 0) return
				let that = this
				let url = this.$Url.Url.BottleList
				this.$H.get(url, {
					PageNum: 1,
					babyId: this.babyId
				}, {
					token: true
				}, {}).then(res => {
					if (res == -1) return
					this.bottleList = res.list
				})
			},
			netDiaperList() {
				if (this.babyId == 0) return
				let that = this
				let url = this.$Url.Url.DiaperList
				this.$H.get(url, {
					PageNum: 1,
					babyId: this.babyId
				}, {
					token: true
				}, {}).then(res => {
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
						that.netBabyList()
					}
				})
			},


		},
	}
</script>

<style>
	.top {
		height: 200rpx;
	}
</style>
