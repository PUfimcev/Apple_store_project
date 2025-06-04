import axios from "axios";
import {useAuthStore} from "@/stores/authStore.js";


const axiosInstance = axios.create({
    baseURL: import.meta.env.VITE_API_BASE_URL,
    timeout: 5000,
    headers: {
        "Content-Type": "application/json",
    },
    withCredentials: true
})

axiosInstance.interceptors.request.use((config) => {

    const token = localStorage.getItem('access_token')

    if (token) {
        config.headers.Authorization = `Bearer ${token}`
    }
    return config
})

const ENABLE_REFRESH = false
axiosInstance.interceptors.response.use(
    (response) => response,

    async (error) => {
        const authStore = useAuthStore()
        const {logout, isLoggedIn} = authStore

        const originalRequest = error.config

          if (ENABLE_REFRESH && error.response?.status === 401 &&
            !originalRequest._retry &&
            originalRequest.url === "/api/refresh") {
            originalRequest._retry = true

            try {
                const { data } = await axios.post('/api/refresh');

                localStorage.setItem('access_token', data.access_token);
                originalRequest.headers.Authorization = `Bearer ${data.access_token}`;

                return axiosInstance.request(originalRequest);

            } catch (refreshError) {
                if (refreshError.response?.status === 403 || refreshError.response?.status === 400) {
                    isLoggedIn.value = false
                    await logout();
                }
                return Promise.reject(refreshError);
            }
        }
        isLoggedIn.value = false
        return Promise.reject(error);
    }
)
export default axiosInstance;
