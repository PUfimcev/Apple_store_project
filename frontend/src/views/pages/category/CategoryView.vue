<script setup>
import {useRoute} from "vue-router"
import {onMounted, ref, watch} from "vue"
import {getCategory} from "@/components/services/getCategory.js";
import Loading from "@/components/Loading.vue";
import ErrorComponent from "@/components/ErrorComponent.vue";
// import Mac from "@/assets/images/categories/mac.jpg"
// import TVHome from "@/assets/images/categories/tv-home.jpg"
// import iPhone from "@/assets/images/categories/iPhone_16_1.jpg"
// import iPad from "@/assets/images/categories/ipad-family.jpg"
// import AirPods from "@/assets/images/categories/airpods.jpg"
// import Watch from "@/assets/images/categories/watch.jpg"
// import {BNavbarNav, BNavItem} from "bootstrap-vue-next";

const route = useRoute()
const categorySlug = ref('')
const categoryData = ref([])
const categoryError = ref(null)
const categoryLoading = ref(true)
const baseURL = import.meta.env.VITE_API_BASE_URL


// const categoryMainImage = ref(null)

const fetchCategoryData = async () => {
    const result = await getCategory(`/api`, categorySlug.value)
    categoryData.value = result.data[0]
    categoryError.value = result.error
    categoryLoading.value = result.loading
}

const getImageCategory = (imageRoute) => {

    return `${baseURL}/storage/${imageRoute}`
}

watch(route, (newRoute) => {
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
            <div v-if="categoryLoading" class="spinner_block d-flex align-items-center justify-content-center w-100">
                <Loading/>
            </div>
            <div v-else-if="categoryError"
                 class="error_block d-flex align-items-center justify-content-center px-3 w-100">
                <ErrorComponent :error="categoryError"/>
            </div>
            <section v-else class="category__block w-100">
                <nav class="category__nav_block w-100">
                    <div class="category_nav_wrapper mx-auto">
                        <ul class="nav_list d-flex align-items-start justify-content-center">
                            <li v-for="{ id, slug, name, is_new } in categoryData.subcategories" :key="id" class="nav_item d-flex flex-column align-items-center justify-content-center">
                                <RouterLink  :to="{name: 'product', params: { productSlug: slug }}">{{ name }}</RouterLink>
                                <p v-if="is_new">New</p>
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
                    <img :src="getImageCategory(categoryData.image_url)" :alt="categoryData.name" class="category__image"/>
                </main>
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
            background: rgba(235,235,235)

            .category_nav_wrapper
                width: 90%

                .nav_list
                    width: min(100%, 996px)
                    padding: 1rem 0
                    gap: 2rem
                    list-style: none

                    li
                        transition: all 0.4s ease

                        a
                            color: #000
                            font-size: 0.75rem
                            font-weight: 500
                            text-decoration: none
                            padding: 0.5rem 1rem
                        p
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
