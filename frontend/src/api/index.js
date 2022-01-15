import axios from 'axios'

const API_URL = 'http://localhost:8080/api'

const getAllClubs = async () => {
    const data = await axios.get(`${API_URL}/public/club/all`)
    return data.data.rows
}

const login = async (data) => {
    const response = await axios.post(`${API_URL}/public/auth/login`, data)
    return response.data
}

export {getAllClubs, login}