import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const getAllData = async (endpoint, params = {}) => {

    const { fetchAllData} = useRestAPIService(endpoint);
    let data = [];
    let error = null;
    let loading = true;


    try {
        const response = await fetchAllData(params);
        console.log(response)
        data = response.data;
    } catch (err) {
        error = err?.response?.data || err?.message || 'Network error or invalid response'
    } finally {
        loading = false;
    }

    return {
        data,
        error,
        loading
    };
};
