import Vue from 'vue'
import App from './App.vue'
import VueTypedJs from 'vue-typed-js'
import 'bootstrap/dist/css/bootstrap.min.css'

Vue.config.productionTip = false
Vue.use(VueTypedJs)

new Vue({
  render: h => h(App),
}).$mount('#app')
