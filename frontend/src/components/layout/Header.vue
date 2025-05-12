<script setup>
import {RouterLink, useRouter} from "vue-router";
import NavBarGlobal from "@/components/routes/navBarGlobal.vue";
import NavBarMob from "@/components/routes/navBarMob.vue";

</script>

<template>
    <header class="w-100  fixed-top">

        <div class="header_wrapper w-100 h-100">
            <NavBarGlobal class="d-none d-lg-block"/>
            <navBarMob class="d-lg-none"/>
        </div>
    </header>
</template>

<style scoped lang="sass">

header
    height: 3.15rem
    background: rgba(255,255,255,0.8)
    -webkit-backdrop-filter: saturate(1.8) blur(20px)
    backdrop-filter: saturate(1.8) blur(20px)



</style>
