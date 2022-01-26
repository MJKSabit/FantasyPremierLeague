import axios from 'axios'

const API_URL = 'http://localhost:8080/api'

const getAllClubs = async () => {
    const data = await axios.get(`${API_URL}/public/club/all`)
    return data.data
}

const login = async (data) => {
    const response = await axios.post(`${API_URL}/public/auth/login`, data)
    return response.data
}

const getAllUsers = async (q, p=1) => {
    const data = await axios.get(`${API_URL}/admin/user?q=${q}&p=${p}`)
    return data.data
}

const disableUser = async (username, disable) => {
    const data = await axios.post(`${API_URL}/admin/user/${username}`, {disable: disable ? 1 : 0})
    return data.data
}

const addScout = async (postData) => {
    const data = await axios.post(`${API_URL}/admin/addscout`, postData)
    return data.data
}

axios.interceptors.request.use( config => {
    const jwt = localStorage.getItem('JWT')
    if (jwt && config.url.includes(API_URL))
        config.headers.Authorization = `Bearer ${jwt}`
    return config
})





export {getAllClubs, login, getAllUsers, disableUser, addScout}