<template>
	<view>
		<view class="mt-2 flex justify-center">
			<view class="top-bg flex justify-between align-center rounded-circle ">
				<text class="top-swt h5 text-center rounded-circle " :class="{'top-swt-select':type==0}"
					@click="typeSelectAction(0)">母乳亲喂</text>
				<text class="top-swt h5 text-center rounded-circle " :class="{'top-swt-select':type==1}"
					@click="typeSelectAction(1)">奶瓶喂养</text>
			</view>
		</view>

		<!-- 母乳亲喂 -->
		<view class="" v-if="type==0">
			<view class="flex flex-column align-center">
				<view class="flex align-center">
					<text class="h1 text-dark">{{duration_txt}}</text>
					<view
						class="flex align-center justify-center px-2  ml-2 font-sm text-secondary bg-white rounded-circle"
						style="height: 60rpx;" @click="toEditNurseAction()"> <text
							class="iconfont icon-increase"></text>手动输入</view>
				</view>

				<view class="flex justify-between align-center">
					<text class="text-secondary font m-2">开始时间</text>
					<view class="flex mr-2 align-center">
						<uni-datetime-picker v-model="start_at" :border="false" />
					</view>
				</view>
			</view>

			<view class="my-5 flex justify-between">
				<view class="flex-1 flex flex-column align-center">
					<view class="btn-start flex align-center justify-center animated"
						:class="{'btn-start-select':left_start}" hover-class="wobble" @click="startAction(0)">
						<text class="iconfont icon-zanting font-lg" v-if="left_start"></text>
						<text class="iconfont icon-bofang font-lg" v-else></text>
					</view>
					<text class="mt-3 h5 text-dark">{{duration_left_txt}}</text>
				</view>

				<view class="flex-1 flex flex-column align-center">
					<view class="btn-start flex align-center justify-center animated"
						:class="{'btn-start-select':right_start}" hover-class="wobble" @click="startAction(1)">
						<text class="iconfont icon-zanting font-lg" v-if="right_start"></text>
						<text class="iconfont icon-bofang font-lg" v-else></text>
					</view>
					<text class="mt-3 h5 text-dark">{{duration_right_txt}}</text>
				</view>
			</view>

			<view class="flex align-center mx-2">
				<view class="col-4">
					<view class="btn-com bg-white flex align-center justify-center rounded-circle"
						@click="toBackAction()">放弃</view>
				</view>
				<view class="col-8">
					<view class="btn-com bg-linear-red text-white flex align-center justify-center rounded-circle "
						@click="saveAction()">
						完成并保存</view>
				</view>
			</view>

		</view>
		<!-- 奶瓶喂养 -->
		<view class="" v-else>
			<view class="bg-white rounded shadow m-2">
				<view class="flex justify-between align-center">
					<text class="text-secondary font m-2">开始时间</text>
					<view class="flex mr-2 align-center">
						<uni-datetime-picker v-model="start_at" :border="false" />
					</view>
				</view>
				<dividersm></dividersm>

				<view class="flex justify-between align-center">
					<text class="text-secondary font m-2">容量</text>
					<view class="flex mr-2 align-center">
						<input class="text-right mr-2" type="number" placeholder="请输入ml数" @input="onAppetite"
							:value="appetite">
					</view>
				</view>
				<dividersm></dividersm>

				<view class="flex justify-between align-center" @click="typeAction()">
					<text class="text-secondary font m-2">类型</text>
					<view class="flex mr-2 align-center">
						<text class="mr-1 font text-dark">{{type_txt}}</text>
						<text class="iconfont icon-arrow-right font text-secondary"></text>
					</view>
				</view>
				<dividersm></dividersm>

				<view class="flex justify-between align-center">
					<text class="text-secondary font m-2">3小时提醒</text>
					<view class="flex mr-2 align-center">
						<EvanSwitch v-model="checked" @change="changeChecked"></EvanSwitch>
					</view>
				</view>

			</view>

			<text class="h5 mx-2">备注</text>
			<view class="bg-white rounded shadow mx-2 mt-1 textarea-content">
				<textarea placeholder="选填" :value="remark" @blur="bindTextAreaBlur"
					class="textarea-content2 mx-2 text-dark font"></textarea>
			</view>


			<view class="flex justify-center mt-5">
				<view
					class="btn-common h5 bg-btn-common-un rounded-circle shadow text-white flex align-center justify-center btn-sex-girl-select"
					@click="saveBottleAction()">
					保存</view>
			</view>
		</view>
	</view>
</template>

