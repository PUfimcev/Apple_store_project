<script setup>
import {computed, onMounted, watch, watchEffect} from 'vue'
import CartFull from "@/views/pages/cart/CartFull.vue"
import CartIsEmpty from "@/views/pages/cart/CartIsEmpty.vue";
import {useCartStore} from "@/stores/cartStore.js";


const store = useCartStore()
const { isEmptyCart } = store
const currentComponent = computed(() => isEmptyCart() ? CartIsEmpty : CartFull)

</script>

<template>
  <transition name="fade" mode="out-in">
    <component :is="currentComponent"/>
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
