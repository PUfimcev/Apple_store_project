<script setup>
import {onMounted, ref} from "vue";
import {getAllData} from "@/components/services/getAllData.js";
import Bestseller from "@/views/pages/main/bestseller/Bestseller.vue";
import NewProduct from "@/views/pages/main/newProduct/NewProduct.vue";
import Loading from "@/components/Loading.vue";
import ErrorComponent from "@/components/ErrorComponent.vue";

const newArrivalsData = ref([]);
const newArrivalsError = ref(null);
const newArrivalsLoading = ref(true);

const fetchNewArrivals = async () => {
    const result = await getAllData('/api/products/new-arrivals');
    newArrivalsData.value = result.data;
    newArrivalsError.value = result.error;
    newArrivalsLoading.value = result.loading;
};

const bestsellersData = ref([]);
const bestsellersError = ref(null);
const bestsellersLoading = ref(true);

const fetchBestsellers = async () => {
    const result = await getAllData('/api/products/best-sellers');
    bestsellersData.value = result.data;
    bestsellersError.value = result.error;
    bestsellersLoading.value = result.loading;
};

onMounted(() => {
    fetchNewArrivals();
    fetchBestsellers();
});
</script>

<template>
    <div class="main_page d-flex flex-column align-items-center justify-content-evenly w-100">
        <div v-if="newArrivalsLoading">
            <Loading/>
        </div>
        <div v-else-if="newArrivalsError">
            <ErrorComponent :error="newArrivalsError"/>
        </div>
        <ul v-else class="w-100">

        <NewProduct v-for="(newProduct, index) in newArrivalsData" :newProduct="newProduct" :index="index"
                    :key="index"/>
        </ul>

        <div class="bestsellers d-flex flex-column align-items-center justify-content-evenly w-100">

            <h1 class="text-center">Bestsellers</h1>
            <div v-if="bestsellersLoading">
                <Loading/>
            </div>
            <div v-else-if="bestsellersError">
                <ErrorComponent :error="bestsellersError"/>
            </div>
            <ul v-else class="row  p-0 d-flex gap-2 gap-md-3 gap-lg-4 gap-xl-5 flex-wrap justify-content-center">
                <Bestseller v-for="(bestseller1, index) in bestsellersData" :bestseller="bestseller1"
                            :index="index" :key="index"/>
            </ul>
        </div>
    </div>
</template>

<style scoped lang="sass">
.spinner
    ul
        display: flex
        justify-content: center
        align-items: stretch
        gap: 1rem
</style>
