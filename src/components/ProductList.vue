<template>
  <div id="ProductList">
    <div v-for="productEntity in productEntities" :key="productEntity.id">
      <h1>{{ productEntity.name }}</h1>
      <h2>{{ productEntity.price }}€</h2>
      <h3>{{productEntity.description}}</h3>
      <img v-bind:src="productEntity.picture" width="500" height="250">
    </div>
  </div>
</template>

<script>
import ProductEntity from "@/components/ProductEntity";

export default {
  props: {
    productEntities: ProductEntity
  },
  data() {
    return {

    }
  }
}
</script>