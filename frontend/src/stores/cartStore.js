import {ref, watch} from "vue";
import {defineStore} from "pinia";
export const useCartStore = defineStore('cart', () => {
    const cart = ref(JSON.parse(localStorage.getItem('cart')) || [])
    const totalQuantity = ref(localStorage.getItem("totalQuantity") || 0)
    const addToCart = (productId) => {
        if(cart.value.includes(productId)) return
        cart.value.push(productId)
        updateTotals()
    }
    const removeFromCart = (productId) => {
        cart.value = cart.value.filter(item => item !== productId)
        updateTotals()
    }
    const updateTotals = () => {
        totalQuantity.value = cart.value.length
        localStorage.setItem("totalQuantity", totalQuantity.value)
    }

    const isEmptyCart = () => {
        return totalQuantity.value === 0
    }
    const removeCart = () => {
        cart.value = []
        totalQuantity.value = 0;
        localStorage.removeItem('cart')
        localStorage.removeItem("totalQuantity")
    }
    watch(cart, (newCart) => {
        localStorage.setItem('cart', JSON.stringify(newCart))
        updateTotals()
    }, { deep: true })

    return { cart, totalQuantity, addToCart, removeFromCart, removeCart, updateTotals, isEmptyCart   }
})
