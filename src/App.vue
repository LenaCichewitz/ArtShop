<template>
<div id="nav">
      <!-- <router-link to="/">Home</router-link> | -->
    <!-- <router-link to="/about">About</router-link> -->

<Navbar></Navbar>
<router-view/>

    <Header title="ArtShop"/>
       <ProductPage></ProductPage>    

    <Commissions></Commissions>
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
import Header from './components/Header.vue'
import ProductList from "@/components/ProductList";
import Navbar from './components/Navbar.vue'; 
import ProductPage from './components/ProductPage.vue'; 
import Commissions from './components/Commissions.vue'

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
    UserEntity,
    Header,
    Navbar,
    ProductPage, 
    Commissions
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

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
