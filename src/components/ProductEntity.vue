<template>
  <div id="ProductEntity">
    <h1>{{ name }}</h1>
    <h2>{{ price }}€</h2>
    <h3>{{ description }}</h3>
    <img v-bind:src="picture" width="500" height="250" alt="">
    <button @click="$emit('buy',1)"></button>
  </div>
</template>

<script>

export default {
  data() {
    return {
      id: 0,
      name: '',
      price: 1.40,
      description: '',
      picture: ''
    }
  }
}
</script>