<template>
  <div class="box">
    <template>
      <div class="row">
        <div class="col-md-8 mb-4">
          <div class="card mb-4">
            <div class="card-header py-3">
              <h5 class="mb-0">Biling details</h5>
            </div>
            <div class="card-body">
              <form>
                <div class="row mb-4">
                  <div class="col">
                    <div class="form-outline">
                      <input type="text" id="first_name" class="form-control" />
                      <label class="form-label" for="first_name"
                        >First name</label
                      >
                    </div>
                  </div>
                  <div class="col">
                    <div class="form-outline">
                      <input type="text" id="last_name" class="form-control" />
                      <label class="form-label" for="last_name"
                        >Last name</label
                      >
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <input
                    v-model="zip"
                    type="number"
                    id="zip"
                    class="form-control"
                  />
                  <label class="form-label" for="zip">Zip</label>
                </div>
                <div class="form-outline mb-4">
                  <input
                    v-model="city"
                    type="text"
                    id="city"
                    class="form-control"
                  />
                  <label class="form-label" for="city">City</label>
                </div>

                <div class="form-outline mb-4">
                  <input
                    v-model="street"
                    type="text"
                    id="street"
                    class="form-control"
                  />
                  <label class="form-label" for="street">Street</label>
                </div>

                <div class="form-outline mb-4">
                  <input
                    v-model="house_no"
                    type="number"
                    id="house_no"
                    class="form-control"
                  />
                  <label class="form-label" for="house_no">House No</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form7Example5" class="form-control" />
                  <label class="form-label" for="form7Example5">Email</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="number" id="phone" class="form-control" />
                  <label class="form-label" for="phone">Phone</label>
                </div>
                <div class="form-outline mb-4">
                  <textarea
                    class="form-control"
                    id="addictional"
                    rows="4"
                  ></textarea>
                  <label class="form-label" for="addictional"
                    >Additional information</label
                  >
                </div>
                <div class="form-check d-flex justify-content-center mb-2">
                  <input
                    class="form-check-input me-2"
                    type="checkbox"
                    value=""
                    id="create"
                    checked
                  />
                  <label class="form-check-label" for="create">
                    Create an account?
                  </label>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-4">
          <div class="card mb-4">
            <div class="card-header py-3">
              <h5 class="mb-0">Summary</h5>
            </div>
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <li
                  class="
                    list-group-item
                    d-flex
                    justify-content-between
                    align-items-center
                    border-0
                    px-0
                    pb-0
                  "
                >
                  Products
                  <!-- <span>$53.98</span> -->
                </li>
                <li
                  class="
                    list-group-item
                    d-flex
                    justify-content-between
                    align-items-center
                    px-0
                  "
                >
                  Shipping
                  <span>Gratis</span>
                </li>
                <li
                  class="
                    list-group-item
                    d-flex
                    justify-content-between
                    align-items-center
                    border-0
                    px-0
                    mb-3
                  "
                >
                  <div></div>
                  <!-- <strong>Total amount</strong>
                    <strong> </strong>
               
                  <span><strong>$53.98</strong></span> -->
                </li>
              </ul>

              <button
                type="button"
                v-on:click="addAdress()"
                class="btn btn-dark btn-lg btn-block"
              >
                Make purchase
              </button>
            </div>
          </div>
        </div>
      </div>
    </template>
  </div>
</template>


<script>
var axios = require("axios");

export default {
  name: "cart",
  data() {
    return {
      commissions_new: "",
      email: "",
    };
  },
  methods: {
    addAdress() {
      axios.get(
        "http://localhost/ArtShop/src/model/addAdress.php?zip=" +
          encodeURIComponent(this.zip) +
          "&street=" +
          encodeURIComponent(this.street) +
          "&city=" +
          encodeURIComponent(this.city) +
          "&house_no=" +
          encodeURIComponent(this.house_no)
      );
    },
  },
};
</script>

<style scoped>
.box:after {
  content: "";
  width: 30px;
  height: 30px;
  transform: rotate(45deg);
  background: inherit;
  position: absolute;
  top: -15px;
  right: 15px;
}
.box-item {
  width: 100%;
  height: 130px;
  background-color: #fff;
  box-sizing: border-box;
  border-radius: 3px;
  padding: 0 0.5em;
  margin-top: 0.3em;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(3, 1fr);
}
.item-thumb {
  max-width: 70%;
  grid-column: 1/2;
  grid-row: 1/4;
  align-self: center;
}
.item-name {
  grid-column: 2/4;
  grid-row: 1/2;
  font-weight: normal;
}
.item-amount {
  grid-column: 2/3;
  grid-row: 2/4;
  color: #ddd;
}
.cart-info {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
</style>