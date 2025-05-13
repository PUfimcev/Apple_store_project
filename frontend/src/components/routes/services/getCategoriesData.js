import {useRestAPIService} from "@/components/composables/useRestAPIService.js";

export const getCategoriesData = async (endpoint) => {

    const { fetchAllData} = useRestAPIService(endpoint);
    let data = [];
    let error = null;
    let loading;

    try {
        const response = await fetchAllData();
        data = response.data;
    } catch (err) {
        error = err;
    } finally {
        loading = false;
    }

    return {
        data,
        error,
        loading
    };
};
