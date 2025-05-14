<script setup>

import {
    BButton,
    BDropdownItem,
    BNavbar,
    BNavbarBrand,
    BNavbarNav,
    BNavItem,
    BNavItemDropdown
} from "bootstrap-vue-next";
import {onMounted, ref} from "vue";
import {getAllData} from "@/components/services/getAllData.js";

const isAuthorized = ref(false);

const data = ref([]);
const error = ref(null);
const loading = ref(true);

onMounted(async () => {

    const result = await getAllData('/api/categories');
    data.value = result.data;
    error.value = result.error;
    loading.value = result.loading;
});


</script>

<template>
    <BNavbar class="global_nav_bar mx-auto py-0">
        <BNavbarBrand :to="{name: 'main'}" class="logo"></BNavbarBrand>
        <BNavbarNav class="page_routes">
            <BNavItem to="/store">Store</BNavItem>
            <BNavItem v-for="{ id, slug, name } in data" :key="id" :to="slug">{{ name }}</BNavItem>
        </BNavbarNav>
        <BNavbarNav class="btn_nav_group d-flex justify-content-center align-items-center">
            <BNavItemDropdown right class="small-dropdown btn-sm" toggle-class="text-decoration-none" no-caret>
                <template #button-content>
                    <i class="bi bi-person"></i>
                </template>
                <BDropdownItem v-if="isAuthorized" to="/profile">Profile</BDropdownItem>
                <BDropdownItem v-if="isAuthorized" to="/login">Log out</BDropdownItem>
                <BDropdownItem v-else to="/login">Log in</BDropdownItem>
            </BNavItemDropdown>

            <BButton @click="" class="btn_searching"></BButton>
            <BButton @click="" class="btn_cart"></BButton>
        </BNavbarNav>
    </BNavbar>
</template>

<style scoped lang="sass">

.global_nav_bar
    width: min(100%, 996px)
    height: 100%
    font-size: 12px
    text-align: center

    .container-fluid

        .logo
            background-image: url("../../assets/icons/apple_icons.svg")
            background-size: contain
            background-position: center
            background-repeat: no-repeat
            padding: 0.75rem
            transition: 0.4s

            &:hover
                transform: scale(1.2)


        .page_routes
            display: flex
            flex-direction: row
            justify-content: space-evenly
            align-items: center
            width: 80%

        .btn_nav_group
            width: 20%
            height: 100%

            .small-dropdown

                .bi-person
                    font-size: 1.4rem
                    padding: 0


            .btn_searching
                background-image: url("../../assets/icons/icons8-search.svg")
                background-color: transparent
                background-size: contain
                background-position: center
                background-repeat: no-repeat
                width: 1.25rem
                height: 1.25rem
                border: 0


            .btn_cart
                background-image: url("../../assets/icons/icons8-cart.png")
                background-color: transparent
                background-size: contain
                background-position: center
                background-repeat: no-repeat
                width: 1.25rem
                height: 1.25rem
                border: 0
                margin-left: 0.7rem


@media (hover: hover)

.global_nav_bar
    .container-fluid
        .page_routes
            .nav-item
                transition: 0.4s

            .nav-item:hover
                transform: scale(1.2)


@media(min-width: 993px)
    .global_nav_bar
        padding: 0 1.375rem

        .container-fluid
            .page_routes
                .nav-item
                    :deep(.router-link-active)
                        font-weight: bolder !important

</style>
