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

export const editPlayer = async (id, availibility_percentage, availibility, price) => {
    return (await axios.put(`${API_URL}/admin/player/${id}`, {availibility_percentage, availibility, price})).data
}

export const addPlayer = async (name, club, position, ava_stat, ava_percentage, price) => {
    return (await axios.post(`${API_URL}/admin/player`, {name, club, position, ava_stat, ava_percentage, price})).data
}

export const deletPlayer = async (id) => {
    return (await axios.delete(`${API_URL}/admin/player/${id}`)).data
}

export const getGW = async () => {
    return (await axios.get(`${API_URL}/admin/gw`)).data
}

export const setGW = async (id, deadline) => {
    return (await axios.post(`${API_URL}/admin/gw`, {id, deadline})).data
}

export const getSettingsAPI = async () => {
    return (await axios.get(`${API_URL}/public/settings`)).data
}

export const setSettingsAPI = async (data) => {
    return (await axios.post(`${API_URL}/admin/settings`, data)).data
} 

export const getMatchGW = async (home, away) => {
    return (await axios.get(`${API_URL}/admin/match?home=${home}&away=${away}`)).data
}

export const setMatchGW = async (gw, home, away) => {
    return (await axios.post(`${API_URL}/admin/match`, {gw, home, away})).data
}

export const getFixtureOfGW = async (gw) => {
    return (await axios.get(`${API_URL}/public/fixture/${gw}`)).data
}

export const getPlayersOfFixture = async (fId) => {
    return (await axios.get(`${API_URL}/public/player/${fId}`)).data
}

export const setFixtureResultAPI = async (fId, result) => {
    return (await axios.post(`${API_URL}/admin/result/${fId}`, {result})).data
}

export const setStat = async (fixture_id, player_id, pts, mp, gs, gc, at, og, ps, pm, yc, rc, sv, bp) => {
    return (await axios.post(`${API_URL}/admin/stat`, {fixture_id, player_id, pts, mp, gs, gc, at, og, ps, pm, yc, rc, sv, bp})).data
}

export const getAllPlayerStat = async (sort_by, order) => {
    return (await axios.get(`${API_URL}/public/allplayer?sort_by=${sort_by}&order=${order}`)).data
}

export const userHasTeam = async () => {
    return (await axios.get(`${API_URL}/user/hasteam`)).data
}

export const addTeam = async (teamname, players) => {
    return (await axios.post(`${API_URL}/user/team`, {teamname, players})).data
}

export const getUserTeam = async () => {
    return (await axios.get(`${API_URL}/user/team`)).data
}

export const transferTeam = async (outPlayers, inPlayers) => {
    return (await axios.post(`${API_URL}/user/transfer`, {outPlayers, inPlayers})).data
}

export const getPlayerStat = async (playerId) => {
    return (await axios.get(`${API_URL}/public/stats/${playerId}`)).data
}

export const getPoint = async (gwId, teamId) => {
    return (await axios.get(`${API_URL}/user/points${teamId ? '/'+teamId : ''}?gw=${gwId}`)).data
}

export const addLeagueAPI = async (leagueName, leagueCode) => {
    return (await axios.post(`${API_URL}/user/league`, {leagueName, leagueCode})).data
}

export const joinLeagueAPI = async (leagueId, leagueCode) => {
    return (await axios.post(`${API_URL}/user/join/${leagueId}`, {leagueCode})).data
}

export const leaveLeagueAPI = async (leagueId) => {
    return (await axios.delete(`${API_URL}/user/join/${leagueId}`)).data
}

export const myLeagueAPI = async () => {
    return (await axios.get(`${API_URL}/user/myleague`)).data
}

export const joinedLeagueAPI = async () => {
    return (await axios.get(`${API_URL}/user/joinedleague`)).data
}

axios.interceptors.request.use( config => {
    const jwt = localStorage.getItem('JWT')
    if (jwt && config.url.includes(API_URL))
        config.headers.Authorization = `Bearer ${jwt}`
    return config
})