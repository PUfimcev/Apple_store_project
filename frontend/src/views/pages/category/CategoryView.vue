<script setup>
import {useRoute} from "vue-router"
import {computed, reactive, ref, watchEffect} from "vue"
import {getCategory} from "@/components/services/getCategory.js";
import Loading from "@/components/Loading.vue";
import ErrorComponent from "@/components/ErrorComponent.vue";

const route = useRoute()
const categorySlug = ref(null)
const categoryData = ref([{
    id: 0,
    parent_id: null,
    slug: "",
    name: "",
    description: "",
    image_url: null,
    subcategories: [],
    allProducts: []
}])

const subcategories = ref([
    {
        id: 0,
        parent_id: 0,
        slug: "",
        name: "",
        description: "",
        is_new: 0,
    },
])

const allProducts = ref([
    {
        id: 1,
        slug: "",
        name: "",
        description: "",
        price: 0,
        discount_price: null,
        image_url: ""
    },
])

const categoryError = ref(null)
const categoryLoading = ref(true)
const fetchCategoryData = async (route) => {
    const result = await getCategory(`/api`, route)
    categoryData.value = result.data
    categoryError.value = result.error
    categoryLoading.value = result.loading
    console.log(categoryData.value)
}

watchEffect(() => {
    categorySlug.value = route.params.categorySlug
    fetchCategoryData(categorySlug.value)
})

</script>

<template>
    <transition name="fade" mode="out-in">
        <div class="category__page d-flex flex-column align-items-center justify-content-evenly w-100">
            <div v-if="categoryLoading" class="spinner_block d-flex align-items-center justify-content-center w-100">
                <Loading/>
            </div>
            <div v-else-if="categoryError"
                 class="error_block d-flex align-items-center justify-content-center px-3 w-100">
                <ErrorComponent :error="categoryError"/>
            </div>
            <div v-else>
                <section v-if="categoryData.length > 0" class="category__header_bloc">
<!--                    <h1 class="title text-center">{{ categoryData.value[0]?.name }}</h1>-->
<!--                    <p class="description text-center">{{ categoryData.value.description }}</p>-->
                </section>
            </div>

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
</style>
