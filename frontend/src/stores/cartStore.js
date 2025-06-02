import {ref} from "vue"
import {defineStore} from "pinia"
import {fetchCartProductsByIds} from "@/components/services/fetchCartProductsByIds.js"
import {confirmCheckout} from "@/components/services/confirmCheckout.js"

export const useCartStore = defineStore('cart', () => {
    const cart = ref([])
    const totalQuantity = ref(0)
    const productData = ref([])
    const productError = ref(null)
    const productLoading = ref(false)
    const totalSumStore = ref(0)
    const message = ref('')

    const fetchProductData = async () => {

        if (cart.value.length === 0) return

        const payload = {
            "product_ids": cart.value.map((item) => item.id),
        }

        const result = await fetchCartProductsByIds(`/api/cart`, payload)
        productData.value = result.data
        productError.value = result.error
        productLoading.value = result.loading
    }

    const addToCart = async (productId) => {
        const existingProductId = cart.value.find(item => item.id === productId);

        if (existingProductId) return

        cart.value.push({
            "id": productId,
            "quantity": 1
        })
        await updateTotals()
        await fetchProductData()
    }
    const alterProductQuantity = (productId, quantity) => {

        cart.value = cart.value.map(existingItem => {
            if (existingItem.id === productId) {
                return {...existingItem, quantity: quantity}
            }
            return existingItem
        })
    }

    const removeFromCart = async (productId) => {
        cart.value = cart.value.filter(item => item.id !== productId)
        await updateTotals()
        await fetchProductData()
        if (cart.value.length === 0) {
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
        totalSumStore.value = 0
        localStorage.removeItem('cart')
        // await fetchProductData()
    }

    const setTotalSumStore = (sum) => {
        totalSumStore.value = sum;
    }

    const handleCheckout =  async (payload) => {
        // This function can be used to handle checkout confirmation logic
        // For example, sending the cart data to a server or processing payment
        console.log(payload)
        const result = await confirmCheckout(`/api/order/confirmed`, payload)

        message.value = result.data
        productError.value = result.error
        productLoading.value = result.loading

        return message.value
    }

    return {
        cart,
        totalQuantity,
        productData,
        productError,
        productLoading,
        totalSumStore,
        setTotalSumStore,
        addToCart,
        alterProductQuantity,
        removeFromCart,
        removeCart,
        updateTotals,
        isEmptyCart,
        fetchProductData,
        handleCheckout
    }
}, {
    persist: true
})
