import firebase from 'firebase'
import {ref, onUnmounted} from 'vue' 

const firebaseConfig = {
    apiKey: "AIzaSyBkYEhCVtkWwoxXjk7yFNgmYkjBFfKW8BA",
    authDomain: "artshop-ca792.firebaseapp.com",
    projectId: "artshop-ca792",
    storageBucket: "artshop-ca792.appspot.com",
    messagingSenderId: "34587031501",
    appId: "1:34587031501:web:404ffc018d098de4fff684",
    measurementId: "G-09NS2848VS"
  };

  const firebaseapp  = firebase.initializeApp(firebaseConfig)

  const db = firebaseapp.firebase()
  const usersCollection = db.collection('users')

  export const createUser = user => {
      return usersCollection.add(user)
  }

  export const getUser = async id => {
      const user = await usersCollection.doc(id).get()
      return user.exists ? user.data() : null
  }

  export const delUser = id => {
      return usersCollection.doc(id).delete()
  }

  
  export const updUser = id => {
    return usersCollection.doc(id).update()
}

export const useLoadUsers = () => {
    const users = ref([])
    const close = usersCollection.onSnapshot(snapshot => {
    users.value = snapshot.docs.map(doc => ({id: doc.id, ...doc.data()}))
    })
    onUnmounted(close)
 
    return users
}