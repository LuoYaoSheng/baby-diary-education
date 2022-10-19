<template>
	<view class="">
		<view class="bg-white rounded shadow m-2">
			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">开始时间</text>
				<view class="flex mr-2 align-center">
					<uni-datetime-picker v-model="start_at" :border="false" />
				</view>
			</view>
			<dividersm></dividersm>

			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">左侧量（可选）</text>
				<view class="flex mr-2 align-center">
					<input class="text-right mr-2" type="number" placeholder="请输入ml数" @input="onAppetiteLeft"
						:value="appetite_left">
				</view>
			</view>
			<dividersm></dividersm>

			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">右侧量（可选）</text>
				<view class="flex mr-2 align-center">
					<input class="text-right mr-2" type="number" placeholder="请输入ml数" @input="onAppetiteRight"
						:value="appetite_right">
				</view>
			</view>
			<dividersm></dividersm>

			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">总量</text>
				<view class="flex mr-2 align-center">
					<text class="mr-1 font text-dark" v-if="appetite">{{appetite}} ml</text>
					<text class="iconfont icon-arrow-right font text-secondary"></text>
				</view>
			</view>
			<dividersm></dividersm>

			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">左侧时长（可选）</text>
				<view class="flex mr-2 align-center">
					<input class="text-right mr-2" type="number" placeholder="请输入分钟数" @input="onDurationLeft"
						:value="duration_left">
				</view>
			</view>
			<dividersm></dividersm>

			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">右侧时长（可选）</text>
				<view class="flex mr-2 align-center">
					<input class="text-right mr-2" type="number" placeholder="请输入分钟数" @input="onDurationRight"
						:value="duration_right">
				</view>
			</view>
			<dividersm></dividersm>

			<view class="flex justify-between align-center" @click="durationTotalAction()">
				<text class="text-secondary font m-2">总时长</text>
				<view class="flex mr-2 align-center">
					<text class="mr-1 font text-dark" v-if="duration">{{duration}}</text>
					<text class="iconfont icon-arrow-right font text-secondary"></text>
				</view>
			</view>
			<dividersm></dividersm>
		</view>

		<text class="h5 mx-2">备注</text>
		<view class="bg-white rounded shadow mx-2 mt-1 textarea-content">
			<textarea placeholder="选填" :value="remark" @blur="bindTextAreaBlur"
				class="textarea-content2 mx-2 text-dark font"></textarea>
		</view>


		<view class="flex justify-center mt-5">
			<view
				class="btn-common h5 bg-btn-common-un rounded-circle shadow text-white flex align-center justify-center "
				:class="{'btn-sex-girl-select':isCanSave}" @click="saveAction()">
				保存</view>
		</view>

	</view>

</template>

<script>
	import getDateTime from '@/common/getdateTime.js';

	export default {
		data() {
			return {
				babyId: 0,

				start_at: '',

				appetite_left: '',
				appetite_right: '',

				duration_left: '',
				duration_right: '',
				duration_type: -1,
				duration: '',

				remark: ''
			}
		},
		computed: {
			isCanSave() {
				let duration = parseInt(this.duration_left) + parseInt(this.duration_right)
				let appetite = parseInt(this.appetite_left) + parseInt(this.appetite_right)

				if (this.start_at.length > 0 && appetite > 0 && duration > 0 && this.duration_type >= 0) {
					return true
				}
				return false
			},
			appetite() {
				let appetite = parseInt(this.appetite_left) + parseInt(this.appetite_right)
				return appetite
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
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		methods: {
			bindTextAreaBlur: function(e) {
				this.remark = e.detail.value
			},
			// 输入事件
			onDurationLeft(event) {
				this.duration_left = event.target.value
			},
			onDurationRight(event) {
				this.duration_right = event.target.value
			},
			onAppetiteLeft(event) {
				this.appetite_left = event.target.value
			},
			onAppetiteRight(event) {
				this.appetite_right = event.target.value
			},

			appetiteAction(isLeft) {
				let itemList = []
				for (let i = 0; i <= 600; i += 5) {
					itemList.push(i)
				}
				let that = this
				uni.showActionSheet({
					title: isLeft ? '左侧量' : '右侧量',
					itemList: itemList,
					success: function(res) {
						if (isLeft) {
							that.appetite_left = itemList[res.tapIndex]
						} else {
							that.appetite_right = itemList[res.tapIndex]
						}
					}
				})
			},
			durationAction(isLeft) {
				let itemList = []
				for (let i = 0; i <= 30; i++) {
					itemList.push(i)
				}
				let that = this
				uni.showActionSheet({
					title: isLeft ? '左侧时长' : '右侧时长',
					itemList: itemList,
					success: function(res) {
						if (isLeft) {
							that.duration_left = itemList[res.tapIndex]
						} else {
							that.duration_right = itemList[res.tapIndex]
						}
					}
				})
			},
			durationTotalAction() {
				let duration = parseInt(this.duration_left) + parseInt(this.duration_right)
				if (duration == 0) {
					this.duration = ''
					return
				}
				let durationMax = this.duration_left > this.duration_right ? this.duration_left : this.duration_right
				let itemList = [
					'双侧同时吸奶(' + durationMax + '分钟)',
					'双侧分开吸奶(' + duration + '分钟)'
				]
				let that = this
				uni.showActionSheet({
					title: '总时长',
					itemList: itemList,
					success: function(res) {
						that.duration_type = res.tapIndex
						that.duration = itemList[res.tapIndex]
					}
				})
			},
			saveAction() {
				this.netAdd()
			},

			netAdd() {
				let item = {
					start_at: this.start_at,

					appetite_left: this.appetite_left,
					appetite_right: this.appetite_right,

					duration_left: this.duration_left,
					duration_right: this.duration_right,
					duration_type: this.duration_type,

					remark: this.remark,

					babyId: this.babyId
				}
				let that = this
				let url = this.$Url.Url.SuckleAdd
				this.$H.post(url, item, {}, {
					token: true
				}).then(res => {
					if (res == -1) return

					uni.showToast({
						title: '添加成功'
					})
					setTimeout(function() {
						uni.navigateBack()
					}, 1000)

				})
			}
		}
	}
</script>

<style>
	.btn-sex-girl-select {
		color: #fff;
		background-image: linear-gradient(135deg, #FE6F7D 10%, #FE687F 100%);
	}
</style>
