<script setup>

</script>

<template>
    <div class="not-found w-100 h-100 mx-auto">
        <h2>404 | Page Not Found</h2>
        <p class="p-2">The page you are looking for does not exist.</p>
        <router-link :to="{name: 'main'}">Go to Main page</router-link>
    </div>
</template>

<style scoped lang="sass">

.not-found
    min-height: 100vh
    display: grid
    place-items: center
    justify-content: center
    align-content: center
    a
        color: #0000cc
        transition: 0.4s
        display: block
        &:hover
            text-decoration: underline !important
    p
        text-align: center

</style>
