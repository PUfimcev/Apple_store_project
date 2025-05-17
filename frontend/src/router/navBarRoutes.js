import MainView from "@/views/pages/main/MainView.vue";

export default [
    {
        path: '/',
        name: 'main',
        component: MainView,
    },
    {
        path: '/store',
        name: 'store',
        component: () => import('../views/pages/store/StoreView.vue'),
    },
    {
        path: '/:categorySlug',
        name: 'category',
        component: () => import('../views/pages/category/CategoryView.vue'),
    },
];
