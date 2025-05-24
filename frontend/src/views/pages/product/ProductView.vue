<script setup>
import {useRoute} from "vue-router";
import {computed, onMounted, ref, watch} from "vue";
import {getDataBySlug} from "@/components/services/getDataBySlug.js"
import ErrorComponent from "@/components/ErrorComponent.vue";
import Loading from "@/components/Loading.vue";
import ProductCard from "@/views/pages/category/ProductCard.vue";
import ProductVariantCard from "@/views/pages/product/ProductVariantCard.vue";
const baseURL = import.meta.env.VITE_API_BASE_URL

const route = useRoute()
const productSlug = ref(null)
const productData = ref([])
const productError = ref(null)
const productLoading = ref(true)

const fetchProductData = async () => {
  const result = await getDataBySlug(`/api/products`, productSlug.value)
  productData.value = result.data[0]
  productError.value = result.error
  productLoading.value = result.loading
}

const backgroundImageStyle = computed(()=> {
    return `background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0)), url('${baseURL}/storage/${productData.value.image_url}') no-repeat center center / cover; `
})

watch(route, (newRoute) => {
  productSlug.value = newRoute.params.productSlug
  fetchProductData()
})
onMounted(() => {
  productSlug.value = route.params.productSlug
  fetchProductData()

})


</script>

<template>
  <transition name="fade" mode="out-in">
    <div class="product__page d-flex flex-column align-items-center justify-content-evenly w-100"
         :key="productSlug">

      <div v-if="productLoading">
        <Loading/>
      </div>
      <div v-else-if="productError"
           class="error_block d-flex align-items-center justify-content-center px-3 w-100">
        <ErrorComponent :error="productError"/>
      </div>
      <section v-else class="product__block w-100">
        <header
            class="description_block d-flex flex-column  align-items-center justify-content-center w-100" :style="backgroundImageStyle">
          <h1 class="title">{{ productData.name }}</h1>
          <p class="description text-center fw-bold">{{ productData.description }}</p>
        </header>
        <main class="py-5 d-flex flex-column align-items-center justify-content-center w-100">
          <h2 class="mb-5">Make your choice</h2>
          <ul class="product__list d-flex flex-wrap gap-3 align-items-start justify-content-evenly pb-3 px-2 px-md-4 w-100">
            <ProductVariantCard v-for="( product, index ) in productData.product_variants" :key="index"
                         :product="product" :index="index"/>
          </ul>
        </main>
      </section>
    </div>

  </transition>
</template>

<style scoped lang="sass">
.fade-enter-active,
.fade-leave-active
  transition: opacity 0.2s ease


.fade-enter-from,
.fade-leave-to
  opacity: 0


.product__block
  header
    gap: 5rem
    height: 75dvh
    text-align: center
    .title
      color: #ffffff
      mix-blend-mode: screen
      font-size: 3.5rem
    .description
      color: #ffffff
      mix-blend-mode: screen
      font-size: 1.4rem
      width: min(100%, 45rem)

  main
    h2
      font-size: 2.5rem
      color: #333333
      font-weight: 600
      text-align: center


  @media (min-width: 768px)

    header

      h1

        font-size: 4rem
      p

        font-size: 1.5rem


    @media (min-width: 1440px)

      header
        h1
          font-size: 5rem
        p
          font-size: 1.75rem


</style>
