<template>
  <div id="CartEntity">
    <div v-for="entity in testCart" :key="entity.ProductEntity.id">
      <h1>{{ entity.amount }}</h1>
      <h1>{{ entity.ProductEntity.name }}</h1>
      <h2>{{ entity.ProductEntity.price }}€</h2>
      <h3>{{entity.ProductEntity.description}}</h3>
      <img v-bind:src="entity.ProductEntity.picture" width="500" height="250">
    </div>
    <h1>{{ price }}€</h1>
  </div>
</template>

<script>


import ProductEntity from "@/components/ProductEntity";

export default {
  data() {
    return {
      ProductEntity,
      amount: 0,
      testCart:testCart
    }
  }
  ,
  computed: {
    price() {
      return testCart.reduce((init, product) =>
          init + (product.ProductEntity.price * product.amount), 0
      )
    }
  }
}
</script>