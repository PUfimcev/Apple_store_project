<script setup lang="ts">
import {toRefs} from "vue";

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
</script>

<template>
    <li v-if="product"
        :class="['product', `index-${index}`, 'col-11', 'col-md-3', 'd-flex', 'flex-column', 'align-items-center', 'justify-content-start', 'p-2', 'mx-auto']">
        <img v-if="product.image_url" class="product_img" :src="product.image_url"
             :alt="`Product ${product.name}`"/>
        <div class="products__container d-flex flex-column align-items-center justify-content-between pt-2">
            <h6 v-if="product.name" class="product_title text-center w-100">{{ product.name }}</h6>
            <p v-if="product.description" class="product_description col-12  text-center text-wrap">
                {{ product.description }}</p>
        </div>
        <div class="product_btn_price-group d-flex flex-column align-items-center justify-content-center mt-auto w-100">
                <div class="prices w-75">
                    <p v-if="product.discount_price" class="product_discount d-flex align-items-center justify-content-evenly m-0"><span class="text-danger">${{
                            product.discount_price
                        }}</span> <span class="text-decoration-line-through">${{ product.price}}</span></p>
                    <p v-else class="product_price text-center m-0 w-100">${{ product.price }}</p>
                </div>
                <div class="product__btn_group d-flex justify-content-evenly w-100 py-3">

                    <RouterLink class="btn btn-primary rounded-pill btn-sm mx-auto col-5 px-2 py-1" aria-current="page"
                                :to="{ name: 'product', params: { productSlug: product.slug }}">Learn more
                    </RouterLink>
                    <RouterLink class="btn btn-outline-primary rounded-pill btn-sm mx-auto col-5 px-2 py-1"
                                aria-current="page"
                                :to="{ name: 'productStore', params: { subcategorySlug: product.slug }}">Buy
                    </RouterLink>
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

    img
        display: block
        width: 100%
        height: 40%
        object-fit: cover !important
        object-position: center

    .product__container
        width: 100%
        height: 60%
        .product_btn_price-group
            .prices
                .product_discount
                    text-align: center
            a
                border-radius: 2rem !important

@media (min-width: 992px)
    .product
        height: 25rem
</style>
