import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const confirmCheckout = async (endpoint, payload, params = {}) => {

    const { createData } = useRestAPIService(endpoint)
    let data = []
    let error = null
    let loading

    try {
        const response = await createData(payload, params)
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
