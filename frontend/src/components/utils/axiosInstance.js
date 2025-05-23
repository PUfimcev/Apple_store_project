import axios from "axios";

const axiosInstance = axios.create({
    baseURL: import.meta.env.VITE_API_BASE_URL,
    timeout: 5000,
    headers: {
        "Content-Type": "application/json",
    },
});
axiosInstance.interceptors.request.use((config) => {
        const token = localStorage.getItem("authToken");
        if (token) {
            config.headers.Authorization = `Bearer ${token}`;
        }

        return config;
    },
);
axiosInstance.interceptors.response.use(
    (response) => {

        return response
    },

    (error) => {

        if (error.response?.status === 401) {
            localStorage.removeItem("authToken");
            window.location.href = "/login";
        }

        throw error;
    }
);
export default axiosInstance;
