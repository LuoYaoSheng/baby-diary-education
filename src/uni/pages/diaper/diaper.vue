<template>
	<view>
		<view class="bg-white rounded shadow m-2">
			<view class="flex justify-between align-center">
				<text class="text-secondary font m-2">开始时间</text>
				<view class="flex mr-2 align-center">
					<uni-datetime-picker v-model="start_at" :border="false" />
				</view>
			</view>
		</view>

		<text class="m-2 h5">选择类型和状态</text>

		<view class="bg-white rounded shadow m-2 ">
			<view class="flex flex-wrap ">
				<block v-for="(item,idx) in typeList">
					<view class="diaperItem flex align-center justify-center" @click="typeSelectAction(idx)">
						<view class="mx-2 font flex align-center justify-center bg-common rounded-circle text-secondary"
							:class="{'diaperItem-select': typeIndex==idx}" style="width: 100%;">
							<text class="iconfont mr-1" :class="item.icon"></text>
							<text class="h5">{{item.title}}</text>
						</view>
					</view>
				</block>
			</view>

			<text class="mx-2 h5 text-dark">尿布重量</text>
			<view class="flex flex-wrap ">
				<block v-for="(item,idx) in weightList">
					<view class="diaperItem flex align-center justify-center" @click="weightSelectAction(idx)">
						<view class="mx-2 font flex align-center justify-center bg-common rounded-circle text-secondary"
							:class="{'diaperItem-select':weightIndex==idx}" style="width: 100%;">
							<text class="h5">{{item.title}}</text>
						</view>
					</view>
				</block>
			</view>

			<text class="mx-2 h5 text-dark">便便状态</text>
			<view class="flex flex-wrap ">
				<block v-for="(item,idx) in statusList">
					<view class="diaperItem flex align-center justify-center" @click="statusSelectAction(idx)">
						<view class="mx-2 font flex align-center justify-center bg-common rounded-circle text-secondary"
							:class="{'diaperItem-select':statusIndex==idx}" style="width: 100%;">
							<text class="h5">{{item.title}}</text>
						</view>
					</view>
				</block>
			</view>

			<text class="mx-2 h5 text-dark">便便颜色</text>
			<view class="flex flex-wrap mx-2">
				<block v-for="(item,idx) in colorList">
					<view class="flex flex-column align-center m-1" @click="colorSelectAction(idx)">
						<view class="color-item rounded-circle flex align-end justify-end" :class="item.color">
							<text class="iconfont icon-success-filling text-common-red" v-if="colorIndex==idx"></text>
						</view>
						<text class="text-secondary font">{{item.title}}</text>
					</view>
				</block>
			</view>

		</view>

		<text class="h5 mx-2">备注</text>
		<view class="bg-white rounded shadow mx-2 mt-1 textarea-content">
			<textarea placeholder="选填" :value="remark" @blur="bindTextAreaBlur"
				class="textarea-content2 mx-2 text-dark font"></textarea>
		</view>


		<view class="flex justify-center mt-5 ">
			<view
				class="btn-common h5 bg-btn-common-un rounded-circle shadow text-white flex align-center justify-center "
				:class="{'btn-com-select':isCanSave}" @click="saveAction()">
				保存</view>
		</view>

		<view class="" style="height: 64rpx;"></view>
	</view>
</template>

<script>
	import getDateTime from '@/common/getdateTime.js'
	export default {
		data() {
			return {
				babyId: 0,
				start_at: '',
				remark: '',
				typeIndex: 0,
				typeList: [],
				weightIndex: 0,
				weightList: [],
				statusIndex: 0,
				statusList: [],

				colorIndex: 0,
				colorList: [],
			}
		},
		computed: {
			isCanSave() {
				return true
			}
		},
		onLoad() {

			this.typeList = this.$T.diaperTypeList()
			this.weightList = this.$T.diaperWeightList()
			this.statusList = this.$T.diaperStatusList()
			this.colorList = this.$T.diaperColorList()

			let that = this
			setTimeout(function() {
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
			typeSelectAction(idx) {
				this.typeIndex = idx
			},
			weightSelectAction(idx) {
				this.weightIndex = idx
			},
			statusSelectAction(idx) {
				this.statusIndex = idx
			},
			colorSelectAction(idx) {
				this.colorIndex = idx
			},
			saveAction() {
				this.netAdd()
			},

			netAdd() {

				if (this.start_at.length == 0) {
					this.start_at = getDateTime.dateTimeStr('y-m-d h:i:s')
				}

				let item = {
					start_at: this.start_at,

					type: this.typeIndex,
					weight: this.weightIndex,
					status: this.statusIndex,
					colour: this.colorIndex,

					remark: this.remark,

					babyId: this.babyId
				}
				let that = this
				let url = this.$Url.Url.DiaperAdd
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
	.diaperItem {
		width: 33.3%;
		height: 96rpx;
	}

	.diaperItem-select {
		color: white;
		background-image: linear-gradient(135deg, #FFB888 10%, #F69F60 100%);
	}

	.color-item {
		width: 64rpx;
		height: 64rpx;
	}
</style>
