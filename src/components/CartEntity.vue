<template>
  <div id="CartEntity">
    <div v-for="entity in productList" :key="entity.id">
      <h1>{{ entity.amount }}</h1>
      <h1>{{ entity.name }}</h1>
      <h2>{{ entity.price.toFixed(2).replace('.', ',') }}€</h2>
      <h3>{{ entity.description }}</h3>
      <input v-model="amounts[entity.id]">
      <button @click="removeProduct(entity.id)"></button>
      <img v-bind:src="entity.picture" width="500" height="250">
    </div>
    <h1>{{ price }}€</h1>
  </div>
</template>

<script>


import store from "@/store";

// const testCart =
//     [
//       {
//         ProductEntity:
//             {
//               id: 1,
//               name: 'Apfel',
//               price: 1.50,
//               description: 'Rotes Obst',
//               picture: 'Hier könnte ihr Apfel stehen'
//             },
//         amount: 5
//       },
//       {
//         ProductEntity:
//             {
//               id: 2,
//               name: 'Birne',
//               price: 1.25,
//               description: 'Grünes Obst',
//               picture: 'Hier könnte ihre Birne stehen'
//             },
//         amount: 1
//       },
//       {
//         ProductEntity: {
//           id: 3,
//           name: 'Käse',
//           price: 2.50,
//           description: 'Gelbes Obst',
//           picture: 'Hier könnte ihre Käse stehen'
//         },
//         amount: 3
//       }
//     ];

export default {
  data() {
    return {
      productList: store.getters.boughtProducts,
      amounts: {
        id: 1,
        amount: 0
      }
    }
  },
  computed: {
    price() {
      return this.productList.reduce((init, product) =>
          init + (product.price * product.amount), 0
      ).toFixed(2).replace('.', ',')
    }
  },
  methods: {
    removeProduct(id) {
      // store.commit("removeProduct", {id: id, amount: amount})
    }
  }
}
</script>