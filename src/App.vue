<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
    <UserEntity></UserEntity>
    <ProductEntity @buy="addToCart"></ProductEntity>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h1>Product-List</h1>
    <ProductList v-bind:product-entities="testList"></ProductList>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h1>Cart</h1>
    <CartEntity></CartEntity>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import ProductEntity from './components/ProductEntity.vue'
import CartEntity from './components/CartEntity.vue'
import UserEntity from './components/UserEntity.vue'
import ProductList from "@/components/ProductList";

const testList = [
  {
    id: 1,
    name: 'Baum',
    price: 1.50,
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
    picture: 'https://www.schulz-grafik.de/wp-content/uploads/2018/03/placeholder.png'
  },
  {
    id: 2,
    name: 'Baum',
    price: 1.50,
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
    picture: 'https://www.schulz-grafik.de/wp-content/uploads/2018/03/placeholder.png'
  },
  {
    id: 3,
    name: 'Baum',
    price: 1.50,
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
    picture: 'https://www.schulz-grafik.de/wp-content/uploads/2018/03/placeholder.png'
  },
  {
    id: 4,
    name: 'Baum',
    price: 1.50,
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
    picture: 'https://www.schulz-grafik.de/wp-content/uploads/2018/03/placeholder.png'
  }
];


export default {
  name: 'App',
  components: {
    ProductList,
    HelloWorld,
    ProductEntity,
    CartEntity,
    UserEntity
  },
  data() {
    return {
      testList: testList,
      test: ''
    }
  },
  methods:{
    addToCart(id){
      console.log("Add To Cart"+id)
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
