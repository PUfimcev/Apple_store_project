import { createRouter, createWebHistory } from 'vue-router'

import navBarRoutes from "@/router/navBarRoutes.js";

const routes = [
    ...navBarRoutes,
    {
        path: '/:categorySlug/:productSlug',
        name: 'product',
        component: () => import('../views/pages/product/ProductView.vue'),
        props: true
    },
    {
        // path: '/store/:subcategorySlug',
        // name: 'productStore',
        // component: () => import('../views/pages/store/productStore/ProductStoreView.vue'),
    },
    {
        path: '/:pathMatch(.*)*',
        name: '404',
        component: () => import('../views/pages/NotFoundView.vue'),
    }
];


const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router
