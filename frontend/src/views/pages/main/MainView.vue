<script setup>
import {onMounted, ref} from "vue";
import {getAllData} from "@/components/services/getAllData.js";
import Bestseller from "@/views/pages/main/bestseller/Bestseller.vue";
import NewProduct from "@/views/pages/main/newProduct/NewProduct.vue";

const NewArrivalsData = ref([]);
const error = ref(null);
const loading = ref(true);

const fetchNewArrivals = async () => {
    const result = await getAllData('/api/products/new-arrivals');
    NewArrivalsData.value = result.data;
    error.value = result.error;
    loading.value = result.loading;
};

document.addEventListener("visibilitychange", () => {
    if (!document.hidden) fetchNewArrivals(); // Fetch new arrivals when the page is visible again
});

onMounted(() => fetchNewArrivals());
</script>

<template>
    <div class="main_page w-100">
        <NewProduct v-for="(newProduct, index) in NewArrivalsData" :newProduct="newProduct" :index="index" :key="index"/>
    </div>
</template>
