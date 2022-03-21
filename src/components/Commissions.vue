<template>
  <body>
    <meta charset="UTF-8" />
    <title>Kommissions</title>
    <div id="commissions">
      <div class="comissions">
        <label v-bind="commissions_new"> description</label> <br />
        <textarea v-model="commissions_new" /> <br />
        <label v-bind="email">e-mail</label><br />
        <input v-model="email" /> <br >
        <br>

        <button @click="addComission()">Anfrage Stellen</button>
      </div>
    </div>
  </body>
</template>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
export default {
  name: "commissions",
  data() {
    return {
      commissions_new: "",
      email: "",
    };
  },
  methods: {
    addComission() {
      axios
        .get(
          "http://localhost/ArtShop/src/model/addCommission.php?description=" +
            encodeURIComponent(this.commissions_new) +
            "&email=" +
            encodeURIComponent(this.email)
        )
        .then(
          function () {
            this.commissions_new = "";
            this.email = "";
          }.bind(this)
        );
    },
  },
};
</script>
<style>
input {
  width: 90%;
  margin: 8px 0;
  box-sizing: border-box;
  margin: auto;
  margin-left: auto;
    border: 2px solid #ccc;
  margin-right: auto;
}
textarea {
  height: 150px;

  width: 90%;
  border: 2px solid #ccc;
  border-radius: 4px;

  resize: none;
}
.comissions {
  margin: auto;
  padding: 12px 20px;
  margin-left: auto;
  margin-right: auto;
  background-color: #f8f8f8;
  box-sizing: border-box;
}
</style>