import { createApp } from 'vue'
import './style.css'
import axios from "axios"
import VueAxios from 'vue-axios'
import App from './App.vue'
import devtools from '@vue/devtools'
// if (process.env.NODE_ENV === 'development') {
//     devtools.connect(/* host, port */)
//   }
  
const app = createApp(App);
app.use(VueAxios, axios);

app.mount('#app');
