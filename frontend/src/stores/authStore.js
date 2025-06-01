import {defineStore} from "pinia";
import {ref} from "vue";
import {getDataAfterLoginRegister} from "@/components/services/getDataAfterLoginRegist.js";
import {useRestAPIService} from "@/components/composables/useRestAPIService.js";
import {getAllData} from "@/components/services/getAllData.js";


export const useAuthStore = defineStore('auth', () => {
    const isLoggedIn = ref(false)
    const prevRoute = ref(null)
    const accessToken = ref(null)
    const error = ref(null)
    const loading = ref(false)
    const userShortData = ref({})
    const userFullData = ref({})
    const message = ref(null)


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

        const result = await getDataAfterLoginRegister(`/api/login`, credentials);

        userShortData.value = result.data
        error.value = result.error
        loading.value = result.loading ?? false;

        if (result.data.access_token) {
            accessToken.value = result.data.access_token;
            userShortData.value = result.data.user;
            isLoggedIn.value = true;
            return true
        } else {
            error.value = 'No access token received';
        }
    }
    const logout = async () => {

        const {createData} = useRestAPIService('/logout')
        try {
            const result = await createData({});

            userShortData.value = {}
            userFullData.value = {}
            accessToken.value = ''
            isLoggedIn.value = false;
            localStorage.removeItem('auth')
            message.value = result.data.message;
        } catch (err) {
            console.error(err)
            error.value = err?.data?.error ?? 'Unexpected error';
        }

    }

    const getUserFullData = async () => {

        const result = await getAllData('/user')

        userFullData.value = result.data
        error.value = result.error
        loading.value = result.loading
    }

    const getRefreshToken = async () => {
        const {createData} = useRestAPIService('/refresh')
        try {
            const result = await createData({})

            accessToken.value = result.data.access_token
        } catch (err) {
            error.value = err?.data?.error ?? 'Unexpected error'
            await logout()
            window.location.href = "/login"
        }
    }

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
        accessToken,
        error,
        loading,
        userShortData,
        message,
        register,
        login,
        logout,
        getRefreshToken,
        getUserFullData,
        emailExists
    }

}, {
    persist: true
})
