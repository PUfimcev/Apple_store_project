import axiosInstance from "@/components/utils/axiosInstance.js";

/**
 * @param {string} endpoint
 */
export const useRestAPIService = (endpoint) => {

    const fetchAllData = async (params = {}) => axiosInstance.get(endpoint, params);

    const fetchDataById = async (id, params = {}) => axiosInstance.get(`${endpoint}/${id}`, params);

    const fetchProducts = async (payload = null, params = {}) => axiosInstance.post(endpoint, payload, params);

    const authorization = async (payload = null, params = {}) => axiosInstance.post(endpoint, payload, params);
    const createData = async (payload = null, params = {}) => axiosInstance.post(endpoint, payload, params);

    const updateData = async (id, payload = null, params = {}) => axiosInstance.put(`${endpoint}/${id}`, payload, params);

    const deleteData = async (id, params = {}) => axiosInstance.delete(`${endpoint}/${id}`, params);

    return {
        fetchAllData,
        fetchDataById,
        fetchProducts,
        authorization,
        createData,
        updateData,
        deleteData
    }
};
