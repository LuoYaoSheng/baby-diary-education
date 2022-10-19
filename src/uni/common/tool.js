import $C from '@/common/config.js';

// 获取api本地参数
function apiOptions() {
	let options = {
		header: 'http://',
		host: '127.0.0.1:8200/v1',
		port: 80,
		duration: 3000
	}
	return options
}


function printf() {
	var as = [].slice.call(arguments),
		fmt = as.shift(),
		i = 0;
	return fmt.replace(/%(\w)?(\d)?([dfsx])/ig, function(_, a, b, c) {
		var s = b ? new Array(b - 0 + 1).join(a || '') : '';
		if (c == 'd') s += parseInt(as[i++]);
		return b ? s.slice(b * -1) : s;
	})
}

//  秒数转化为时分秒
function formatSeconds(value) {
	//  秒
	let second = parseInt(value)
	//  分
	let minute = 0
	//  小时
	let hour = 0
	//  天
	//  let day = 0
	//  如果秒数大于60，将秒数转换成整数
	if (second > 60) {
		//  获取分钟，除以60取整数，得到整数分钟
		minute = parseInt(second / 60)
		//  获取秒数，秒数取佘，得到整数秒数
		second = parseInt(second % 60)
		//  如果分钟大于60，将分钟转换成小时
		if (minute > 60) {
			//  获取小时，获取分钟除以60，得到整数小时
			hour = parseInt(minute / 60)
			//  获取小时后取佘的分，获取分钟除以60取佘的分
			minute = parseInt(minute % 60)
			//  如果小时大于24，将小时转换成天
			//  if (hour > 23) {
			//    //  获取天数，获取小时除以24，得到整天数
			//    day = parseInt(hour / 24)
			//    //  获取天数后取余的小时，获取小时除以24取余的小时
			//    hour = parseInt(hour % 24)
			//  }
		}
	}

	// let result = '' + parseInt(second) + '秒'
	// if (minute > 0) {
	// 	result = '' + parseInt(minute) + '分' + result
	// }
	// if (hour > 0) {
	// 	result = '' + parseInt(hour) + '小时' + result
	// }
	//  if (day > 0) {
	//    result = '' + parseInt(day) + '天' + result
	//  }
	// console.log('result：', result)

	// let result = '' + parseInt(second)
	// if (minute > 0) {
	// 	result = '' + parseInt(minute) + ':' + result
	// }
	// if (hour > 0) {
	// 	result = '' + parseInt(hour) + ':' + result
	// }

	let result = printf("%02d", minute) + ':' + printf("%02d", second)

	return result
}

// 计算宝宝出生天数
function babyDays(value) {
	let value2 = value.replace(/-/g, '/')
	let n1 = new Date(value2)
	let n2 = new Date() //置或显示系统日期
	let n = n2.getTime() - n1.getTime()
	n = n / 1000 / 60 / 60 / 24
	return Math.ceil(n)
}

// 微博格式化方式
function timeago(value) {

	let value2 = value.replace(/-/g, '/')
	var date = new Date(value2)
	var dateTimeStamp = date.getTime()

	var minute = 1000 * 60 //把分，时，天，周，半个月，一个月用毫秒表示
	var hour = minute * 60
	var day = hour * 24
	var week = day * 7
	var halfamonth = day * 15
	var month = day * 30
	var now = new Date().getTime() //获取当前时间毫秒

	var diffValue = now - dateTimeStamp //时间差	

	if (diffValue < 0) {
		return ""
	}
	var minC = diffValue / minute //计算时间差的分，时，天，周，月
	var hourC = diffValue / hour
	var dayC = diffValue / day
	var weekC = diffValue / week
	var monthC = diffValue / month
	var result = ""
	if (monthC >= 1 && monthC <= 3) {
		result = " " + parseInt(monthC) + "月前"
	} else if (weekC >= 1 && weekC <= 3) {
		result = " " + parseInt(weekC) + "周前"
	} else if (dayC >= 1 && dayC <= 6) {
		result = " " + parseInt(dayC) + "天前"
	} else if (hourC >= 1 && hourC <= 23) {
		result = " " + parseInt(hourC) + "小时前"
	} else if (minC >= 1 && minC <= 59) {
		result = " " + parseInt(minC) + "分钟前"
	} else if (diffValue >= 0 && diffValue <= minute) {
		result = "刚刚"
	} else {
		var datetime = new Date()
		datetime.setTime(dateTimeStamp)
		var Nyear = datetime.getFullYear()
		var Nmonth = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1
		var Ndate = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate()
		var Nhour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime.getHours()
		var Nminute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes() : datetime.getMinutes()
		var Nsecond = datetime.getSeconds() < 10 ? "0" + datetime.getSeconds() : datetime.getSeconds()
		result = Nyear + "-" + Nmonth + "-" + Ndate
	}

	return result
}

