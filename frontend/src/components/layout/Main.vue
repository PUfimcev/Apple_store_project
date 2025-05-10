<script setup>

import {RouterView} from "vue-router";
</script>

<template>
    <main>
        <div class="wrapper">
            <routerView v-slot="{ Component }">
                <transition name="fade" mode="out-in">
                    <component :is="Component" />
                </transition>
            </routerView>
        </div>
    </main>
</template>

<style scoped>
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

main .wrapper{
    width: 100%;
}
</style>
