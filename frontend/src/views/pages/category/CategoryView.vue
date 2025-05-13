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
    <div class="category-view">
        <h1>Category: {{ categorySlug }}</h1>
        <p>This is the category view for the category with slug: {{ categorySlug }}</p>
    </div>
</template>

<style scoped lang="sass">

</style>
