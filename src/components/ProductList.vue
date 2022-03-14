<template>
  <div>
    <header>{{ cart.length }} in cart</header>
    <div id="ProductList">
      <div class="products">
        <div v-for="productEntity in productEntities" :key="productEntity.id">
          <h1>{{ productEntity.name }}</h1>
          <h2>{{ productEntity.price }}€</h2>
          <h3>{{ productEntity.description }}</h3>
          <img v-bind:src="productEntity.picture" width="500" height="250" />
          <button v-on:click="addItemToCart(productEntity.id)">
            Add to Cart
          </button>
        </div>
      </div>
    </div>
    
    <li v-for="item in productList" :key="item.id">
      {{ item.id }} - {{ item.name }}
    </li>
  </div>
</template>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
import ProductEntity from "@/components/ProductEntity";

export default {
  el: "ProductList",
  props: {
    productEntities: ProductEntity,
  },
  data() {
    return {
      page: "ProductList",
      cart: [],
      product: "",
      productList: [],
    };
  },
  methods: {
    fetchData() {
      axios
        .get("http://localhost/get.php")
        .then((response) => (this.productList = response.data));
    },
    addItemToCart(product) {
      this.cart.push(product);
      console.log(product);
      axios
        .get(
          "http://192.168.2.109:8081/add.php?text=" +
            encodeURIComponent(this.todo_neu)
        )
        .then((response) => (this.productList = response.data))
        .then(
          function () {
            this.product = "";
            this.fetchData();
          }.bind(this)
        );
    },
  },
  created() {
    this.fetchData();
  },
};
</script>


<style scoped>
.products {
  display: grid;
  grid-template-columns: 1fr 1fr;
}

header {
  height: 100px;
  background-color: #eee;
  box-shadow: 2px 2px 5px #ddd;
  text-align: right;
  font-size: 30px;
  padding-top: 20px;
}
</style>