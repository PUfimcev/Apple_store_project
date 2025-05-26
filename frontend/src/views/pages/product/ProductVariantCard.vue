<script setup xmlns="">
import {computed, onMounted, ref, toRefs, watch} from "vue"
import {Navigation, Pagination} from "swiper/modules"
import {register} from "swiper/element/bundle"
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

register()


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

const addToCart = (id) => {
  console.log(id)
}

const enableWindowSize = ref(true);

watch(enableWindowSize, (newValue) => {
  if (newValue) {
    document.querySelectorAll('swiper-container').forEach((container) => {
      container.style.setProperty('--swiper-navigation-size', '0rem');
    });
  } else {
    document.querySelectorAll('swiper-container').forEach((container) => {
      container.style.setProperty('--swiper-navigation-size', '2rem');
    });
  }
})

window.addEventListener("resize", () => {
  enableWindowSize.value = window.innerWidth < 992;
  console.log(enableWindowSize.value)
})
onMounted(() => {

  enableWindowSize.value = window.innerWidth < 992;

  if (enableWindowSize.value) {
    document.querySelectorAll('swiper-container').forEach((container) => {
      container.style.setProperty('--swiper-navigation-size', '0rem');
    });
  }
})
</script>

<template>
  <li v-if="product"
      :class="['product', `index-${index}`, 'col-11', 'col-md-5', 'col-lg-3','d-flex', 'flex-column', 'align-items-center', 'justify-content-evenly', 'p-2', 'mx-auto']">
    <swiper-container
        :slides-per-view="1"
        :initialSlide="0"
        :space-between="0"
        :loop="true"
        :modules="enableWindowSize.value ? [Navigation, Pagination] : [Pagination]"
        :navigation="true"
        :pagination="{ clickable: true }"
        :speed="500"
        :lazy="true"
        :breakpoints="{ 768: { slidesPerView: 1 }}"
        style="--swiper-theme-color: #4c4d4f; --swiper-navigation-size: 2rem; --swiper-navigation-top-offset: 45%; --swiper-pagination-bullet-inactive-color: #4c4d4f; --swiper-pagination-bullet-inactive-opacity: 0.3; --swiper-pagination-bullet-size: 0.5rem; --swiper-pagination-bullet-horizontal-gap: 0.25rem; "

    >
      <swiper-slide v-if="product.image_url" v-for="(image, index) in product.image_url" :key="index">

        <img v-if="image.url" :src="image.url" loading="lazy" alt="Image"/>
        <div v-else class="placeholder"></div>
      </swiper-slide>
    </swiper-container>
    <div class="products__container d-flex flex-column align-items-center justify-content-between pt-2">
      <h6 v-if="product.name" class="product_title text-center w-100">{{ product.name }}</h6>
      <ul v-if="product.properties" class="product_description col-12  text-center text-wrap p-1">
        <li v-for="(property, key) in getProperties" :key="key" class="text-start">
          <span class="fw-bold">{{ key }}:</span> {{ property }}
        </li>
      </ul>
    </div>
    <div class="product_btn_price-group d-flex flex-column align-items-center justify-content-center mt-auto w-100">
      <div class="prices w-75">
        <p v-if="product.discount_price"
           class="product_discount d-flex align-items-center justify-content-evenly m-0"><span
            class="text-danger">${{
            product.discount_price
          }}</span> <span class="text-decoration-line-through">${{ product.price }}</span></p>
        <p v-else class="product_price text-center m-0 w-100">${{ product.price }}</p>
      </div>
      <div class="product__btn_group d-flex justify-content-center w-100 pt-3">

        <button class="btn btn-outline-secondary rounded-pill btn-sm mx-auto col-5 px-2 py-1"
                aria-current="page" @click="addToCart(product.id)">Buy
        </button>
      </div>
    </div>
  </li>
</template>

<style lang="sass">
.product
  font-size: 0.8rem
  border: 1px solid #f0f0f0
  border-radius: 0.5rem
  height: 35rem

  swiper-container
    width: 100%
    height: 35% !important

    swiper-slide
      width: 100%
      height: 100% !important

      img
        display: block
        width: 100%
        height: 85%
        object-fit: contain !important
        object-position: center

      .placeholder
        width: 100%
        height: 100%
        background: #ccc

  .product__container
    width: 100%
    height: 45%

  .product_btn_price-group
    width: 100%
    height: 20%

    .prices
      .product_discount
        text-align: center

    a
      border-radius: 2rem !important


@media (min-width: 992px)
  .product
    height: 40rem


</style>
