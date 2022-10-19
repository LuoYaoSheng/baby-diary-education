# baby-diary-education

#### 介绍

一个针对宝宝的小而美的工具，方便宝妈们记录宝宝的吃喝拉撒。

当前仅支持[微信小程序](https://i2kai.com/SmartBLE)，并配备管理后台。

当前版本：uni-app + go-api + vue-web。

源码地址：[Github](https://github.com/LuoYaoSheng/baby-diary-education) | [Gitee](https://gitee.com/luoyaosheng/baby-diary-education)

#### ![tutieshi_220x480_49s](https://tva1.sinaimg.cn/large/008vxvgGly1h7acceurhlg30640dc4qq.gif)

#### 功能

- [x] 母乳亲喂

- [x] 奶瓶喂养

- [x] 换尿布

- [x] 吸奶器吸奶

- [x] 宝宝管理

- [x] 日志统计

   #### 快速体验

   ![二维码](https://tva1.sinaimg.cn/large/008vxvgGly1h79p1ncmsnj30by0byq3j.jpg) 

#### 项目搭建

##### 克隆代码

```shell
$ git clone https://github.com/LuoYaoSheng/baby-diary-education
```

##### 代码目录 

```shell
- doc 
	- 宝宝点滴.mp        // 原型图，使用 Mockplus 查看
	- baby-diary.xmind  // 思维导图，使用 xmind 查看
- src
	- uni               // 小程序源码，使用 HBuilderX 查看
	- web               // 简易管理后台UI，使用 WebStorm 查看
	- admin             // 简易管理后台，使用 GoLand 查看
```

##### 配置说明

导入数据库

```
将 src/admin/data/babypdiary.sql 导入到数据库中
```

修改后端配置 

```
编辑 scr/admin/config.toml 文件

...
[database]
    link  = "mysql:root:root@tcp(localhost:3306)/baby-diary" // mysql对应信息
...
# Redis数据库配置
[redis]
    open = true #是否开启 redis 缓存 若不开启使用gchache缓存方式
    default = "redis:16379,9,123456?idleTimeout=20&maxActive=100" // redis对应信息
...
# 微信小程序
[wx-miniprogram]
    appid = ""
    secret = ""  
    tmplId = ""  // 订阅ID
```

修改小程序配置

```shell
1.编辑 src/uni/common/tool.js 文件

...
// 获取api本地参数
function apiOptions() {
	let options = {
		header: 'http://',
		host: '127.0.0.1:8200/v1', // 本地地址或自定义地址
		port: 80,
		duration: 3000
	}
	return options
}
...

2.编辑 src/uni/manifest.json 文件

基础配置 > 修改 uni-app应用标识（AppID）
微信小程序 > 修改 微信小程序AppID
```

修改前端配置

```shell
编辑 src/web/.env.development 文件

# 开发环境配置
ENV = 'development'
port = 9002
# gfast管理系统/开发环境
VUE_APP_BASE_API = 'http://localhost:8200'

# 路由懒加载
VUE_CLI_BABEL_TRANSPILE_MODULES = true
```

##### 启动项目

启动后端

```shell
cd src/admin   // 进入后端目录
go mod tidy    // 安装依赖
go run main    // 启动项目
```

启动前端

```shell
cd src/web     // 进入前端目录
npm install    // 安装依赖
npm run dev    // 开发模式启动项目
```

启动微信小程序

```shell
使用 HBuilderX 打开 src/uni，并通过启动微信开发者工具进行运行查看
```

   #### 交互图

![交互图](https://tva1.sinaimg.cn/large/008vxvgGly1h7ajsu7onej31ew0r2gpt.jpg)

#### 思维导图

![image-20221018220438823](https://tva1.sinaimg.cn/large/008vxvgGly1h79slmhgqpj30we0hrabw.jpg)

   ## About

   主网：<https://i2kai.com>

   微博：<https://weibo.com/u/3319790374>

   Email：[1034639560@qq.com](1034639560@qq.com)

   Github：<https://github.com/LuoYaoSheng>  

   码云：<https://gitee.com/luoyaosheng>

   私人微信号：iot-runThings 

   交流QQ群：699916110

   <img src="https://tva1.sinaimg.cn/large/008vxvgGly1h7ajvw96jwj30u01hddjq.jpg" alt="image-20221019135038420" style="zoom:33%;" /> 
