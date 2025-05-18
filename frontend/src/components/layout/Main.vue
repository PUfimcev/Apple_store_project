<script setup>

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
    margin-top: 2.75rem
    overscroll-behavior: contain
    width: 100dvw

    .wrapper
        width: 100%

</style>
