<script setup>
import {useRouter} from "vue-router";
import {watch} from "vue";
import {useAuthStore} from "@/stores/authStore.js";
import {storeToRefs} from "pinia";

const router = useRouter()
const authStore = useAuthStore()
const { isLoggedIn } = storeToRefs(authStore)

watch(isLoggedIn, (newValue) => {
    if (!newValue) {
        router.push({ name: 'login' })
    }
})
</script>

<template>
<h2>Checkout</h2>
</template>

<style scoped lang="sass">

</style>
