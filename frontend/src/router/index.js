import { createRouter, createWebHistory } from 'vue-router'
import MainView from '../views/pages/main/MainView.vue'
import navBarRoutes from "@/router/navBarRoutes.js";

const router = createRouter({
    history: createWebHistory(),
    routes: [
        ...navBarRoutes,
        {
            path: '/:pathMatch(.*)*',
            name: '404',
            component: () => import('../views/pages/NotFoundView.vue'),
        }
    ],
})

export default router
