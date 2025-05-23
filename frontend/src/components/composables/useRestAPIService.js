import axiosInstance from "@/components/utils/axiosInstance.js";

/**
 * @param {string} endpoint
 */
export const useRestAPIService = (endpoint) => {

    const fetchAllData = async (params = {}) => axiosInstance.get(endpoint, params);

    const fetchDataById = async (id, params = {}) => axiosInstance.get(`${endpoint}/${id}`, params);

    const createData = async (payload, params = {}) => axiosInstance.post(endpoint, payload, params);

    const updateData = async (id, payload, params = {}) => axiosInstance.put(`${endpoint}/${id}`, payload, params);

    const deleteData = async (id, params = {}) => axiosInstance.delete(`${endpoint}/${id}`, params);

    return {
        fetchAllData,
        fetchDataById,
        createData,
        updateData,
        deleteData
    }
};
