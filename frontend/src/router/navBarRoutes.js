import MainView from "@/views/pages/MainView.vue";
import NotFoundView from "@/views/pages/NotFoundView.vue";

export default [
    {
        path: '/',
        name: 'main',
        component: MainView,
    },
    {
        path: '/about',
        name: 'about',
        // route level code-splitting
        // this generates a separate chunk (About.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () => import('../views/pages/AboutView.vue'),
    },
    {
        path: '/:pathMatch(.*)*',
        name: '404',
        component: () => import('../views/pages/NotFoundView.vue'),
    }
];
