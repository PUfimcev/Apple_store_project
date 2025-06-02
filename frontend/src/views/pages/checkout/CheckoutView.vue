<script setup>
import {useRouter} from "vue-router";
import { watch} from "vue";
import {useAuthStore} from "@/stores/authStore.js";
import {useCartStore} from "@/stores/cartStore.js";
import * as yup from "yup";
import {useField, useForm} from "vee-validate";
import Loading from "@/components/Loading.vue";
import ErrorComponent from "@/components/ErrorComponent.vue";
import {storeToRefs} from "pinia";

const router = useRouter()
const authStore = useAuthStore()
const { userFullData} = authStore
const {isLoggedIn } = storeToRefs(authStore)

const cartStore = useCartStore()
const {handleCheckout, removeCart, cart, productData, totalSumStore, productError, productLoading } = cartStore


const validationSchema = yup.object({
  payment_method: yup.string().required('Payment method is required'),
})
const {handleSubmit } = useForm({validationSchema})

const {
  value: paymentMethod,
  errorMessage: paymentMethodError,
  handleBlur: paymentMethodBlur
} = useField("payment_method", {
  initialValue: 'cash',
  validateOnBlur: true,
})

const onSubmit = handleSubmit( async (values) => {

  const orderData = {
    ...values,
    api_user_id: userFullData.id,
    // phone: userFullData.phone_number,
    address: userFullData.address || '',
    city: userFullData.city || '',
    total_amount: totalSumStore,
    products: cart.map(item => {
      let product = productData.find(p => p.id === item.id)
      const price = product.discounted_price || product.price
      return {product_variant_id: item.id, quantity: item.quantity, price: price}
    }),
    status: 'pending'
  }

  const result = await handleCheckout(orderData)

  if (result) {
      await removeCart()
      await router.push({name: 'store'})
  }
})

watch(isLoggedIn, (newValue) => {
  if (!newValue) {
    router.push({name: 'login'})
  }
})
</script>

<template>
  <div class="checkout-wrapper ">
    <div v-if="productLoading">
      <Loading/>
    </div>
    <div v-if="productError"
         class="error_block d-flex align-items-center justify-content-center px-3 w-100">
      <ErrorComponent :error="productError"/>
    </div>
    <div v-else class="checkout_container d-flex flex-column justify-content-center align-items-end">
      <router-link :to="{name: 'cart'}" class="btn btn-outline-secondary rounded-pill w-10 mb-2">Back to Cart</router-link>
      <div class="checkout_box">

        <h2>Checkout</h2>

        <div class="summary">
          <p><strong>Total Amount:</strong> <span>${{ totalSumStore }}</span></p>
          <p><strong>Name:</strong> <span>{{ userFullData.user_name }}</span></p>
          <p><strong>Phone:</strong> <span>{{ userFullData.phone_number }}</span></p>
          <p><strong>Shipping Address:</strong> <span>{{ userFullData.address }}, {{ userFullData.city }}</span></p>
        </div>

        <ul class="cart-items w-100">
          <li v-for="(item, index) in productData" :key="index" class="cart-item w-100">
            <div class="cart-content w-100">
              <img :src="item.image_url[0].url" v-if="item.image_url" loading="lazy" alt="Product Image"/>
              <p class="product-name text-center">{{ item.name }}</p>
              <div class="quantity-box">
              <span class="quantity" v-for="(cartItem, index) in cart" :key="index" v-show="cartItem.id === item.id">
                {{ cartItem.quantity }}
              </span>
              </div>
              <div class="price">
                <p v-if="item.discount_price" class="discount">${{ item.discount_price }}/pc</p>
                <p v-else class="discount">${{ item.price }}/pc</p>
              </div>
            </div>
          </li>
        </ul>

        <form @submit.prevent="onSubmit" class="payment-form">
          <fieldset>
            <legend>Payment Method</legend>
            <label class="radio-label">
              <input type="radio" v-model="paymentMethod" value="cash" @blur="paymentMethodBlur" />
              <span>Cash</span>
            </label>
            <label class="radio-label">
              <input type="radio" v-model="paymentMethod" value="card" @blur="paymentMethodBlur"/>
              <span>Card</span>
            </label>
            <p v-if="paymentMethodError" class="error color-danger-500">{{ paymentMethodError }}</p>
          </fieldset>

          <button type="submit" class="checkout-button">Place Order</button>
        </form>
      </div>

    </div>
  </div>
</template>

<style scoped lang="sass">
.checkout-wrapper
  display: flex
  justify-content: center
  align-items: center
  min-height: 100vh
  padding: 4rem 0

  .checkout_box
    max-width: 600px
    margin: auto
    padding: 1.25rem
    background: #fff
    border-radius: 10px
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1)

    h2
      text-align: center
      color: #333

    .summary
      background: #f8f9fa
      padding: 10px
      border-radius: 5px
      p
        display: flex
        justify-content: space-between
        margin: 5px 0


    .cart-items
      list-style: none
      padding: 0

      .cart-item
        display: flex
        align-items: center
        justify-content: space-between
        padding: 10px
        border-bottom: 1px solid #ddd


      .cart-content
        display: flex
        align-items: center
        justify-content: space-between
        gap: 15px

        img
          width: 50px
          height: 50px
          object-fit: cover
          border-radius: 5px

        .product-name
          font-weight: bold
          margin: 0

        .quantity-box
          background: #f0f0f0
          padding: 5px 10px
          margin: 0
          border-radius: 5px


        .price
          text-align: right
          .discount
            margin: 0

        .discount
          color: red

    .payment-form
      margin-top: 20px

      .radio-label
        display: flex
        align-items: center
        gap: 5px
        margin-bottom: 10px

      .error
        color: #dc3545
        font-size: 14px
        font-weight: bold
        margin-top: 5px


      .checkout-button
        width: 100%
        padding: 10px
        background: #bdbebf
        color: #fff
        border: none
        border-radius: 5px
        font-size: 16px
        cursor: pointer

        &:hover
          background: #5d5e5e

  @media (max-width: 768px)
    .checkout_box
      padding: 15px

      .cart-item
        flex-direction: column
        align-items: flex-start

        .cart-content
          flex-direction: column
          gap: 10px

        .checkout-button
          font-size: 14px
          padding: 8px



  @media (max-width: 480px)
    .checkout_box
      padding: 10px

      h2
        font-size: 18px

      .checkout-button
        font-size: 12px
        padding: 6px


</style>
