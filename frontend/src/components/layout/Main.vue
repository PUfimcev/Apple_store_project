<script setup>
import {onMounted} from "vue";

onMounted(() => {
    document.documentElement.scrollTo(0, 0);
    document.body.scrollTo(0, 0);
    window.scrollTo(0, 0);
})
</script>

<template>
    <main>
        <div class="wrapper">
            <routerView v-slot="{ Component }">
                <transition name="fade" mode="out-in">
                    <component :is="Component"/>
                </transition>
            </routerView>
        </div>
    </main>
</template>

<style scoped lang="sass">
.fade-enter-active,
.fade-leave-active
    transition: opacity 0.2s ease


.fade-enter-from,
.fade-leave-to
    opacity: 0


main
    background-color: rgba(235,235,235) !important
    padding-top: 2.75rem
    overscroll-behavior: none
    width: 100dvw

    .wrapper
        background-color: rgba(255,255,255) !important
        width: 100%

</style>
