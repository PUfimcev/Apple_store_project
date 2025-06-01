import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const fetchCartProductsByIds = async (endpoint, payload, params = {}) => {

    const { fetchProducts } = useRestAPIService(endpoint)
    let data = []
    let error = null
    let loading

    try {
        const response = await fetchProducts(payload, params)
        data = response.data
    } catch (err) {
        error = err
    } finally {
        loading = false
    }

    return {
        data,
        error,
        loading
    }
}
