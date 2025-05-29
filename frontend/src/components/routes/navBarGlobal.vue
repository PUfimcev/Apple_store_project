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
import { onMounted, ref} from "vue";
import {getAllData} from "@/components/services/getAllData.js";
import {storeToRefs} from "pinia";
import {useRouter} from "vue-router";
import {useCartStore} from "@/stores/cartStore.js";
import {useAuthStore} from "@/stores/authStore.js";

const authStore = useAuthStore()
const {  logout, login } = authStore
const { isLoggedIn } = storeToRefs(authStore)
const cartStore = useCartStore()
const { totalQuantity } = storeToRefs(cartStore)
const router = useRouter()
const pageTop = () => {
    window.scrollTo({
        top: 0,
    });
}
// const logout = () => { return isLoggedIn.value = false;  }
// const login = () => { return isLoggedIn.value = true; };
const data = ref([]);
onMounted(async () => {

    const result = await getAllData('/api/categories');
    data.value = result.data;
});


</script>

<template>
    <BNavbar class="global_nav_bar mx-auto py-0">
        <BNavbarBrand :to="{name: 'main'}" class="logo"></BNavbarBrand>
        <BNavbarNav class="page_routes">
            <BNavItem to="/store" @click="pageTop">Store</BNavItem>
            <BNavItem v-for="(item, key ) in data" :key="key" :to="{name: 'category', params: { categorySlug: item.slug }}" @click="pageTop">{{ item.name }}</BNavItem>
        </BNavbarNav>
        <BNavbarNav class="btn_nav_group d-flex justify-content-end align-items-center">
            <BNavItemDropdown right class="small-dropdown btn-sm" toggle-class="text-decoration-none" no-caret>
                <template #button-content>
                    <i class="bi bi-person"></i>
                </template>
                <BDropdownItem v-if="isLoggedIn" to="">Profile</BDropdownItem>
                <BDropdownItem v-if="isLoggedIn" @click="logout">Log out</BDropdownItem>
                <BDropdownItem v-else  @click="login">Log in</BDropdownItem>
            </BNavItemDropdown>

            <BNavItem><BButton @click="" class="btn_searching"></BButton></BNavItem>
            <BNavItem><BButton @click="router.push({name: 'cart'})" class="btn_cart"><span v-if="totalQuantity > 0" class="cart_quantity">{{totalQuantity}}</span></BButton></BNavItem>
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
            width: 15%
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
                position: relative
                background-image: url("../../assets/icons/icons8-cart.png")
                background-color: transparent
                background-size: contain
                background-position: center
                background-repeat: no-repeat
                width: 1.4rem
                height: 1.4rem
                border: 0

                .cart_quantity
                    display: inline-block
                    position: absolute
                    top: -0.5rem
                    right: -0.5rem
                    background-color: #dc3545
                    color: #fff
                    border-radius: 50%
                    width: 1.3rem
                    height: 1.3rem
                    padding: 0.2rem
                    font-size: 0.7rem
                    line-height: 0.8rem
                    font-weight: bold
                    text-align: center




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
