<script setup lang="ts">

</script>

<template>
    <div class="empty-cart d-flex flex-column align-items-center justify-content-center mx-auto w-90">
        <h2>Cart is empty!</h2>
        <p>You can add new products in <RouterLink :to="{ name: 'store' }">store</RouterLink>.</p>
    </div>
</template>

<style scoped lang="sass">
.empty-cart
    height: 80dvh
</style>
