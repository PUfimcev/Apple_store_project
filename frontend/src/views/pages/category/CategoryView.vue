<script setup>
import {useRoute, useRouter} from "vue-router"
import {onMounted, ref, watch} from "vue"
import {getDataBySlug} from "@/components/services/getDataBySlug.js"
import Loading from "@/components/Loading.vue"
import ErrorComponent from "@/components/ErrorComponent.vue"


import MacbookAir from "@/assets/icons/macbook_air.svg"
import MacbookPro from "@/assets/icons/macbook_pro.svg"
import iMac from "@/assets/icons/imac.svg"
import MacMini from "@/assets/icons/mac_mini.svg"
import MacStudio from "@/assets/icons/mac_studio.svg"
import iPhone16 from "@/assets/icons/iphone_16.svg"
import iPadAir from "@/assets/icons/ipad_air.svg"
import iPadMini from "@/assets/icons/ipad_mini.svg"
import Watch10 from "@/assets/icons/watch_s10.svg"
import WatchUltra2 from "@/assets/icons/watch_ultra.svg"
import AirPodsPro from "@/assets/icons/airpods_pro.svg"
import AirPodsMax from "@/assets/icons/airpods_max.svg"
import AirPods4 from "@/assets/icons/airpods_4.svg"
import Tv4K from "@/assets/icons/apple_tv4k.svg"
import HomePod from "@/assets/icons/homepod.svg"
import HomePodMini from "@/assets/icons/homepod_mini.svg"
import ProductCard from "@/views/pages/category/ProductCard.vue";


const router = useRouter()
const route = useRoute()
const categorySlug = ref('')
const categoryData = ref([])
const categoryError = ref(null)
const categoryLoading = ref(true)
const categoryIcon = ref(null)
const baseURL = import.meta.env.VITE_API_BASE_URL


const icons = {
    "macbook-air": MacbookAir,
    "macbook-pro": MacbookPro,
    "imac": iMac,
    "mac-mini": MacMini,
    "mac-studio": MacStudio,
    "iphone-16": iPhone16,
    "iphone-16-plus": iPhone16,
    "iphone-16-pro": iPhone16,
    "iphone-16-pro-max": iPhone16,
    "ipad-pro": iPadAir,
    "ipad-air": iPadAir,
    "ipad-mini": iPadMini,
    "apple-watch-series-10": Watch10,
    "apple-watch-ultra-2": WatchUltra2,
    "airpods-pro": AirPodsPro,
    "airpods-max": AirPodsMax,
    "airpods-4": AirPods4,
    "apple-tv-4k": Tv4K,
    "homepod": HomePod,
    "homepod-mini": HomePodMini,
}

const fetchCategoryData = async () => {
    const result = await getDataBySlug(`/api`, categorySlug.value)
    categoryData.value = result.data[0]
    categoryError.value = result.error
    categoryLoading.value = result.loading
}
const getImageCategory = (imageRoute) => `${baseURL}/storage/${imageRoute}`
const getIconCategory = (iconRoute) => categoryIcon.value = icons[iconRoute]

watch(route,
    (newRoute) => {
        categorySlug.value = newRoute.params.categorySlug
        fetchCategoryData()
    })

onMounted(() => {
    categorySlug.value = route.params.categorySlug
    fetchCategoryData()
})

</script>

