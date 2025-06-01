<script setup>
import {ref, onMounted, watchEffect, watch} from "vue";
import { useAuthStore } from "@/stores/authStore.js";
import { useRouter } from "vue-router";
import Loading from "@/components/Loading.vue";
import {storeToRefs} from "pinia";

const authStore = useAuthStore();
const { userFullData, isLoggedIn, updateProfile, getUserFullData, } = authStore;
const { loading, error  } = storeToRefs(authStore);
const router = useRouter();

const user = ref({
    user_name: "",
    email: "",
    first_name: "",
    last_name: "",
    profile_picture: "",
    day_of_birth: "",
    phone_number: "",
    address: "",
    city: ""
});

watch(isLoggedIn, (newValue) => {
    if (!newValue) router.push("/login");
})

onMounted(async () => {
    if (!isLoggedIn) {
        router.push("/login");
    } else {
        await getUserFullData()
        console.log(userFullData);
        user.value = userFullData;
    }
});

</script>

<template>
    <section class="profile_wrapper">
        <div v-if="loading">
            <Loading />
        </div>
        <div v-else-if="error" class="error-message text-center py-5 d-flex justify-content-center align-items-center flex-column">
            <p>{{ error.message }}</p>
        </div>

        <div v-if="user" class="profile-container">

            <h3>User Profile</h3>

            <div class="avatar-wrapper" v-if="user.profile_picture">
                <img :src="user.profile_picture" alt="User Avatar" class="avatar">
            </div>

            <div class="profile-details">
                <p><strong>Username:</strong> {{ user.user_name }}</p>
                <p><strong>Email:</strong> {{ user.email }}</p>
                <p><strong>First Name:</strong> {{ user.first_name || "Not provided" }}</p>
                <p><strong>Last Name:</strong> {{ user.last_name || "Not provided" }}</p>
                <p><strong>Date of Birth:</strong> {{ user.day_of_birth || "Not provided" }}</p>
                <p><strong>Phone Number:</strong> {{ user.phone_number || "Not provided" }}</p>
                <p><strong>Address:</strong> {{ user.address || "Not provided" }}</p>
                <p><strong>City:</strong> {{ user.city || "Not provided" }}</p>
            </div>

        </div>


    </section>

</template>

<style scoped lang="sass">
.profile-container
    max-width: 400px
    margin: auto
    padding: 20px
    text-align: center

    .avatar-wrapper
        margin-bottom: 15px

        .avatar
            width: 100px
            height: 100px
            border-radius: 50%
            object-fit: cover

.error-message
    height: 60vh
    color: red
    font-size: 1rem

    .success-message
        color: green
        font-size: 14px
</style>

