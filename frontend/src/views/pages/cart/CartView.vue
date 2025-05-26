<script setup>
import { computed } from 'vue'
import CartFull from "@/views/pages/cart/CartFull.vue"
import CartIsEmpty from "@/views/pages/cart/CartIsEmpty.vue";
import {useCartStore} from "@/stores/cartStore.js";


const store = useCartStore()
const { isEmptyCart } = store
const currentComponent = computed(() => isEmptyCart() ? CartIsEmpty : CartFull)
</script>

<template>
    <component :is="currentComponent" />
</template>

<style scoped lang="sass">

</style>
