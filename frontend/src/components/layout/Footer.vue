<script setup>
import {onMounted, ref} from "vue";
import {getAllData} from "@/components/services/getAllData.js";

const data = ref([]);
const error = ref(null);
const loading = ref(true);

onMounted(async () => {

    const result = await getAllData('/api/categories');
    data.value = result.data;
    error.value = result.error;
    loading.value = result.loading;
});
</script>

<template>
    <footer>
        <div class="wrapper">

            <div class="footer-block text-center text-lg-start text-black">

                <!-- Grid container -->
                <div class="container p-4 pb-0">
                    <!-- Section: Links -->
                    <section class="">
                        <!--Grid row-->
                        <div class="row  pb-lg-2">
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto pb-2 pb-lg-0">
                                <h6 class="mb-2 font-weight-bold">
                                    AppleStore
                                </h6>
                                <p>
                                    Here you can use rows and columns to organize your footer
                                    content. Lorem ipsum dolor sit amet, consectetur
                                    elit.
                                </p>
                            </div>

                            <hr class="w-100  d-md-none"/>

                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto pb-2 pb-lg-0">
                                <h6 class="mb-2 font-weight-bold">Shop and learn</h6>
                                <ul class="nav d-flex flex-column">
                                    <li class="nav-item">
                                        <RouterLink class="nav-link ps-0" aria-current="page" v-for="{ id, slug, name } in data" :key="id" :to="slug"> {{ name }}</RouterLink>
                                    </li>
                                </ul>
                            </div>
                            <!-- Grid column -->
                            <hr class="w-100 clearfix d-md-none"/>

                            <!-- Grid column -->
                            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto pb-2 pb-lg-0">
                                <h6 class="mb-2 font-weight-bold">Contact</h6>
                                <p><i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
                                <p><i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
                                <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                                <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                            </div>
                            <!-- Grid column -->
                        </div>
                        <!--Grid row-->
                    </section>
                    <!-- Section: Links -->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class="footer_copyright text-center text-lg-left p-3">
                    Copyright © 2025 AppleStore Inc. All rights reserved.
                    <a class="custom-hover ps-ls-5" href="/">Privacy Policy</a>
                </div>
            </div>
        </div>
    </footer>
</template>

<style scoped lang="sass">

footer
    background-color: #f8f9fa
    text-align: center
    font-size: 12px

    .wrapper
        width: min(100%, 980px)
        margin: 0 auto

        .footer-block

            a.nav-link
                color: #0d1116 !important
                &.active
                    font-weight: normal


            .footer_copyright
                border-top: 1px solid #606163

                .custom-hover
                    color: #4b4c4c

                    &:hover
                        text-decoration: underline !important


</style>
