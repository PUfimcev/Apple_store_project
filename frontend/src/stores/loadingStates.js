import {defineStore} from "pinia";
import {ref} from "vue";


export const useLoadingStore  = defineStore('loading', () => {
    const isLoading = ref({})

    const startLoading = (key) => {
        isLoading.value[key] = true
    }
    const stopLoading = (key) => {
        isLoading.value[key] = false
    }

    return { isLoading, startLoading, stopLoading }

})
