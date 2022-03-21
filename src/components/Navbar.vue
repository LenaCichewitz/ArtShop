<template>
  <div>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <h5>
        <ul>
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#/ProductList">Produkte</a></li>
          <li><a href="#/Commissions">Commissions</a></li>
          <!-- <li style="float:right"><a href="#/Cart"><i class="fa fa-fw fa-shopping-cart"></i></a></li> -->
        </ul>
      </h5>
    <component :is="currentView" />
  </div>
</template>

<script>
import ProductList from "./ProductList.vue";
import Commissions from "./Commissions.vue";
import Cart from "./Cart.vue";

const routes = {
  "/ProductList": ProductList,
  "/Commissions": Commissions,
  "/Cart": Cart,
};

export default {
  components: { ProductList },
  data() {
    return {
      currentPath: window.location.hash,
    };
  },
  computed: {
    currentView() {
      return routes[this.currentPath.slice(1) || "/"];
    },
  },
  mounted() {
    window.addEventListener("hashchange", () => {
      this.currentPath = window.location.hash;
    });
  },
};
</script>
<style scoped>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #111;
}

li {
  float: left;
  color: white;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
li a:hover {
  background-color: #333;
}
h5 {
  background-color: black;
  color: white;
}
</style>