import {defineStore} from "pinia";
import {ref} from "vue";

export const useAuthStore = defineStore('auth', () =>{
    const isLoggedIn = ref(true)
    const login = () => { return isLoggedIn.value = true; };
    const logout = () => { return isLoggedIn.value = false;  }

    return { isLoggedIn, login, logout }

},{
    persist: true
})
