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

const testCart =
    [
      {
        ProductEntity:
            {
              id: 1,
              name: 'Apfel',
              price: 1.50,
              description: 'Rotes Obst',
              picture: 'Hier könnte ihr Apfel stehen'
            },
        amount: 5
      },
      {
        ProductEntity:
            {
              id: 2,
              name: 'Birne',
              price: 1.25,
              description: 'Grünes Obst',
              picture: 'Hier könnte ihre Birne stehen'
            },
        amount: 1
      },
      {
        ProductEntity: {
          id: 3,
          name: 'Käse',
          price: 2.50,
          description: 'Gelbes Obst',
          picture: 'Hier könnte ihre Käse stehen'
        },
        amount: 3
      }
    ];

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