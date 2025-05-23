<script setup>
import {ref, toRefs} from "vue";

const theme = ref({
    color: '#f0f0f0',
})

const props = defineProps({
    newProduct: {
        type: Object,
        required: true
    },
    index: {
        type: Number,
        required: true
    },

});

const {newProduct, index} = toRefs(props);

</script>

<template>
    <section v-if="newProduct" :class="['newProduct', `index-${index}`, 'w-100']">
        <div class="newProduct__container d-flex flex-column align-items-center justify-content-end pt-5 mx-auto h-100">
            <h1 v-if="newProduct.name" class="newProduct_title">{{ newProduct.name }}</h1>
            <p v-if="newProduct.description" class="newProduct_description col-10  text-center text-wrap">{{ newProduct.description }}</p>
            <div class="newProduct_btn-group d-flex align-items-center justify-content-center w-100">
<!--                <RouterLink class="btn btn-outline-secondary col-5 col-md-4 col-xl-3 btn-lg p-2" aria-current="page" :to="{ name: 'product', params: { productSlug: newProduct.slug }}">Learn more</RouterLink>-->
<!--                <RouterLink class="btn btn-outline-primary  col-5 col-md-4 col-xl-3 btn-lg p-2" aria-current="page"-->
<!--                            :to="{ name: 'productStore', params: { subcategorySlug: newProduct.slug }}">Buy-->
<!--                </RouterLink>-->
            </div>

            <img v-if="newProduct.image_url" class="newProduct_img" :src="newProduct.image_url" :alt="`Product ${newProduct.name}`"/>

        </div>
    </section>
</template>

<style scoped lang="sass">
.newProduct
    width: 100%
    background-color: v-bind('theme.color')
    margin-bottom: 1rem
    .newProduct__container
        width: 100%
        gap: 2rem
        .newProduct_title
            position: relative
            &::after
                position: absolute
                content: 'new'
                color: #ff0000
                font-size: 1rem
                font-weight: bold
                margin-left: 0.5rem
        .newProduct_btn-group
            width: 90%
            .btn
                font-size: 14px
                border-radius: 2rem
                &:first-child
                    margin-right: 1rem

    img
        width: 90%
        margin: 0 auto
        object-fit: cover
        object-position: center

    @media (min-width: 768px)

        .newProduct__container
            width: 75%
            .newProduct_btn-group
                .btn
                    font-size: 1rem

    @media (min-width: 992px)

        .newProduct__container
            width: 50%
            .newProduct_btn-group
                .btn
                    font-size: 1.4rem


</style>
