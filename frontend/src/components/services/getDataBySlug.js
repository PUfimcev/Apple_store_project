import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const getDataBySlug = async (endpoint, slug, params = {}) => {

    const { fetchDataById } = useRestAPIService(endpoint)
    let data = []
    let error = null
    let loading


    try {
        const response = await fetchDataById(slug, params)
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
