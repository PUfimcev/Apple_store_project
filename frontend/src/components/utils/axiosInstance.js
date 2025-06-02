import axios from "axios";
import {useAuthStore} from "@/stores/authStore.js";
import {storeToRefs} from "pinia";

const axiosInstance = axios.create({
    baseURL: import.meta.env.VITE_API_BASE_URL,
    timeout: 5000,
    headers: {
        "Content-Type": "application/json",
    },
    withCredentials: true
})

axiosInstance.interceptors.request.use((config) => {
    const authStore = useAuthStore()
    const {accessToken } = storeToRefs(authStore)
    const token = accessToken.value

    if (token) {
        config.headers.Authorization = `Bearer ${token}`
    }
    return config
})
axiosInstance.interceptors.response.use(
    (response) => response,

    async (error) => {
        const authStore = useAuthStore()
        const {logout, getRefreshToken } = authStore
        const {accessToken } = storeToRefs(authStore)
        const originalRequest = error.config

        if (error.response?.status === 401 && !originalRequest._retry) {
            originalRequest._retry = true

            try {
                await getRefreshToken() // Должен обновлять access_token из cookie

                const newToken = accessToken.value
                if (newToken) {
                    // Обновляем заголовки для всех будущих запросов
                    axiosInstance.defaults.headers.Authorization = `Bearer ${newToken}`
                    originalRequest.headers.Authorization = `Bearer ${newToken}`

                    return axiosInstance(originalRequest)
                }
            } catch (err) {
                await logout()
            }
        }

        throw error;
    }
)
export default axiosInstance;
