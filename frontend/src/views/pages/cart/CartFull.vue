<script setup>
import {onMounted, ref,  watchEffect} from "vue"
import {useCartStore} from "@/stores/cartStore.js";
import Loading from "@/components/Loading.vue";
import ErrorComponent from "@/components/ErrorComponent.vue";

const productDataInCart = ref([]);
const store = useCartStore()
const { cart, removeFromCart, removeCart, productData, productError, productLoading, fetchProductData } = store

onMounted(() => {
  if(cart.length !== 0) {
    fetchProductData();
    productDataInCart.value = productData
  }
})
const removeFrom = (productId) => {
  productDataInCart.value = productDataInCart.value.filter(item => item.id !== productId)
  removeFromCart(productId)
}
watchEffect(() => {
  fetchProductData()
});

</script>

<template>
  <section class="cart__page d-flex flex-column align-items-center justify-content-evenly w-100" :key="productData.length">
    <div v-if="productLoading">
      <Loading/>
    </div>
    <div v-if="productError"
         class="error_block d-flex align-items-center justify-content-center px-3 w-100">
      <ErrorComponent :error="productError"/>
    </div>
    <div v-if="productDataInCart.length > 0" class="cart__block w-100">

      <header class="d-flex align-items-center justify-content-between mx-auto">
        <h1>Shopping Cart</h1>
        <button @click="removeCart" class="btn btn-outline-secondary">Clear Cart</button>
      </header>
      <main class="d-flex align-items-center justify-content-between mx-auto">
        <ul class="cart-items w-100 pb-5">
          <li v-for="(item, index) in productDataInCart" :key="index" class="cart-item d-flex flex-column flex-md-row align-items-center justify-content-between w-100 py-2">
            <div class="top d-flex align-items-center justify-content-start gap-3">
              <img :src="item.image_url[0].url"  v-if="item.image_url" loading="lazy" alt="Product Image" class="d-block"/>
              <p class="product_name text-start fw-bold m-0">{{ item.name }}</p>
            </div>
            <div class="bottom d-flex align-items-center justify-content-between">
              <div class="price m-0">
                <p v-if="item.discount_price"
                   class="item_discount m-0"><span
                    class="text-danger">{{
                    item.discount_price
                  }}</span> <span class="text-decoration-line-through ms-3">{{ item.price }}</span></p>
                <p v-else class="item_price text-center m-0 w-100">{{ item.price }}</p>
              </div>
              <button @click="removeFrom(item.id)" class="cart-btn"></button>
            </div>
          </li>
        </ul>
      </main>
    </div>
  </section>
</template>

<style scoped lang="sass">
.cart__page
  .spinner_block, .error_block
    height: 60dvh

  .cart__block
    header
      width: 90%
      padding: 2rem 0

    main
      width: 90%
      font-size: 0.9rem

      .cart-item
        border-bottom: 1px solid #eee

        .top
          width: 100%
          padding: 1rem 0
          gap: 1rem

          img
            width: 3rem
            height: 3rem
            object-fit: cover
            object-position: center
        .bottom
          width:  100%

          .cart-btn
            width: 1.5rem
            height: 1.3rem
            background-color: transparent
            border: none
            background-image: url("../../../assets/icons/icons8-trash-100.svg")
            background-size: contain
            background-repeat: no-repeat
            cursor: pointer

  @media (hover: hover)
    .cart__block
      .cart-btn
        transition: transform .3s ease-in-out

    .cart__block
      .cart-btn:hover
        transform: scale(1.2)

  @media (min-width: 768px)
    .cart__block
      header
        h1
          font-size: 2.5rem

      main
        .cart-item
          gap:  1rem
          .top
            width: 40%
            img
              width: 4rem
              height: 4rem

          .bottom
            width: 30%



</style>
