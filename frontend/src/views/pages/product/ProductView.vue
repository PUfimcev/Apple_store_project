<script setup lang="ts">
import {useRoute} from "vue-router";
import {onMounted, ref, watch} from "vue";

const route = useRoute()
const productSlug = ref(null)


watch(route, (newRoute) => {
    productSlug.value = newRoute.params.productSlug
    // fetchProductData()
})
onMounted(() => {
    productSlug.value = route.params.productSlug
    // fetchProductData()
})
</script>

<template>
    <transition name="fade" mode="out-in">
        <div v-if="productSlug" :key="productSlug" class="subcategory-view">
            <h1>Product: {{ productSlug }}</h1>
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
</style>
