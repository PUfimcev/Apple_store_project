<script setup>
import {computed, toRefs} from "vue"
const baseURL = import.meta.env.VITE_API_BASE_URL

const props = defineProps({
    product: {
        type: Object,
        required: true
    },
    index: {
        type: Number,
        required: true
    }
})

const {product, index} = toRefs(props)
const getImageProduct = (url) => {
    if (url) {
        return `${baseURL}/storage/${url}`
    }
    return ''
}
const formatKey = (key) => {
    return key.replace(/\b\w/g, (char) => char.toUpperCase()).replace(/_/g, ' ')
}

const getProperties = computed(() => {
    return Object.fromEntries(Object.entries(JSON.parse(product.value?.properties)).map(([key, value]) => {
        return [formatKey(key), value]
    }))
})

const addToCart = (id) =>{
    console.log(id)
}
</script>

<template>
    <li v-if="product"
        :class="['product', `index-${index}`, 'col-11', 'col-md-5', 'col-lg-3','d-flex', 'flex-column', 'align-items-center', 'justify-content-evenly', 'p-2', 'mx-auto']">
<!--        <img v-if="product.image_url" class="product_img" :src="getImageProduct(product.image_url)"-->
<!--             :alt="`Product ${product.name}`"/>-->
        <div class="products__container d-flex flex-column align-items-center justify-content-between pt-2">
            <h6 v-if="product.name" class="product_title text-center w-100">{{ product.name }}</h6>
            <ul v-if="product.properties"  class="product_description col-12  text-center text-wrap p-1" >
                <li v-for="(property, key) in getProperties" :key="key" class="text-start">
                    <span class="fw-bold">{{ key }}:</span> {{ property }}
               </li>
            </ul>
        </div>
        <div class="product_btn_price-group d-flex flex-column align-items-center justify-content-center mt-auto w-100">
            <div class="prices w-75">
                <p v-if="product.discount_price" class="product_discount d-flex align-items-center justify-content-evenly m-0"><span class="text-danger">${{
                        product.discount_price
                    }}</span> <span class="text-decoration-line-through">${{ product.price}}</span></p>
                <p v-else class="product_price text-center m-0 w-100">${{ product.price }}</p>
            </div>
            <div class="product__btn_group d-flex justify-content-center w-100 py-3">

                <button class="btn btn-outline-secondary rounded-pill btn-sm mx-auto col-5 px-2 py-1" aria-current="page" @click="addToCart(product.id)">Buy
                </button>
            </div>
        </div>
    </li>
</template>

<style scoped lang="sass">
.product
    font-size: 0.8rem
    border: 1px solid #f0f0f0
    border-radius: 0.5rem
    height: 23rem
    //
    //img
    //    display: block
    //    width: 100%
    //    height: 40%
    //    object-fit: cover !important
    //    object-position: center

    .product__container
        width: 100%
        height: 60%
        .product_description

        .product_btn_price-group
            .prices
                .product_discount
                    text-align: center
            a
                border-radius: 2rem !important

@media (min-width: 992px)
    .product
        height: 28rem
</style>
