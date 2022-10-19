<template>
	<view class="flex-1 index-lump rounded shadow flex" :class="bgColor" v-if="isHas">
		<view class="flex-1 flex flex-column justify-center ml-2">
			<text class="font-sm text-white mb-2">{{itemObj.time}}</text>
			<text class="h6 text-white">{{itemObj.title}}</text>
			<text class="font-sm text-white font-weight-bolder">{{itemObj.subTitle}}</text>
		</view>
		<text class="iconfont icon-add-circle font-lg text-white m-1"></text>
	</view>

	<view class="flex-1 index-lump rounded shadow flex flex-column pl-1 justify-center" :class="bgColor" v-else>
		<text class="h5 text-white">{{tip}}</text>
		<text class="iconfont icon-enterinto font-lg text-white"></text>
	</view>

</template>

<script>
	export default {
		name: "indexlump",
		props: {
			itemObj: {
				type: Object,
				default: function() {
					return {}
				}
			},
			tip: {
				type: String,
				default: '最近喂奶'
			},
			bgColor: {
				type: String,
				default: 'bg-linear-red'
			},
		},
		data() {
			return {};
		},
		computed: {
			isHas() {
				return this.itemObj.id > 0
			}
		}
	}
</script>

<style>
	.index-lump {
		height: 200rpx;
	}
</style>
