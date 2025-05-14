<script setup>
import {useRoute} from "vue-router";
import {ref, watchEffect} from "vue";

const route = useRoute();
const categorySlug = ref(null);

watchEffect(() =>

    categorySlug.value = route.params.categorySlug
);

</script>

<template>
    <transition name="fade" mode="out-in">
        <div v-if="categorySlug" :key="categorySlug" class="category-view">
            <h1>Category: {{ categorySlug }}</h1>
            <p>This is the category view for the category with slug: {{ categorySlug }}</p>
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
