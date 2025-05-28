import './assets/main.css'

import {createApp} from 'vue'
import {createPinia} from 'pinia'
import {createBootstrap} from 'bootstrap-vue-next'
import piniaPluginPersistedState from "pinia-plugin-persistedstate"

import App from './App.vue'
import router from './router'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue-next/dist/bootstrap-vue-next.css'


const store = createPinia()
store.use(piniaPluginPersistedState)
const app = createApp(App)

app.use(store)
app.use(createBootstrap())
app.use(router)
app.mount('#app')



