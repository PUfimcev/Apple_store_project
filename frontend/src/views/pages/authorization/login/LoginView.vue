<script setup>
import * as yup from "yup";
import {useField, useForm} from "vee-validate";
import {useAuthStore} from "@/stores/authStore.js";
import {useRouter} from "vue-router";
import Loading from "@/components/Loading.vue";
import {toRefs} from "vue";
import {storeToRefs} from "pinia";

const authStore = useAuthStore();
const {login, prevRoute} = authStore;
const {loading, error } = storeToRefs(authStore);
const router = useRouter();
const validationSchema = yup.object({
  email: yup.string().email('Invalid email address').required('Email is required').matches(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/, 'Invalid email address'),
  password: yup.string().required('Password is required').min(8, 'Password must be at least 8 characters long.')
      // .matches(/[a-zA-Z]/, 'Password must contain at least one letter.')
      // .matches(/[@$!%*?&]/, 'Password must contain at least one special character.')
      .matches(/\d/, 'Password must contain at least one number.')
})

const {handleSubmit, resetForm, setErrors} = useForm({validationSchema})

const {value: email, errorMessage: emailError, handleBlur: emailBlur} = useField("email", {
  initialValue: '',
  validateOnBlur: true,
})

const {value: password, errorMessage: passwordError, handleBlur: passwordBlur} = useField("password", {
  initialValue: '',
  validateOnBlur: true,
})

const onSubmit = handleSubmit(async (values) => {

  const result = await login(values);
    if (result) {
    setErrors({});
    resetForm();
    router.push(prevRoute);
  } else {
    setErrors({ email: error.message ?? "Invalid email or password" });
  }
});

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
    <form v-else @submit.prevent="onSubmit" class="form-container-login border rounded p-4">
      <h2 class="text-center mb-4">Login</h2>
      <div class="mb-3">
        <label class="form-label">Email:</label>
        <input v-model="email" type="email" name="email" class="form-control" placeholder="Enter email"
               autocomplete="on" @blur="emailBlur" @focus="onFocusClearError('email')"
               @input="(event) => onInputClearError(event, 'email')"/>
        <div class="errors">
          <span v-if="emailError" class="email text-danger small">{{ (emailError[0]).toUpperCase()+(emailError).slice(1) }}</span>
        </div>

      </div>

      <div class="mb-3">
        <label class="form-label">Password:</label>
        <input v-model="password" type="password" name="password" class="form-control" placeholder="Enter password"
               autocomplete="on" @blur="passwordBlur" @focus="onFocusClearError('password')"
               @input="(event) => onInputClearError(event, 'password')"/>
        <div class="errors">
          <span v-if="passwordError" class="password text-danger small">{{  (passwordError[0]).toUpperCase()+(passwordError).slice(1)  }}</span>

        </div>
      </div>

      <div class="d-flex justify-content-evenly align-items-center">
        <button type="button" @click="resetForm" class="btn btn-outline-primary btn-sm rounded-pill px-3">Reset</button>
        <button type="submit" class="btn btn-outline-secondary  btn-sm rounded-pill px-3">Login</button>
      </div>

      <p class="mt-3 text-center">
        Not registered?
        <RouterLink :to="{ name: 'registration' }" class="text-primary text-decoration-none">Sign up</RouterLink>
      </p>
    </form>

  </div>
</template>

<style scoped lang="sass">
.form-wrapper
  padding: 5rem 0

  .form-container-login
    max-width: 400px
    width: 100%
    margin: auto
    background: #ffffff

    .errors
      height: 1rem
      margin-top: 0.5rem
      font-size: 0.875rem


    @media (max-width: 576px)

    .form-container
      padding: 2rem


</style>
