<template>
	<view>
		<view class="top flex flex-column align-center justify-center ">
			<view class="top-header rounded-circle bg-common ">
				<image class="top-header" src="../../static/img/boy.png" mode="aspectFit" v-if="item.sex==1"></image>
				<image class="top-header" src="../../static/img/girl.png" mode="aspectFit" v-else></image>
			</view>
			<view class="flex">
				<!-- <text class="h5">编辑宝宝信息</text> -->
				<view class="del-btn border rounded-circle flex align-center px-1 mt-1 animated" hover-class="wobble"
					v-if="!isAdd" @click="delBabyAction()">
					<text class="iconfont icon-delete font-lg text-dark"></text>
					<text class="font-sm text-dark mx-1">删除</text>
				</view>
			</view>
		</view>

		<dividersm></dividersm>
		<view class="list-item flex justify-between align-center bg-white">
			<text class="ml-2 h5 text-dark">宝宝名字</text>
			<input class="text-right mr-2" type="text" placeholder="请填写宝宝名字" @input="onNickname" :value="item.nickname">
		</view>

		<dividersm></dividersm>
		<view class="list-item flex justify-between align-center bg-white">
			<text class="ml-2 h5 text-dark">宝宝性别</text>
			<view class="flex align-center mr-2">
				<view class="ml-2 btn-sex" :class="{'btn-sex-boy-select':isBoy}" @click="selectSexAction(1)">男孩</view>
				<view class="ml-2 btn-sex " :class="{'btn-sex-girl-select':isGirl}" @click="selectSexAction(2)">女孩
				</view>

			</view>
		</view>

		<dividersm></dividersm>
		<view class="list-item flex justify-between align-center bg-white">
			<text class="ml-2 h5 text-dark">宝宝出生日期</text>
			<view class="flex-1 text-right align-center mr-2">
				<uni-datetime-picker v-model="item.birthday" :border="false" />
			</view>
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
	import getDateTime from '@/common/getdateTime.js'

	export default {
		data() {
			return {
				isAdd: true,
				item: {
					id: 0,
					nickname: '',
					sex: 2,
					avatar: '',
					birthday: '',
					createdBy: 0,
					createdAt: '',
					sel: 1
				}
			}
		},
		computed: {
			isGirl() {
				return this.item.sex != 1
			},
			isBoy() {
				return this.item.sex == 1
			},
			isCanSave() {
				if (this.item.nickname.length > 0 && this.item.birthday.length > 0) {
					return true
				}
				return false
			}
		},
		onLoad: function(option) {
			if (option.item) {
				this.item = JSON.parse(option.item)
				this.isAdd = false
			} else {
				let that = this
				setTimeout(function() {
					that.birthday = getDateTime.dateTimeStr('y-m-d h:i:s')
				}, 300)
			}
		},
		onShareAppMessage(res) {
			return {
				title: '宝宝点点滴滴',
				path: '/pages/index/index'
			}
		},
		methods: {
			// 输入事件
			onNickname(event) {
				this.item.nickname = event.target.value
			},
			selectSexAction(idx) {
				this.item.sex = idx
			},
			saveAction() {
				if (this.isCanSave) {
					if (this.isAdd) {
						this.netAddBaby()
					} else {
						this.netEditBaby()
					}
				}
			},
			delBabyAction() {
				let that = this
				uni.showModal({
					title: '警告',
					content: '确认删除宝宝信息？',
					confirmText: '删除',
					success: function(res) {
						if (res.confirm) {
							that.netDelBaby()
						}
					}
				})
			},
			netAddBaby() {
				let that = this
				let url = this.$Url.Url.BabyAdd
				this.$H.post(url, this.item, {}, {
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
			},
			netEditBaby() {
				let that = this
				let url = this.$Url.Url.BabyEdit
				this.$H.put(url, this.item, {
					token: true
				}, {}).then(res => {
					if (res == -1) return
					
					uni.showToast({
						title: '添加成功'
					})
					setTimeout(function() {
						uni.navigateBack()
					}, 1000)
				})
			},
			netDelBaby() {
				let that = this
				let url = this.$Url.Url.BabyDelete
				this.$H.delete(url, {
					ids: [that.item.id]
				}, {
					token: true
				}, {}).then(res => {
					if (res == -1) return
					
					uni.showToast({
						title: '删除成功'
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
	.top {
		height: 300rpx;
	}

	.btn-sex {
		width: 100rpx;
		height: 46rpx;

		text-align: center;
		font-size: 25rpx;
		line-height: 46rpx;
		border-radius: 100rpx;

		background-color: white;
		color: #343a40;

		border-width: 1rpx;
		border-style: solid;
		border-color: #F2F2F2;
	}

	.btn-sex-girl-select {
		color: #fff;
		background-image: linear-gradient(135deg, #FE6F7D 10%, #FE687F 100%);
	}

	.btn-sex-boy-select {
		color: #fff;
		background-image: linear-gradient(135deg, #B5AFE0 10%, #9288BB 100%);
	}
</style>