<script>
	import getDateTime from '@/common/getdateTime.js'
	import EvanSwitch from '@/components/evan-switch/evan-switch.vue'

	export default {
		components: {
			EvanSwitch
		},
		data() {
			return {
				babyId: 0,
				type: 0,
				start_at: '',

				left_start: false,
				right_start: false,
				duration_left: 0,
				duration_right: 0,

				timer: null, //定时器名称

				appetite: '',
				type2: 1,
				remark: '',
				typeList: [],

				checked: false,
				tmplId: [],

				hide_start_at: 0
			}
		},
		computed: {
			duration_left_txt() {
				if (this.left_start || this.duration_left == 0) {
					return '左侧'
				} else {
					return '左侧 ' + this.$T.formatSeconds(this.duration_left)
				}
			},
			duration_right_txt() {
				if (this.right_start || this.duration_right == 0) {
					return '右侧'
				} else {
					return '右侧 ' + this.$T.formatSeconds(this.duration_right)
				}
			},
			duration_txt() {
				if (this.left_start) return this.$T.formatSeconds(this.duration_left)
				if (this.right_start) return this.$T.formatSeconds(this.duration_right)
				return '00:00'
			},
			type_txt() {
				return this.typeList[this.type2]
			}
		},
		onLoad() {
			let that = this
			setTimeout(function() {
				that.typeList = that.$T.bottleTypeList()
				that.start_at = getDateTime.dateTimeStr('y-m-d h:i:s')

				let key = that.$C.babyIdKey
				that.babyId = uni.getStorageSync(key)
			}, 300)

			this.tmplId = this.$C.TmplId
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		onShow() {
			let that = this
			if (this.hide_start_at > 0) {
				let now = new Date().getTime()
				let temp = parseInt(parseInt(now - this.hide_start_at) / 1000)
				if (that.left_start) that.duration_left += temp
				if (that.right_start) that.duration_right += temp
				that.hide_start_at = 0
			}

			this.timer = setInterval(function() {
				if (that.left_start) that.duration_left++
				if (that.right_start) that.duration_right++
				this.hide_start_at = new Date().getTime()
			}, 1000)
		},
		onHide() {
			clearInterval(this.timer)
			this.timer = null

			this.hide_start_at = new Date().getTime()
		},
		beforeDestroy() {
			if (this.timer) {
				clearInterval(this.timer); //关闭 
			}
		},
		methods: {
			changeChecked(e) {
				if (e) {
					let that = this
					uni.requestSubscribeMessage({
						tmplIds: this.tmplId,
						success(res) {
							if (res.errMsg == 'requestSubscribeMessage:ok' &&
								res[that.tmplId[0]] == 'accept') {
								that.checked = true
							} else {
								that.checked = false
							}
						},
						fail() {
							that.checked = false
						}
					})
				}
			},
			// 输入事件
			onAppetite(event) {
				this.appetite = event.target.value
			},
			typeSelectAction(idx) {
				this.type = idx
			},
			startAction(idx) {
				if (idx == 0) {
					this.right_start = false
					this.left_start = !this.left_start
				} else {
					this.left_start = false
					this.right_start = !this.right_start
				}
			},
			toEditNurseAction() {
				uni.navigateTo({
					url: "/pages/nurse/editNurse"
				})
			},
			toBackAction() {
				let that = this
				uni.showModal({
					title: '确定放弃本次记录？',
					confirmText: '放弃',
					success: function(res) {
						if (res.confirm) {
							uni.navigateBack()
						}
					}
				})
			},
			saveAction() {
				this.left_start = false
				this.right_start = false

				let duration_left = (parseInt(this.duration_left) / 60).toFixed(0)
				let duration_right = (parseInt(this.duration_right) / 60).toFixed(0)

				let item = {
					start_at: this.start_at,
					duration_left: duration_left,
					duration_right: duration_right
				}

				uni.navigateTo({
					url: "/pages/nurse/editNurse?item=" + JSON.stringify(item)
				})
			},
			saveBottleAction() {
				this.netAdd()
			},
			bindTextAreaBlur: function(e) {
				this.remark = e.detail.value
			},
			appetiteAction() {
				let itemList = []
				for (let i = 5; i <= 300; i += 5) {
					itemList.push(i.toString())
				}
				let that = this
				uni.showActionSheet({
					title: '容量',
					itemList: itemList,
					success: function(res) {
						that.appetite = itemList[res.tapIndex]
					}
				})
			},
			typeAction() {

				let that = this
				uni.showActionSheet({
					title: '喂养类型',
					itemList: that.typeList,
					success: function(res) {
						that.type2 = res.tapIndex
					}
				})
			},
			netAdd() {
				let item = {
					start_at: this.start_at,

					appetite: this.appetite,
					type: this.type2,

					remark: this.remark,

					babyId: this.babyId,

					remind: this.checked // 添加提醒项
				}
				let that = this
				let url = this.$Url.Url.BottleAdd
				this.$H.post(url, item, {}, {
					token: true
				}).then(res => {
					if (res == -1) return

					setTimeout(function() {
						uni.showToast({
							title: '添加成功'
						})
						uni.navigateBack()
					}, 1000);

				})
			},




		}
	}
</script>

<style>
	.top-bg {
		background-color: rgba(66, 66, 66, 0.1);
	}

	.top-swt {
		width: 200rpx;
		height: 64rpx;
		line-height: 64rpx;
		color: #6c757d;
	}

	.top-swt-select {
		color: #343a40;
		background-color: #FFFFFF;
	}

	.btn-start {
		width: 120rpx;
		height: 120rpx;
		border-radius: 120rpx;
		color: #FE687F;
		background-color: #FFFFFF;
		box-shadow: 0 4rpx 12rpx #FEE8EA;
	}

	.btn-start-select {
		color: #FEE8EA;
		background-color: #FE687F;
	}

	.btn-sex-girl-select {
		color: #fff;
		background-image: linear-gradient(135deg, #FE6F7D 10%, #FE687F 100%);
	}
</style>
