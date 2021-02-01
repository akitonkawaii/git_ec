import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
Vue.use(TurbolinksAdapter)

// bootstrap-vue追記ここから
import BootstrapVue from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
Vue.use(BootstrapVue)
// bootstrap-vue追記ここまで

// bootstrap-vue-icon追記ここから
//import { BootstrapVue, BootstrapVueIcons } from 'bootstrap-vue'
//Vue.use(BootstrapVueIcons)
// bootstrap-vue-icon追記ここまで

// buefy追記ここから
//import Buefy from 'buefy'
//import 'buefy/dist/buefy.css'
//Vue.use(Buefy)
// buefy追記ここまで

// vuetify追記ここから
//import Vuetify from 'vuetify'
//import 'vuetify/dist/vuetify.min.css'
//Vue.use(Vuetify)
// vuetify追記ここまで


document.addEventListener('turbolinks:load', () => {
  //Vueを効かせるため宣言
  const bv = new Vue({
    el: '#vuescope',
    data: {
    },
  })
  
  const vuetify = new Vue({
    el: '#vuetify',
    data: {
    },
  })
  
  const app = new Vue({
    el: '#app',
    data: {
      message: "データバインディング"
    },
  })
})
