<script setup>
import {ref, onMounted, watchEffect, watch} from "vue";
import {useAuthStore} from "@/stores/authStore.js";
import {useRouter} from "vue-router";
import Loading from "@/components/Loading.vue";
import {storeToRefs} from "pinia";

const authStore = useAuthStore();
const {  getUserFullData} = authStore;
const {loading, error, isLoggedIn,userFullData } = storeToRefs(authStore);
const router = useRouter();

const user = ref({});

watch(() => isLoggedIn.value, async (newValue) => {
    if (!newValue) router.push("/login")
})


onMounted(async () => {
    if (!isLoggedIn.value || !userFullData.value) {
        isLoggedIn.value = false
        router.push("/login")
    }
    await getUserFullData()
    user.value = userFullData.value

});

</script>

<template>
    <section class="profile_wrapper">
        <div v-if="loading">
            <Loading/>
        </div>
        <div v-else-if="error"
             class="error-message text-center py-5 d-flex justify-content-center align-items-center flex-column">
            <p>{{ error.message }}</p>
        </div>

        <div v-else class="profile-container py-5">

            <h3>User Profile</h3>
            <div v-if="user.profile_picture" class="avatar-wrapper">
                <img :src="user.profile_picture" alt="User Avatar" class="avatar">
            </div>
            <div v-else class="avatar-wrapper">
                <i class="bi bi-person-circle avatar"></i>
            </div>

            <div class="profile-details">
                <p><strong>Username:</strong> {{ user.user_name || "Not provided" }}</p>
                <p><strong>Email:</strong> {{ user.email || "Not provided" }}</p>
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
            font-size: 3rem
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

