import axios from 'axios'

const Api = axios.create({ base_url: 'http://localhost:3000/api/v1' })
export default Api;
