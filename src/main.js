import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import Storage from "vue-ls";
// import { BootstrapVue } from './bootstrap-vue'

// import 'bootstrap/dist/css/bootstrap.css'
// import 'bootstrap-vue/dist/bootstrap-vue.css'
Vue.prototype.$test = "HJAllasdölfkjaslkf"; 
Vue.prototype.$http = axios
Vue.config.productionTip = false
Vue.use(router)
Vue.prototype.$cart = []; 
// Vue.use(BootstrapVue)

const options = {
  namespace: "vuejs__",
  name: "ls",
  storage: "local"
};
Vue.use(Storage, options);
Vue.config.productionTip = false;

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
