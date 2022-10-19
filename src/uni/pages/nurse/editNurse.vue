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

			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">2小时提醒</text>
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
				class="btn-common h5 bg-btn-common-un rounded-circle shadow text-white flex align-center justify-center "
				:class="{'btn-com-select':isCanSave}" @click="saveAction()">
				保存</view>
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

				start_at: '',

				duration_left: '',
				duration_right: '',

				remark: '',

				checked: false,
				tmplId: []
			}
		},
		computed: {
			isCanSave() {
				let duration = parseInt(this.duration_left) + parseInt(this.duration_right)

				if (this.start_at.length > 0 && duration > 0) {
					return true
				}
				return false
			}
		},
		onLoad: function(option) {
			if (option.item) {
				let item = JSON.parse(option.item)
				this.start_at = item.start_at
				this.duration_left = item.duration_left
				this.duration_right = item.duration_right
			}

			let key = this.$C.babyIdKey
			this.babyId = uni.getStorageSync(key)

			if (this.start_at.length == 0) {
				let that = this
				setTimeout(function() {
					that.start_at = getDateTime.dateTimeStr('y-m-d h:i:s')
				}, 300)
			}

			this.tmplId = this.$C.TmplId
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
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

			durationAction(isLeft) {
				let itemList = []
				for (let i = 0; i <= 120; i++) {
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
			saveAction() {
				this.netAdd()
			},

			netAdd() {
				let item = {
					start_at: this.start_at,

					duration_left: this.duration_left,
					duration_right: this.duration_right,

					remark: this.remark,

					babyId: this.babyId,
					
					remind: this.checked // 添加提醒项
				}
				let that = this
				let url = this.$Url.Url.NurseAdd
				this.$H.post(url, item, {}, {
					token: true
				}).then(res => {
					if (res == -1) return

					if (res == -1) return

					uni.showToast({
						title: '添加成功'
					})
					setTimeout(function() {
						uni.navigateBack({
							delta: 2
						})
					}, 1000)

				})
			}
		}
	}
</script>

<style>

</style>
