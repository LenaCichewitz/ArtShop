<template>
    <div id="app">
    <!-- <ul>
        <li v-for="item in todo_list" :key="item.id">
            {{ item.name }}  
       </li>
    </ul> -->
</div>
</template>
<script>
var axios = require('axios');

export default ({
        el: '#app',
        data() {
            return  {
        }
        },
        methods: {
            fetchData() {
                axios.get('http://192.168.178.174/ArtShop/src/model/getProducts.php').then(response => (this.todo_list = response.data));
            }
        },
    })

</script>