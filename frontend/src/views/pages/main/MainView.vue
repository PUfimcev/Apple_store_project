<script setup>
import {onMounted, ref, watchEffect} from "vue";
import {getAllData} from "@/components/services/getAllData.js";

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


    </div>
</template>
