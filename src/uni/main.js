import App from './App'

// #ifndef VUE3
import Vue from 'vue'
Vue.config.productionTip = false
App.mpType = 'app'
const app = new Vue({
    ...App
})

// 引入全局组件
import dividersm from './components/dividersm.vue';
Vue.component('dividersm',dividersm)

// 引入配置文件
import $C from './common/config.js';
Vue.prototype.$C = $C

//接口
import $Url from './common/url.js';
Vue.prototype.$Url = $Url

// 引入请求库
import $H from './common/request.js';
Vue.prototype.$H = $H

//工具
import $T from './common/tool.js';
Vue.prototype.$T = $T

app.$mount()

// #endif

// #ifdef VUE3
import { createSSRApp } from 'vue'
export function createApp() {
  const app = createSSRApp(App)
  return {
    app
  }
}
// #endif