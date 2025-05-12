import { createRouter, createWebHistory } from 'vue-router'
import MainView from '../views/pages/MainView.vue'
import navBarRoutes from "@/router/navBarRoutes.js";

const router = createRouter({
    history: createWebHistory(),
    routes: [
        ...navBarRoutes,
    ],
})

export default router
