import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import {createBootstrap} from 'bootstrap-vue-next'
import axios from 'axios'


import App from './App.vue'
import router from './router'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue-next/dist/bootstrap-vue-next.css'

axios.defaults.baseURL = import.meta.env.VITE_API_BASE_URL;

const app = createApp(App)

app.use(createPinia())
app.use(createBootstrap()) // Important
app.use(router)

app.config.globalProperties.$axios = axios; // Глобальное использование

app.mount('#app')
