<script setup>
import {useRouter} from "vue-router";
import {ref, watch} from "vue";
import {useAuthStore} from "@/stores/authStore.js";
import {storeToRefs} from "pinia";
import {useCartStore} from "@/stores/cartStore.js";
import * as yup from "yup";
import {useField, useForm} from "vee-validate";

const router = useRouter()
const authStore = useAuthStore()
const {isLoggedIn, userFullData} = storeToRefs(authStore)

const cartStore = useCartStore()
const {cart, productData, totalSumStore} = storeToRefs(cartStore)

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

const onSubmit = handleSubmit(async (values) => {

  const orderData = {
    ...values,
    api_user_id: userFullData.value.id,
    phone: userFullData.value.phone_number,
    address: userFullData.value.address || '',
    city: userFullData.value.city || '',
    total_amount: totalSumStore.value,
    products: cart.value.map(item => {
      let product = productData.value.find(p => p.id === item.id)
      const price = product.discounted_price || product.price
      return {product_variant_id: item.id, quantity: item.quantity, price: price}
    }),
    status: 'pending'
  }

  console.log(orderData)
})

watch(isLoggedIn, (newValue) => {
  if (!newValue) {
    router.push({name: 'login'})
  }
})
</script>

<template>
  <div class="checkout-wrapper d-flex flex-column justify-content-center align-items-center">
    <router-link :to="{name: 'cart'}" class="btn btn-outline-secondary rounded-pill w-10 mx-auto mb-2">Back to Cart</router-link>
    <div class="checkout_box">

      <h2>Checkout</h2>

      <div class="summary">
        <p><strong>Total Amount:</strong> <span>${{ totalSumStore }}</span></p>
        <p><strong>Name:</strong> <span>{{ userFullData.user_name }}</span></p>
        <p><strong>Phone:</strong> <span>{{ userFullData.phone_number }}</span></p>
        <p><strong>Shipping Address:</strong> <span>{{ userFullData.address }}, {{ userFullData.city }}</span></p>
      </div>

      <ul class="cart-items">
        <li v-for="(item, index) in productData" :key="index" class="cart-item">
          <div class="cart-content">
            <img :src="item.image_url[0].url" v-if="item.image_url" loading="lazy" alt="Product Image"/>
            <p class="product-name">{{ item.name }}</p>
            <div class="quantity-box">
            <span class="quantity" v-for="(cartItem, index) in cart" :key="index" v-show="cartItem.id === item.id">
              {{ cartItem.quantity }}
            </span>
            </div>
            <div class="price">
              <p v-if="item.discount_price" class="discount">${{ item.discount_price }}/pc</p>
              <p v-else>${{ item.price }}/pc</p>
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
        gap: 15px

        img
          width: 50px
          height: 50px
          object-fit: cover
          border-radius: 5px

        .product-name
          font-weight: bold

        .quantity-box
          background: #f0f0f0
          padding: 5px 10px
          border-radius: 5px


        .price
          text-align: right

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
