<template>
  <div id="ProductList">
    <header> 
      <a href="#/Cart"><i class="fa fa-fw fa-shopping-cart"></i></a>{{ cart.length }} in cart</header>
    <div class="products">
      <div v-for="item in productList" :key="item.id">
        <h1>{{ item.name }}</h1>
        <h3>{{ item.description }}</h3>
        <img v-bind:src="item.img" width="500" height="250" />
        {{ item.price }} <br />
        <div v-if="cart.includes(item.id)">
          <button v-on:click="removeItemfromCart(item.id)">-</button><br />
        </div>
        <button v-on:click="addItemToCart(item.id)">+</button>
      </div>
    </div>
  </div>
</template>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

export default {
  el: "#ProductList",
  name: "ProductList",
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
        .get("http://localhost/ArtShop/src/model/getProducts.php")
        .then((response) => (this.productList = response.data));
    },
    addItemToCart(product) {

      this.cart.push(product);
      axios
        .then((response) => this.productList.push(response.data))
        .then(
          function () {
            this.product = "";
            this.fetchData();
          }.bind(this)
        );
        this.$ls.set('cart', "SDFasdf");  

    },
    removeItemfromCart(productId) {
      this.cart = this.cart.filter((element) => element !== productId);
      this.$ls.set("cart", this.cart);
    },
    
  },
  created() {
    this.fetchData();
  },
  beforeCreate() {
    this.fetchData();
  },
  mounted() {
    this.$ls.set('cart', this.cart);  
    this.$ls.on('cart', callback);
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