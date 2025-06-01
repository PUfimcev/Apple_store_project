<script setup>
import {useRouter} from "vue-router";
import * as yup from "yup";
import {useField, useForm} from "vee-validate";
import Loading from "@/components/Loading.vue";
import {useAuthStore} from "@/stores/authStore.js";

const authStore = useAuthStore();
const {register, error, loading, emailExists} = authStore;
const router = useRouter();

const validationSchema = yup.object({
    name: yup.string(),
    email: yup.string().email("Invalid email address").required("Email is required")
        .matches(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/, "Invalid email address").test("email", "Email already in use", async (value) => {
        if (!value) return false;
        return !await emailExists(value);
    }),

    password: yup.string().required("Password is required").min(2, "Password must be at least 8 characters long.")
        .matches(/\d/, "Password must contain at least one number."),

    password_confirmation: yup.string()
        .required("Confirm password is required")
        .oneOf([yup.ref("password")], "Passwords must match"),
});


const {handleSubmit, resetForm, setErrors} = useForm({validationSchema});

const {value: name, errorMessage: nameError, handleBlur: nameBlur} = useField("name", {
    initialValue: "",
    validateOnBlur: true,
});
const {value: email, errorMessage: emailError, handleBlur: emailBlur} = useField("email", {
    initialValue: "",
    validateOnBlur: true,
});

const {value: password, errorMessage: passwordError, handleBlur: passwordBlur} = useField("password", {
    initialValue: "",
    validateOnBlur: true,
});

const {
    value: password_confirmation, errorMessage: confirmPasswordError, handleBlur: confirmPasswordBlur
} = useField("password_confirmation", {initialValue: "", validateOnBlur: true,
});

const onSubmit = handleSubmit(async (values) => {

    const result = await register(values);
    if (result) {
        setErrors({});
        resetForm();
        router.push({name: 'login'});
    }
})

const onFocusClearError = (field) => {
    setErrors({[field]: ''})
}

const onInputClearError = (event, fieldName) => {
    if (!event.target.value) {
        setErrors({[fieldName]: ''})
    }
}

</script>

<template>
    <div class="form-wrapper d-flex justify-content-center align-items-center">
        <div v-if="loading">
            <Loading/>
        </div>
        <div v-else-if="error" class="error-message color-danger-500 text-center py-5 d-flex justify-content-center align-items-center flex-column">
            <p class="color-danger-500">Registration failed</p>
            <button class="btn btn-outline-secondary btn-sm rounded-pill px-3" @click="router.back()">Back</button>
        </div>

        <form v-else @submit.prevent="onSubmit" class="form-container border rounded p-4">
            <h2 class="text-center mb-4">Register</h2>
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <input v-model="name" type="text" name="name" class="form-control" placeholder="Enter nickname"
                       autocomplete="on" @blur="nameBlur" @focus="onFocusClearError('name')"
                       @input="(event) => onInputClearError( event,'name')"/>
                <div class="errors">
                    <span v-if="nameError" class="text-danger small">{{ (nameError[0]).toUpperCase()+(nameError).slice(1)  }}</span>
                </div>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input v-model="email" type="email" name="email" class="form-control" placeholder="Enter email"
                       autocomplete="on" @blur="emailBlur" @focus="onFocusClearError('email')"
                       @input="(event) => onInputClearError( event,'email')"/>
                <div class="errors">
                    <span v-if="emailError" class="text-danger small">{{  (emailError[0]).toUpperCase()+(emailError).slice(1) }}</span>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Password:</label>
                <input v-model="password" type="password" name="password" class="form-control"
                       placeholder="Enter password"
                       autocomplete="off" @blur="passwordBlur" @focus="onFocusClearError('password')"
                       @input="(event) => onInputClearError( event, 'password')"/>
                <div class="errors">
                    <span v-if="passwordError" class="text-danger small">{{ (passwordError[0]).toUpperCase()+(passwordError).slice(1) }}</span>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Confirm Password:</label>
                <input v-model="password_confirmation" type="password" name="password_confirmation" class="form-control"
                       placeholder="Confirm password"
                       autocomplete="off" @blur="confirmPasswordBlur" @focus="onFocusClearError('confirmPassword')"
                       @input="(event) => onInputClearError( event,  'confirmPassword')"/>
                <div class="errors">
                    <span v-if="confirmPasswordError" class="text-danger small">{{  (confirmPasswordError[0]).toUpperCase()+(confirmPasswordError).slice(1)}}</span>
                </div>
            </div>

            <div class="d-flex justify-content-evenly align-items-center">
                <button type="button" @click="resetForm" class="btn btn-outline-primary btn-sm rounded-pill px-3">
                    Reset
                </button>
                <button type="submit" class="btn btn-outline-secondary btn-sm rounded-pill px-3">Register</button>
            </div>

            <p class="mt-3 text-center">
                Already registered?
                <RouterLink :to="{ name: 'login' }" class="text-primary text-decoration-none">Login</RouterLink>
            </p>
        </form>
    </div>
</template>

<style scoped lang="sass">
.form-wrapper
    padding: 5rem 0

    .form-container
        max-width: 400px
        width: 100%
        margin: auto
        background: #ffffff

    .error-message
        height: 60vh
        color: red
        font-size: 1rem

</style>
