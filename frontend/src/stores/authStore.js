import {defineStore} from "pinia"
import {ref} from "vue"
import {getDataAfterLoginRegister} from "@/components/services/getDataAfterLoginRegist.js"
import {useRestAPIService} from "@/components/composables/useRestAPIService.js"
import {getAllData} from "@/components/services/getAllData.js"
import {encryptData, decryptData} from "@/components/utils/encription.js"


export const useAuthStore = defineStore('auth', () => {
    const isLoggedIn = ref(false)
    const prevRoute = ref(null)
    const error = ref(null)
    const loading = ref(false)
    const userShortData = ref(null)
    const userFullData = ref(null)
    const message = ref(null)

    // Функция сохранения зашифрованных данных
    // const persistState = () => {
    //     const encryptedState = encryptData({
    //         isLoggedIn: isLoggedIn.value,
    //         prevRoute: prevRoute.value,
    //         accessToken: accessToken.value,
    //         error: error.value,
    //         loading: loading.value,
    //         userShortData: userShortData.value,
    //         userFullData: userFullData.value,
    //         message: message.value,
    //     })
    //     localStorage.setItem("auth", encryptedState)
    // }

    // const restoreState = () => {
    //     const encryptedData = localStorage.getItem("auth");
    //     if (encryptedData) {
    //         const decryptedState = decryptData(encryptedData)
    //         if (decryptedState) {
    //             isLoggedIn.value = decryptedState.isLoggedIn
    //             prevRoute.value = decryptedState.prevRoute
    //             accessToken.value = decryptedState.accessToken
    //             error.value = decryptedState.error
    //             loading.value = decryptedState.loading
    //             userShortData.value = decryptedState.userShortData
    //             userFullData.value = decryptedState.userFullData
    //             message.value = decryptedState.message
    //         }
    //     }
    // }

    // Вызываем `restoreState()` при запуске
    // restoreState()
    const register = async (credentials) => {
        try {
            const resultRegist = await getDataAfterLoginRegister(`/api/register`, credentials)
            loading.value = resultRegist.loading ?? false
            error.value = resultRegist.error
            if (resultRegist.data[0].message) {
                message.value = resultRegist.data[0].message
                return true
            }
        } catch (err) {
            error.value = err.message ?? 'Network error or invalid response'
        }
    }
    const login = async (credentials) => {

        try {
            loading.value = true;
            const result = await getDataAfterLoginRegister(`/api/login`, credentials);
            loading.value = false;

            if (result.data?.access_token) {
                localStorage.setItem('access_token', result.data.access_token);
                userShortData.value = result.data.user;
                isLoggedIn.value = true;
                await getUserFullData();
                return true;
            } else {
                isLoggedIn.value = false;
                userShortData.value = null;
                error.value = result.error?.message || "Invalid email or password";
                console.error("Login failed:", error.value);
                return false;
            }
        } catch (err) {
            loading.value = false;
            console.error("Ошибка логина:", err);
            return false;
        }
    }
    const logout = async () => {
        try {
            const result = await getDataAfterLoginRegister(`/api/logout`);
            localStorage.removeItem('access_token')
            userShortData.value = null
            userFullData.value = null
            isLoggedIn.value = false
            message.value = result.data[0].message;
        } catch (err) {
            error.value = err?.data?.error ?? 'Unexpected error';
        }
    }

    const getUserFullData = async () => {

        const result = await getAllData('/api/user');

        if (result.data.length > 0) {
            userFullData.value = result.data;
        } else {
            userFullData.value = null; // Ensure it's an object or null
        }

        loading.value = result.loading;
        error.value = result.error;
        console.log("getUserFullData", result.data);
    }

    // const getRefreshToken = async () => {
    //     const {createData} = useRestAPIService("/api/refresh");
    //
    //     try {
    //         const result = await createData();
    //
    //
    //         accessToken.value = result.data.access_token;
    //         await getUserFullData()
    //
    //     } catch (err) {
    //         error.value = err?.data?.error ?? "Unexpected error";
    //
    //         if (err.response?.status === 401 || err.response?.status === 500) {
    //             isLoggedIn.value = false
    //             await logout();
    //         }
    //     }
    // };


    const emailExists = async (email) => {

        const payload = {
            email: email
        }
        try {
            const result = await getDataAfterLoginRegister(`/api/check-email`, payload);
            return result.data.exists
        } catch (err) {
            error.value = err?.data?.error ?? 'Unexpected error'
            return false
        }
    }

    return {
        isLoggedIn,
        prevRoute,
        error,
        loading,
        userShortData,
        userFullData,
        message,
        register,
        login,
        logout,
        // getRefreshToken,
        getUserFullData,
        emailExists
    }

}, {
    persist: true
})
