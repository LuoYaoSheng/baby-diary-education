import $C from '@/common/config.js';
import $T from '@/common/tool.js';
// import { json } from 'node:stream/consumers';

export default {
	common: {
		method: 'GET',
		header: {
			"content-type": "application/json"
		},
		data: {}
	},
	request(options = {}) {
		let ops = $T.apiOptions()

		options.url = ops.header + ops.host + options.url
		options.method = options.method || this.common.method
		options.header = options.header || this.common.header

		if (options.token) {
			options.data['token'] = uni.getStorageSync($C.TokenKey)
		}

		return new Promise((res, rej) => {
			uni.request({
				...options,
				success: (result) => {
					// 返回原始数据
					// console.log(result, '请求数据', options.url, '接口地址')
					if (options.native) {
						return res(result)
					}
					// 请求服务端失败
					if (result.statusCode !== 200 && !options.notoast) {
						uni.showToast({
							title: result.data.msg || '接口请求失败',
							icon: 'none'
						})
						return res(-1)
					}
					// 业务错误
					if (result.data.code != 0) {
						uni.showToast({
							title: result.data.msg || '接口请求失败',
							icon: 'none'
						})

						if (result.data.msg.indexOf('登录过期') != -1) {
							console.log('----- 过期清除token ---- ')
							uni.removeStorageSync($C.TokenKey)
						}

						return res(-1)
					}
					// 成功
					res(result.data.data)
				},
				fail: (error) => {
					uni.showToast({
						title: error.errMsg || '接口请求失败',
						icon: 'none'
					});
					return res(-1)
				},
				complete() {}
			});
		})
	},
	get(url, data = {}, options = {}) {
		options.url = url
		options.data = data
		options.method = 'GET'
		return this.request(options)
	},
	post(url, data = {}, header = {}, options = {}) {
		options.url = url
		options.data = data
		options.header = header
		options.method = 'POST'
		return this.request(options)
	},
	put(url, data = {}, options = {}) {
		options.url = url
		options.data = data
		options.method = 'PUT'
		return this.request(options)
	},
	delete(url, data = {}, options = {}) {
		options.url = url
		options.data = data
		options.method = 'DELETE'
		return this.request(options)
	},
	upload(url, options = {}) {
		options.url = $C.baseUrl + $C.apiUrl + url
		options.header = options.header || {}

		return new Promise((res, rej) => {
			uni.uploadFile({
				...options,
				success: (uploadFileRes) => {
					console.log('上传图片', uploadFileRes);
					if (uploadFileRes.statusCode !== 200) {
						return uni.showToast({
							title: '上传图片失败',
							icon: 'none'
						});
					}
					let data = JSON.parse(uploadFileRes.data)
					res(data)
				},
				fail: (err) => {
					rej(-1)
				},
				complete: () => {
					setTimeout(() => {
						uni.hideLoading()
						uni.stopPullDownRefresh()
					}, 200)
				}
			});
		})

	}
}
