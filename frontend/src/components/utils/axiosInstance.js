import axios from "axios";
import {useAuthStore} from "@/stores/authStore.js";

const axiosInstance = axios.create({
    baseURL: import.meta.env.VITE_API_BASE_URL,
    timeout: 5000,
    headers: {
        "Content-Type": "application/json",
    },
    withCredentials: true
});
axiosInstance.interceptors.request.use((config) => {
        const authStore = useAuthStore()
        const token = authStore.accessToken
        if (token) {
            config.headers.Authorization = `Bearer ${token}`
        }

        return config;
    },
);


axiosInstance.interceptors.response.use(
    (response) => response,

    async (error) => {
        const authStore = useAuthStore();
        const originalRequest = error.config;

        if (error.response?.status === 401 && !originalRequest._retry) {
            originalRequest._retry = true;

            try {
                await authStore.getRefreshToken();
                const token = authStore.accessToken;
                if (token) {
                    originalRequest.headers.Authorization = `Bearer ${token}`;
                    return axiosInstance.request(originalRequest);
                }
            } catch (err) {
                await authStore.logout();
            }
        }

        throw error;
    }
);
export default axiosInstance
