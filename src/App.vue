<template>
  <div id="nav">
    <Header />
    <Navbar></Navbar>
    <router-view />
    <component v-bind:is="component"></component>
    <ProductPage></ProductPage>
    <UserEntity></UserEntity>
    <ProductList/>
    <Footer/>
  </div>
</template>

<script>
import UserEntity from "./components/UserEntity.vue";
import Header from "./components/Header.vue";
import ProductList from "@/components/ProductList";
import Navbar from "./components/Navbar.vue";
import ProductPage from "./components/ProductPage.vue";
import Footer from "./components/Footer.vue"; 

export default {
  name: "App",
  components: {
    ProductList,
    UserEntity,
    Header,
    Navbar,
    ProductPage,
    Footer
  },

  data() {
    return {
      test: "",
      component: "ProductList",
    };
  },
};
</script>

<style>
</style>
