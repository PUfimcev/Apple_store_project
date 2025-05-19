import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const getCategory = async (endpoint, id, params = {}) => {

    const { fetchDataById } = useRestAPIService(endpoint)
    let data = []
    let error = null
    let loading

    try {
        const response = await fetchDataById(id, params)
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
