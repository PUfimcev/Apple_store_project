import {createRouter, createWebHistory} from 'vue-router'

import navBarRoutes from "@/router/navBarRoutes.js"
import {useAuthStore} from "@/stores/authStore.js";
import {storeToRefs} from "pinia";

const routes = [
    ...navBarRoutes,
    {
        path: '/:categorySlug/:productSlug',
        name: 'product',
        component: () => import('../views/pages/product/ProductView.vue'),
        props: true
    },
    {
        path: '/cart',
        name: 'cart',
        component: () => import('../views/pages/cart/CartView.vue')
    },
    {
        path: '/check-out',
        name: 'checkout',
        component: () => import('../views/pages/checkout/CheckoutView.vue'),
        beforeEnter: (to, from) => {
            const authStore = useAuthStore()
            const {isLoggedIn} = storeToRefs(authStore)
            return isLoggedIn.value ? true : {name: 'login'}
        }
    },
    {
        path: '/login',
        name: 'login',
        component: () => import('../views/pages/authorization/login/LoginView.vue'),
    },
    {
        path: '/registration',
        name: 'registration',
        component: () => import('../views/pages/authorization/registration/RegistrationView.vue'),
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
