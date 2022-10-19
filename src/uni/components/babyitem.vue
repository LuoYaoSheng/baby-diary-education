<template>
	<view class="baby-item my-1 px-2 flex flex-column rounded shadow bg-white">
		<view class="flex-1 flex align-center">
			<view class="top-header rounded-circle bg-common mr-2">
				<image class="top-header" src="../static/img/boy.png" mode="aspectFit" v-if="item.sex==1"></image>
				<image class="top-header" src="../static/img/girl.png" mode="aspectFit" v-else></image>
			</view>

			<view class="flex-1 flex flex-column">
				<view class="text-dark">
					{{item.nickname}} <text class="font-sm text-secondary ml-1">({{days}} 天)</text>
				</view>
				<view class="flex align-center mt-1">
					<view class="bg-common-blue rounded-circle flex align-center justify-center" v-if="item.sex==1">
						<text class="iconfont icon-zhenhuichongtubiaozhizuo-kuozhan-1 font text-common-blue"></text>
					</view>
					<view class="bg-common-red rounded-circle flex align-center justify-center" v-else>
						<text class="iconfont icon-zhenhuichongtubiaozhizuo-kuozhan- font text-common-red"></text>
					</view>
					<text class="ml-1 font-sm text-secondary">生日：{{item.birthday}}</text>
				</view>
			</view>
			<view class="touch-btn rounded-circle flex align-center justify-center animated" hover-class="wobble"
				@click="toEditAction()">
				<text class="iconfont icon-edit h4 text-dark"></text>
			</view>
		</view>
		<view class="my-1 flex align-center" v-if="item.sel" @click="selectAction()">
			<text class="iconfont icon-success-filling font-lg text-common-red"></text>
			<text class="h5 ml-1">当前宝宝</text>
		</view>
		<view class="my-1 flex align-center" v-else @click="selectAction()">
			<text class="iconfont icon-radiobuttonunselect font-lg text-secondary"></text>
			<text class="h5 ml-1">切换宝宝</text>
		</view>
	</view>
</template>

<script>
	export default {
		name: "babyitem",
		props: {
			item: {
				type: Object,
				default: {}
			},
		},
		data() {
			return {

			}
		},
		computed: {
			days() {
				return this.$T.babyDays( this.item.birthday)
			}
		},
		methods: {
			toEditAction() {
				uni.navigateTo({
					url: "/pages/baby/editBaby?item=" + JSON.stringify(this.item)
				})
			},
			selectAction() {
				this.$emit('setCurBaby', this.item.id)
			}
		}
	}
</script>

<style>
	.baby-item {
		height: 210rpx;
	}
</style>
