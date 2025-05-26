<script setup>
import {useRoute} from "vue-router";
import {onMounted, ref, watch, watchEffect} from "vue";

const route = useRoute()
// const subcategorySlug = ref('')


watch(route, (newRoute) => {
    // subcategorySlug.value = newRoute.params.subcategorySlug
    // fetchProductData()
})
onMounted(()=>{
    // subcategorySlug.value = route.params.subcategorySlug
    // fetchProductData()
})

</script>

<template>
    <transition name="fade" mode="out-in">
<!--        <div v-if="subcategorySlug" :key="subcategorySlug" class="subcategory-view">-->
<!--            <h1>Product: {{ subcategorySlug }}</h1>-->
<!--            <p>This is the category view for the category with slug: {{ subcategorySlug }}</p>-->
<!--        </div>-->
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
