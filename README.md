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
	- 宝宝点滴.mp         // 原型图，使用 Mockplus 查看
	- baby-diary.xmind  // 思维导图，使用 xmind 查看
- src
	- uni								// 小程序源码，使用 HBuilderX 查看
	- web								// 简易管理后台UI，使用 WebStorm 查看
	- admin							// 简易管理后台UI，使用 GoLand 查看
```

##### 配置说明

```shell
小程序配置
    修改appid
    修改服务器地址
数据库配置
    将xxx导入数据
    修改config，xxx
前端配置
    修改服务器地址
```

##### 启动项目

```shell
前端：
    cd src/web     // 进入前端目录
    npm install    // 安装依赖
    npm run dev    // 开发模式启动项目
后端：
		cd src/admin   // 进入后端目录
		go mod tidy    // 安装依赖
		go run main    // 启动项目 
小程序：
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
