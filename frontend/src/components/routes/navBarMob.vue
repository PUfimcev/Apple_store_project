<script setup>

import {
    BButton,
    BDropdownItem, BNavbar,
    BNavbarBrand,
    BNavbarNav,
    BNavItem,
    BNavItemDropdown
} from "bootstrap-vue-next";
import {onMounted, ref, toRefs} from "vue";
import {getAllData} from "@/components/services/getAllData.js";
import {useCartStore} from "@/stores/cartStore.js";
import {storeToRefs} from "pinia";
import {useRouter} from "vue-router";
import {useAuthStore} from "@/stores/authStore.js";

const authStore = useAuthStore()
const {  logout  } = authStore
const {  userShortData } = toRefs(authStore)
const { isLoggedIn } = storeToRefs(authStore)
const cartStore = useCartStore()
const { totalQuantity } = storeToRefs(cartStore)
const data = ref([]);

onMounted(async () => {
    const result = await getAllData('/api/categories');
    data.value = result.data;
});

const pageTop = () => {
    window.scrollTo({
        top: 0,
    });
}
const router = useRouter();

const showCloseMobNav = (select) => {

    const mobNav = document.getElementById('mob_nav_routes');
    if (mobNav) {
        if (select) {
            mobNav.classList.add('show')
            mobNav.classList.remove('hide')
        } else {
            mobNav.classList.remove('show')
            mobNav.classList.add('hide')
        }
    }
};
</script>

<template>
    <BNavbar class="mob_nav_bar py-0">
        <BNavbarBrand :to="{name: 'main'}" class="logo"></BNavbarBrand>
        <BNavbarNav id="mob_nav_routes" class="mob_nav p-4">
            <BNavItem @click="showCloseMobNav(false)" style="width: 20px; height: 20px; font-size: 1.25rem;"
                      type="button" class="btn-close align-self-end p-2"
                      aria-label="Close"></BNavItem>
            <BNavItem to="/store" @click="pageTop"><h4 @click="showCloseMobNav(false)" class="m-0">Store</h4></BNavItem>
            <BNavItem v-for="(item, key ) in data" :key="key" :to="{name: 'category', params: { categorySlug: item.slug }}"><h4 @click="()=>{showCloseMobNav(false); pageTop(); }" class="m-0">{{ item.name }}</h4></BNavItem>
        </BNavbarNav>
        <BNavbarNav class="btn_nav_group d-flex justify-content-center align-items-center ms-auto">
            <BNavItemDropdown right class="small-dropdown btn-sm" toggle-class="text-decoration-none" no-caret>
                <template #button-content>
                    <i v-if="isLoggedIn" class="user_name">{{userShortData.user_name}}</i>
                    <i v-else class="bi bi-person"></i>
                </template>
                <BDropdownItem v-if="isLoggedIn" to="/user">Profile</BDropdownItem>
                <BDropdownItem v-if="isLoggedIn" @click="logout">Log out</BDropdownItem>
                <BDropdownItem v-else to="/login">Log in</BDropdownItem>
            </BNavItemDropdown>

            <BNavItem>
                <BButton @click="" class="btn_searching"></BButton>
            </BNavItem>
            <BNavItem>
                <BButton @click="router.push({name: 'cart'})" class="btn_cart"><span v-if="totalQuantity > 0" class="cart_quantity">{{totalQuantity}}</span></BButton>
            </BNavItem>
            <BNavItem>
                <div @click="showCloseMobNav(true)" class="burger_btn"><span></span><span></span></div>
            </BNavItem>
        </BNavbarNav>

    </BNavbar>
</template>

<style scoped lang="sass">

.mob_nav_bar
    width: min(100%, 996px)
    max-width: 100dvw
    height: 100%
    font-size: 12px
    text-align: center

    .container-fluid
        width: 100% !important
        margin: 0 !important
        padding: 0 !important

        .logo
            background-image: url("../../assets/icons/apple_icons.svg")
            background-size: contain
            background-position: center
            background-repeat: no-repeat
            padding: 0.75rem


        .mob_nav
            visibility: hidden
            opacity: 0
            height: 0
            position: absolute
            top: 0
            left: 0
            z-index: 100
            flex-direction: column
            justify-content: flex-start
            align-items: flex-start
            color: #0d1116 !important
            background-color: #ffffff
            width: 100dvw
            padding: 1rem 3rem 1rem
            overflow: hidden
            transition: height 0.5s ease-in-out, opacity 0.5s ease-in-out, visibility 0.5s ease-in-out

            &.show
                visibility: visible
                height: 100dvh
                opacity: 1

            &.hide
                visibility: hidden
                opacity: 0
                height: 0


        .btn_nav_group
            .small-dropdown
                .user_name
                    font-size: 0.8rem
                    padding: 0
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

            .burger_btn
                width: 2rem
                height: 2rem
                display: flex
                flex-direction: column
                justify-content: center
                align-items: center
                gap: 0.5rem
                padding: 0.5rem

                span
                    display: block
                    width: 1.2rem
                    height: 0.1rem
                    background: #000

</style>
