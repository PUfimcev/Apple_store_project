import axiosInstance from "@/components/utils/axiosInstance.js";
import {ref} from "vue";

export const useRestAPIService = (endpoint) => {
    const data = ref([]);
    const error = ref(null);
    const loading = ref(false);

    const fetchAllData = async (params = {}) => {
        data.value = null
        error.value = null
        loading.value = true;

        try {
            const response = await axiosInstance.get(endpoint, {params});
            data.value = response.data;
        } catch (err) {
            error.value = err;
        } finally {
            loading.value = false;
        }
    }

    const fetchDataById = async (id, params = {}) => {
        data.value = null
        error.value = null
        loading.value = true;
        try {
            const response = await axiosInstance.get(`${endpoint}/${id}`, {params});
            data.value = response.data;
        } catch (err) {
            error.value = err;
        } finally {
            loading.value = false;
        }
    }

    const createData = async (payload, params = {}) => {
        error.value = null
        try {
            const response = await axiosInstance.post(endpoint, payload, {params});
            data.value = response.data;
        } catch (err) {
            error.value = err;
        }
    }

    const updateData = async (id, payload, params = {}) => {
        error.value = null
        loading.value = true;
        try {
            const response = await axiosInstance.put(`${endpoint}/${id}`, payload, {params});
            data.value = response.data;
        } catch (err) {
            error.value = err;
        } finally {
            loading.value = false;
        }
    }

    const deleteData = async (id, params = {}) => {
        error.value = null
        try {
            const response = await axiosInstance.delete(`${endpoint}/${id}`, {params});
            data.value = data.value.filter(item => item.id !== id);
        } catch (err) {
            error.value = err;
        }
    }

    return {
        data,
        error,
        loading,
        fetchAllData,
        fetchDataById,
        createData,
        updateData,
        deleteData
    }


};
