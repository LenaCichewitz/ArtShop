<template>
  <div id="app">
    <header>
      <button v-on:click="navigateTo('Cart')"> View Cart</button>
       <button v-on:click="navigateTo('ProductList')"> View products</button>
    </header>
    {{page}}
    
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
    <UserEntity></UserEntity>
  
    <ProductList v-bind:product-entities="testList"></ProductList>


     <Cart></Cart>
   
    <!-- <CartEntity></CartEntity> -->
  </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
// import ProductEntity from './components/ProductEntity.vue'
// import CartEntity from './components/CartEntity.vue'
import UserEntity from './components/UserEntity.vue';
import Cart from './components/Cart.vue';
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
    // HelloWorld,
    // ProductEntity,
    // CartEntity,
    Cart,
    UserEntity
  },
  methods: {
      navigateTo(page) {
        this.page = page
      }
  },
  data() {
    return {
      testList: testList,
      test: '',
      currenComponent : 'ProductList'
    }
  },
}
</script>

<style>

body {
  margin: 0; 
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
