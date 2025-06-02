import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const getDataAfterLoginRegister = async (endpoint, payload, params = {}) => {

    const { authorization } = useRestAPIService(endpoint)
    let data = []
    let error = null
    let loading

    try {
        const response = await authorization(payload, params)
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
