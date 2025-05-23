<script setup lang="ts">
import {toRefs} from "vue";

const props = defineProps({
    error: {
        type: Object,
        required: true
    },
});

const {error} = toRefs(props);
const reload = () => {
    window.location.reload();
};

const back = () => {
    window.history.back();
};

</script>

<template>
    <div class="error">
        <h2 class="text-center">{{ error.status }} | {{error.message}}</h2>
        <p class="p-2 my-2">Oops. The error erose. Give you a shot to reload!</p>
        <button class="btn btn-outline-primary  col-5 col-md-4 col-xl-3 btn-lg p-2" @click="reload">Reload</button>
        <p class="p-2 my-2">Or go back!</p>
        <button class="btn btn-outline-primary  col-5 col-md-4 col-xl-3 btn-lg p-2" @click="back">Back</button>
    </div>
</template>

<style scoped lang="sass">
.error
    height: 100vh
    display: grid
    place-items: center
    justify-content: center
    align-content: center
    margin-top: -2.75rem

    p
        text-align: center
    button
        border-radius: 2rem
</style>