<template>
    <transition name="fade" mode="out-in">
        <div class="category__page d-flex flex-column align-items-center justify-content-evenly w-100"
             :key="categorySlug">

            <div v-if="categoryLoading">
                <Loading/>
            </div>
            <div v-else-if="categoryError"
                 class="error_block d-flex align-items-center justify-content-center px-3 w-100">
                <ErrorComponent :error="categoryError"/>
            </div>

            <section v-else class="category__block w-100">
                <nav v-if="categoryData" class="category__nav_block w-100">
                    <div class="category_nav_wrapper mx-auto py-3">
                        <ul class="nav_list d-flex align-items-start justify-content-evenly justify-content-md-center w-100">
                            <li v-for="{ id, slug, name, is_new } in categoryData.subcategories" :key="id"
                                class="nav_item d-flex flex-column align-items-center justify-content-center"
                                @click="">

                                <div class="icon w-100 d-flex align-items-center justify-content-center">
                                    <img v-if="slug" :src="getIconCategory(slug)"
                                         :alt="name" class="category__icon"/>
                                </div>
                                <p>{{ name }}</p>
                                <p v-if="is_new" class="new">New</p>
                            </li>
                        </ul>
                    </div>
                </nav>
                <header
                    class="description_block d-flex flex-column flex-md-row align-items-center justify-content-between mx-auto">
                    <h1 class="title">{{ categoryData.name }}</h1>
                    <p class="description text-start fw-bold">{{ categoryData.description }}</p>
                </header>
                <main class="category__image_bloc d-flex align-items-center justify-content-center mx-auto">
                    <img v-if="categoryData.image_url" :src="getImageCategory(categoryData.image_url)"
                         :alt="categoryData.name" class="category__image"/>
                </main>
                <footer>
                    <div
                        class="category__footer_shop d-flex flex-column align-items-center justify-content-center py-5 px-3 px-md-0 text-center w-100">
                        <h1 class="title">Discover the latest in {{ categoryData.name }}</h1>
                        <p class="description text-start fw-bold">Explore the latest products and accessories in
                            {{ categoryData.name }}. Find the perfect fit for your needs.</p>
                        <RouterLink class="btn btn-primary col-5 col-md-4 col-xl-3 btn-lg p-2" aria-current="page"
                                    :to="{ name: 'store'}">Shop
                        </RouterLink>
                        <!--                        <RouterLink class="btn btn-primary col-5 col-md-4 col-xl-3 btn-lg p-2" aria-current="page"-->
                        <!--                                    :to="{ name: 'store', params: { subcategorySlug: categoryData.slug }}">Shop-->
                        <!--                        </RouterLink>-->
                    </div>
                    <ul class="product__list d-flex flex-wrap gap-3 align-items-start justify-content-evenly pb-3 px-2 px-md-4">
                        <ProductCard v-for="( product, index ) in categoryData.all_products" :key="index"
                                     :product="product" :index="index"/>
                    </ul>
                </footer>
            </section>


        </div>

    </transition>
</template>

<style scoped lang="sass">
.fade-enter-active,
.fade-leave-active
    transition: opacity 0.2s ease

.fade-enter-from,
.fade-leave-to
    opacity: 0

.category__page
    .spinner_block, .error_block
        height: 60dvh

    .category__block

        .category__nav_block
            background: rgba(235, 235, 235)

            .category_nav_wrapper
                width: 90%
                overflow: hidden
                overflow-x: scroll

                .nav_list
                    width: min(100%, 996px)

                    padding: 1rem
                    gap: 2rem
                    list-style: none

                    li
                        transition: all 0.4s ease
                        cursor: pointer

                        .category__icon
                            width: 3rem
                            height: 3rem
                            margin: 0 auto
                            object-fit: contain !important
                            object-position: bottom center

                        p
                            color: #000
                            font-size: 0.75rem
                            font-weight: 500
                            margin: 0

                        .new
                            font-size: 0.65rem
                            color: red

        header
            width: 90%
            padding: 2rem 0

            h1
                margin-right: auto
                font-size: 3rem
                text-align: start !important

            p
                margin-right: auto
                max-width: 13rem
                font-size: 1.3rem
                text-align: start !important

        main
            width: 90%
            overflow: hidden
            border-radius: 2rem

            .category__image
                width: 100%
                object-fit: cover !important


    @media (hover: hover)

        .category__block
            .category__nav_block
                .category_nav_wrapper
                    .nav_list
                        li:hover
                            transform: scale(1.2)

    @media (min-width: 768px)
        .category__block
            header
                padding: 4rem 0

                h1
                    width: 80%
                    font-size: 4rem

                p
                    max-width: 14rem
                    font-size: 1.5rem


    @media (min-width: 1440px)
        .category__block
            header
                padding: 5rem 0

                h1
                    font-size: 5rem

                p
                    max-width: 18.75rem
                    font-size: 1.75rem


</style>
