<script setup>

import Header from "@/components/layout/Header.vue";
import Footer from "@/components/layout/Footer.vue";
import Main from "@/components/layout/Main.vue";


</script>

<template>

    <Header v-if="$route.name !== '404'"/>
    <Main/>
    <Footer v-if="$route.name !== '404'"/>
</template>

<style scoped>

</style>
