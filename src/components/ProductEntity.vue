<template>
  <div id="ProductEntity">
    <h1>{{ name }}</h1>
    <h2>{{ price }}€</h2>
    <h3>{{ description }}</h3>
    <img v-bind:src="picture" width="500" height="250" alt="">
    <button @click="buyProduct"></button>
  </div>
</template>

<script>

import store from "@/store";

export default {
  data() {
    return {
      id: 1,
      name: 'Test',
      price: 1.40,
      description: 'test if store works',
      picture: ''
    }
  },
  methods: {
    buyProduct() {
      store.commit("buyProduct", {id: 1, amount: 2})
    }
  }
}
</script>