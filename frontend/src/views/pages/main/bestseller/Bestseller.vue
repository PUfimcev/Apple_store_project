<script setup>
import {toRefs} from "vue";
const baseURL = import.meta.env.VITE_API_BASE_URL

const props = defineProps({
    bestseller: {
        type: Object,
        required: true
    },
    index: {
        type: Number,
        required: true
    },

});

const getImageProduct = (url) => {
    if (url) {
        return `${baseURL}/storage/${url}`
    }
    return ''
}

const {bestseller, index} = toRefs(props);

</script>
<template>
    <li v-if="bestseller"
         :class="['bestseller', `index-${index}`, 'col-11', 'col-md-5', 'd-flex', 'align-items-center', 'justify-content-between', 'p-2']">
        <img v-if="bestseller.image_url" class="bestseller_img" :src="getImageProduct(bestseller.image_url)"
             :alt="`Product ${bestseller.name}`"/>
        <div class="bestsellers__container d-flex flex-column align-items-center justify-content-between px-2 h-100">
            <h6 v-if="bestseller.name" class="bestseller_title text-center w-100">{{ bestseller.name }}</h6>
            <p v-if="bestseller.description" class="bestseller_description col-12  text-center text-wrap">
                {{ bestseller.description }}</p>
            <div class="bestseller_btn_price-group d-flex align-items-center justify-content-center w-100">
                <div class="prices w-75">
                    <p v-if="bestseller.discount_price" class="bestseller_discount d-flex align-items-center justify-content-evenly m-0"><span class="text-danger">${{
                            bestseller.discount_price
                        }}</span> <span class="text-decoration-line-through">${{ bestseller.price}}</span></p>
                    <p v-else class="bestseller_price text-center m-0 w-100">${{ bestseller.price }}</p>
                </div>
                <RouterLink class="btn btn-outline-secondary rounded-pill btn-sm mx-auto col-5 px-2 py-1" aria-current="page"
                            :to="{ name: 'product', params: { categorySlug: bestseller.category_id, productSlug: bestseller.slug }}">Learn more
                </RouterLink>
            </div>
        </div>
    </li>

</template>

<style scoped lang="sass">
.bestseller
    font-size: 0.8rem
    min-height: 15rem
    height: min-content
    border: 1px solid #f0f0f0
    border-radius: 0.5rem

    img
        display: block
        width: 40%
        object-fit: cover
        object-position: center

    .bestseller__container
        width: 50%
        .bestseller_btn_price-group
            .prices
                .bestseller_discount
                    text-align: center
            a
                border-radius: 2rem !important

@media (min-width: 992px)
    .bestseller
        min-height: 13rem

</style>
