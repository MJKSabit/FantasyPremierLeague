import axios from 'axios'

const API_URL = 'http://localhost:8080/api'

export const getAllClubs = async () => {
    const data = await axios.get(`${API_URL}/public/club/all`)
    return data.data
}

export const login = async (data) => {
    const response = await axios.post(`${API_URL}/public/auth/login`, data)
    return response.data
}

export const getAllUsers = async (q, p=1) => {
    const data = await axios.get(`${API_URL}/admin/user?q=${q}&p=${p}`)
    return data.data
}

export const disableUser = async (username, disable) => {
    const data = await axios.post(`${API_URL}/admin/user/${username}`, {disable: disable ? 1 : 0})
    return data.data
}

export const addScout = async (postData) => {
    const data = await axios.post(`${API_URL}/admin/addscout`, postData)
    return data.data
}

export const getAllBlogs = async (p=1) => {
    const data = await axios.get(`${API_URL}/public/blog?p=${p}`)
    return data.data
}

export const getBlog = async (id) => {
    const data = await axios.get(`${API_URL}/public/blog/${id}`)
    return data.data
}

export const getScoutBlog = async () => {
    const data = await axios.get(`${API_URL}/scout/my`)
    return data.data
}

export const createBlog = async (postData) => {
    return (await axios.post(`${API_URL}/scout/blog`, postData)).data
}

export const register = async (username, name, email, password, favourite_club) => {
    return (await axios.post(`${API_URL}/public/auth/register`, {username, name, email, password, favourite_club})).data
}

export const getClubPlayers = async (club_short) => {
    return (await axios.get(`${API_URL}/public/club/player/${club_short}`)).data
}

axios.interceptors.request.use( config => {
    const jwt = localStorage.getItem('JWT')
    if (jwt && config.url.includes(API_URL))
        config.headers.Authorization = `Bearer ${jwt}`
    return config
})