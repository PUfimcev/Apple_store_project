<script setup>
import NavBarGlobal from "@/components/routes/navBarGlobal.vue";
import NavBarMob from "@/components/routes/navBarMob.vue";

</script>

<template>
    <header class="fixed-top">

        <div class="header_wrapper w-100 h-100">
            <NavBarGlobal class="d-none d-lg-block"/>
            <navBarMob class="d-lg-none"/>
        </div>
    </header>
</template>

<style scoped lang="sass">

header
    width: 100dvw
    height: 3.15rem
    background: rgba(235,235,235,0.8)
    -webkit-backdrop-filter: saturate(1.8) blur(20px)
    backdrop-filter: saturate(1.8) blur(20px)



</style>
