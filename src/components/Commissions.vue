<template>
   <body>
    <meta charset="UTF-8">
    <title>Kommissions</title>
    <div id="commissions">
    <b>Neuer To-Do:</b> <br>
    <input v-model="commissions_new"> <br>
    <input v-model="email"> <br>
    <button @click="addComission()">Anfrage Stellen </button>
 
    <br><br>
 
</div>
    </body>

  
</template>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

export default {
  name: "commissions",
      data() {
    return { 
        commissions_new:"",
        email: ""
    }
    },
    methods: {
        addComission() {
                 axios.get('http://localhost/test/addCommission.php?description='+encodeURIComponent(this.commissions_new)+'&email='+encodeURIComponent(this.email))
                    .then(function() {
                        this.commissions_new = "";
                        this.email = ""; 
                    }.bind(this));
        }
    }
}

</script>

<style>

</style>