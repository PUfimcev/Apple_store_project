<script setup>
import {RouterLink, useRouter} from "vue-router";
import NavBar from "@/components/Navigation/navBar.vue";

</script>

<template>
    <header class="w-100">

        <div class="header_wrapper w-80">
            <RouterLink :to="{name: 'main'}" class="logo"></RouterLink>
           <NavBar/>
        </div>
    </header>
</template>

<style  scoped lang="sass">
.logo
    background-image: url("../../assets/icons/apple_icons.svg")
    background-size: contain
    background-position: center
    background-repeat: no-repeat
    padding: 0.75rem
    transition: 0.4s
    &:hover
        padding: 0.9rem

@media (min-width: 1024px)
    header
        display: flex
        place-items: center

        &.header_wrapper
            display: flex
            place-items: flex-start
            flex-wrap: wrap

</style>
