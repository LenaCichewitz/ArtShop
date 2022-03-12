import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

const initialState = {
    productList: [
        { id: 1, name: 'Eiche', price: 5.00, description: '', picture: '', amount: 3 },
        { id: 2, name: 'Birke', price: 2.50, description: '', picture: '', amount: 5 }
    ]
};

export default new Vuex.Store({
    state: initialState,
    getters:{
        boughtProducts: state => state.productList.filter(product => product.amount>0),
    },
    mutations: {
        buyProduct (state, product){
            this.state.productList[product.id].amount+=product.amount;
        },
        removeProduct (state, product){
                this.state.productList[product.id].amount-=product.amount;
                if (this.state.productList[product.id].amount<0) {
                    this.state.productList[product.id].amount=0
                }
        }
    }
})