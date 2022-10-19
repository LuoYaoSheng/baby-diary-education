<template>
	<view>
		<view class="flex mt-1">
			<view class="mx-2 bg-info rounded-circle indexItem-left flex align-center justify-center"
				:class="itemExt.bgColor">
				<text class="iconfont font-lg text-white" :class="itemExt.iconColor"></text>
			</view>
			<view class="recored-item2 flex-1 rounded shadow flex mr-2">
				<view class="pl-2 flex flex-column flex-1">
					<text class="font-sm text-secondary my-1">{{itemObj.time}} ({{itemExt.timeStr}})</text>
					<text class="h5" :class="itemExt.color">{{itemObj.title}}</text>
					<view class="flex align-center my-1">
						<text class="h5 text-dark">{{itemObj.subTitle2}}</text>
						<view class="item-circle ml-1" :class="itemObj.color" v-if="itemObj.type==2"></view>
					</view>
				</view>
				<view class="indexItem-left flex align-center justify-center animated" hover-class="wobble"
					@click="delAction()">
					<text class="iconfont icon-close font-lg text-dark"></text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "indexItem",
		props: {
			itemObj: {
				type: Object,
				default: function() {
					return {}
				}
			}
		},
		data() {
			return {
				
			}
		},
		computed: {
			isHas() {
				return this.itemObj.id > 0
			},
			itemExt() {
				let icon = 'icon-pingwei'
				let color = 'text-common-red'
				let bgColor = 'bg-common-red'
				switch (this.itemObj.type) {
					case 0: //母乳
						icon = 'icon-muru'
						color = 'text-common-red'
						bgColor = 'bg-common-red'
						break;
					case 1: //瓶喂
						icon = 'icon-pingwei'
						color = 'text-common-red'
						bgColor = 'bg-common-red'
						break;
					case 2: //换尿布
						icon = 'icon-niaobushi'
						color = 'text-common-yellow'
						bgColor = 'bg-common-yellow'
						break;
					default: //吸奶器
						icon = 'icon-xinai'
						color = 'text-common-blue'
						bgColor = 'bg-common-blue'
						break;
				}
				return {
					icon: icon,
					color: color,
					bgColor: bgColor,
					iconColor: icon + ' ' + color,
					timeStr: this.itemObj.startAt.substring(5,16)
				}
			}
		},
		methods: {
			delAction() {
				this.$emit('delItem', this.itemObj)
			}
		}
	}
</script>

<style>
	.indexItem-left {
		width: 76rpx;
		height: 76rpx;
	}

	.item-circle {
		width: 30rpx;
		height: 30rpx;
		border-radius: 30rpx;
	}
</style>
