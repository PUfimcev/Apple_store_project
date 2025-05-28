import {ref, watch} from "vue";
import {defineStore} from "pinia";
import {fetchCartProductsByIds} from "@/components/services/fetchCartProductsByIds.js";

export const useCartStore = defineStore('cart', () => {
    const cart = ref([])
    const totalQuantity = ref(0)
    const productData = ref([])
    const productError = ref(null)
    const productLoading = ref(false)

    const fetchProductData = async () => {

        if (cart.value.length === 0) return
        const payload = {
            "product_ids": cart.value
        }
        const result = await fetchCartProductsByIds(`/api/cart`, payload)
        productData.value = result.data
        productError.value = result.error
        productLoading.value = result.loading
    }

    const addToCart = async (productId) => {
        if (cart.value.includes(productId)) return
        cart.value.push(productId)
        await updateTotals()
        await fetchProductData()
    }
    const removeFromCart = async (productId) => {
        cart.value = cart.value.filter(item => item !== productId)
        await updateTotals()
        await fetchProductData()
        if( cart.value.length === 0) {
            await removeCart()
        }
    }
    const updateTotals = async () => {
        totalQuantity.value = cart.value.length
        await fetchProductData()
    }

    const isEmptyCart = () => {
        return cart.value.length === 0
    }
    const removeCart = async () => {
        cart.value = []
        totalQuantity.value = 0;
        productData.value = []
        localStorage.removeItem('cart')
        await fetchProductData()
    }
    watch(cart, async (newCart) => {
        // localStorage.setItem('cart', JSON.stringify(newCart))
        await updateTotals()
        await fetchProductData()
    }, {deep: true})

    return {
        cart,
        totalQuantity,
        productData,
        productError,
        productLoading,
        addToCart,
        removeFromCart,
        removeCart,
        updateTotals,
        isEmptyCart,
        fetchProductData
    }
}, {
    persist: true
})