// 排序函数
function objArraySort(objArr, key) {
	let result = objArr.slice(0)
	return result.sort((a, b) => a[key] - b[key])
}

function bottleTypeList() {
	return ['母乳', '奶粉', '母乳+奶粉', '水', '水奶', '其他']
}

function diaperTypeList() {
	return [{
		icon: 'icon-xuxu',
		title: '嘘嘘'
	}, {
		icon: 'icon-bianbian',
		title: '便便'
	}, {
		icon: 'icon-xuxubianbian',
		title: '嘘嘘+便便'
	}]
}

function diaperWeightList() {
	return [{
		icon: '',
		title: '很轻'
	}, {
		icon: '',
		title: '较干'
	}, {
		icon: '',
		title: '很重'
	}]
}

function diaperStatusList() {
	return [{
			icon: '',
			title: '普通软糊状'
		}, {
			icon: '',
			title: '较干'
		}, {
			icon: '',
			title: '颗粒状'
		}

		, {
			icon: '',
			title: '水样便'
		}, {
			icon: '',
			title: '水便分离'
		}, {
			icon: '',
			title: '蛋花汤状'
		}

		, {
			icon: '',
			title: '血便'
		}, {
			icon: '',
			title: '油性大便'
		}, {
			icon: '',
			title: '豆腐渣状'
		}

		, {
			icon: '',
			title: '泡沫状'
		}
	]
}

function diaperColorList() {
	return [{
		color: 'bg-diaper-yellow',
		title: '黄色'
	}, {
		color: 'bg-diaper-blackish-green',
		title: '墨绿色'
	}, {
		color: 'bg-diaper-brown',
		title: '棕色'
	}, {
		color: 'bg-diaper-green',
		title: '绿色'
	}, {
		color: 'bg-diaper-red',
		title: '红色'
	}, {
		color: 'bg-diaper-black',
		title: '黑色'
	}, {
		color: 'bg-diaper-Off-white',
		title: '灰白色'
	}]
}



function nurseToObj(obj) {
	let duration = obj.durationLeft + obj.durationRight
	let itemObj = {
		id: obj.id,
		time: timeago(obj.startAt),
		title: "母乳亲喂",
		subTitle: duration + ' Min',
		subTitle2: duration + '分钟(左 ' + obj.durationLeft + '分钟 | 右' + obj.durationRight + '分钟)',
		startAt: obj.startAt,
		type: 0,
	}
	if (obj.durationRight == 0) {
		itemObj.subTitle2 = '左侧喂奶 | ' + obj.durationLeft + '分钟'
	}
	if (obj.durationLeft == 0) {
		itemObj.subTitle2 = '右侧喂奶 | ' + obj.durationRight + '分钟'
	}

	return itemObj
}

function bottleToObj(obj) {
	let typeList = bottleTypeList()
	let itemObj = {
		id: obj.id,
		time: timeago(obj.startAt),
		title: "瓶喂|" + typeList[obj.type],
		subTitle: obj.appetite + 'ml',
		subTitle2: obj.appetite + 'ml',
		startAt: obj.startAt,
		type: 1,
	}
	return itemObj
}

function diaperToObj(obj) {
	let typeList = diaperTypeList()
	let statusList = diaperStatusList()
	let colorList = diaperColorList()
	let weightList = diaperWeightList()

	let itemObj = {
		id: obj.id,
		time: timeago(obj.startAt), //obj.startAt.slice(5,16),
		title: typeList[obj.type].title,
		subTitle: statusList[obj.status].title,
		subTitle2: statusList[obj.status].title + ' | ' + weightList[obj.weight].title + ' | ',
		startAt: obj.startAt,
		type: 2,
		color: colorList[obj.colour].color
	}
	return itemObj
}

function suckleToObj(obj) {
	let typeList = ['双侧同吸奶', '双侧分吸奶']
	let itemObj = {
		id: obj.id,
		time: timeago(obj.startAt), //obj.startAt.slice(5,16),
		title: typeList[obj.durationType],
		subTitle: obj.appetiteLeft + 'ml | ' + obj.appetiteRight + 'ml',
		subTitle2: obj.appetiteLeft + 'ml | ' + obj.appetiteRight + 'ml',
		startAt: obj.startAt,
		type: 3,
	}
	itemObj.subTitle2 = '左侧:' + obj.durationLeft + '分钟/' + obj.appetiteLeft + 'ml | ' + '右侧:' + obj.durationRight +
		'分钟/' + obj.appetiteRight + 'ml'
	return itemObj
}

// 接口声明区
export default {
	apiOptions,
	formatSeconds,
	babyDays,
	timeago,
	objArraySort,

	bottleTypeList,
	diaperTypeList,
	diaperWeightList,
	diaperStatusList,
	diaperColorList,

	nurseToObj,
	bottleToObj,
	diaperToObj,
	suckleToObj
}
