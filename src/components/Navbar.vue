<template>
  <div id="nav">
    <nav class="container navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Art Shop</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="navbar-nav mr-auto">
          <router-link to="/" class="nav-item nav-link">Home</router-link>
          <router-link to="/About" class="nav-item nav-link">About</router-link>
          <router-link to="/Careers" class="nav-link">Careers</router-link>
          <router-link to="/Contact" class="nav-link">Contact</router-link>
        </div>
      </div>
    </nav>
  </div>
</template>


<script>
export default {
  name: "NavBar",
  props: {},
  watch: {
    localStorage: {
      handler(val) {
        console.log("val", val);
      },
    },
  },
  data() {
    return {
      mainCategory: "Collections",
      categories: [],
      cartItems: [],
    };
  },
  mounted() {
    const items = JSON.parse(localStorage.getItem("myCart"));
    console.log("items", items);
    this.cartItems = items;
  },
};
</script>
<style scoped>
.avatar:hover {
  border: 2px solid hsl(256, 41%, 42%) !important;
}
.category {
  transition: 0.1s;
}
.category:hover {
  border-bottom: 3px solid hsl(256, 41%, 42%);
}
.category:hover .text {
  color: black !important;
}
</style>