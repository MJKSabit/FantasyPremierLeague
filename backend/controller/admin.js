const bcryptjs = require('bcryptjs')
const { USER_TYPE_SCOUT } = require('../repository/constants')
const user = require('../repository/user')
const player = require('../repository/player')
const gw = require('../repository/gw')
const fixture = require('../repository/fixture')
const settings = require('../repository/settings')
const { validateEmail, validateUsername } = require('../util/validation')
const { OK, BAD_REQUEST, errorInfo, ACCEPTED, SERVICE_UNAVAILABLE, CREATED, INTERNAL_SERVER_ERROR } = require('./HttpStatus')
const { updateStatistics } = require('../repository/fixture_stat')

const getUser = async (req, res) => {
    const q = req.query.q || ''
    const p = Number.parseInt(req.query.p || '1') - 1
    const users = await user.getUsers(q, p)
    res.status(OK).json(users)
}

const disableUserStat = async (req, res) => {
    const username = req.params.username
    const {disable} = req.body
    console.log({username, disable});
    const done = await user.disableUser(username, disable)
    res.status(ACCEPTED).json(done)
}

const createScout = async (req, res) => {
    const { username, name, password, email, favourite_club} = req.body
    
    if (!validateEmail(email)) {
        res.status(BAD_REQUEST).json(errorInfo('Invalid Email Address'))
        return
    }

    if (!validateUsername(username)) {
        res.status(BAD_REQUEST).json(errorInfo('Username must be in lower case, greater than 4 characters, with a-z 0-9 _ only, starting with a-z'))
        return
    }

    if (!(await user.usernameAvailable(username))) {
        res.status(BAD_REQUEST).json(errorInfo('Username already in use'))
        return
    }

    if (!(await user.emailAvailable(email))) {
        res.status(BAD_REQUEST).json(errorInfo('Email already in use, try signing in'))
        return
    }

    try {
        const hashed_password = bcryptjs.hashSync(password)
        await user.createUser(username, name, email, hashed_password, USER_TYPE_SCOUT, favourite_club)
        res.status(CREATED).json(req.body)
    } catch (e) {
        res.status(INTERNAL_SERVER_ERROR).json('Error executing query', e)
    }
    
}

const editPlayer = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    let {availibility_percentage, availibility, price} = req.body

    res.status(OK).json({status: await player.editPlayer(id, availibility, availibility_percentage, price)})
}

const deletePlayer = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    res.status(OK).json({status: await player.deletePlayer(id)})
}

const addPlayer = async (req, res) => {
    const {name, club, position, ava_stat, ava_percentage, price} = req.body
    res.status(CREATED).json({status: await player.addPlayer(name, club, position, ava_stat, ava_percentage, price)})
}

const getGW = async (req, res) => {
    res.status(OK).json(await gw.getGW())
}

const setGW = async (req, res) => {
    const {id, deadline} = req.body
    await gw.setGW(id, deadline)
    await getGW(req, res)
}

const getMatchGW = async (req, res) => {
    const {home, away} = req.query
    res.status(OK).json({gw: await fixture.getGW(home, away)})
}

const setMatchGW = async (req, res) => {
    let {gw, home, away} = req.body
    if (gw === 0)
        gw = null
    await fixture.setGW(gw, home, away)
    res.status(OK).json({'info': 'Set successful'})
}

const setSettings = async (req, res) => {
    let settings_data = req.body
    res.status(OK).json(await settings.setSettings(settings_data))
}

const setFixtureResult = async (req, res) => {
    let fId = Number.parseInt(req.params.fId)
    const {result} = req.body
    await fixture.setResult(fId, result)
    res.status(OK).json({'info': 'Set successful'})
}

const setStats = async (req, res) => {
    const {fixture_id, player_id, pts, mp, gs, gc, at, og, ps, pm, yc, rc, sv, bp} = req.body
    await updateStatistics(fixture_id, player_id, pts, mp, gs, gc, at, og, ps, pm, yc, rc, sv, bp)
    res.status(OK).json({'info': 'Set successful'})
}


module.exports = { getUser, disableUserStat, createScout, editPlayer, deletePlayer, addPlayer, getGW, setGW, getMatchGW, setMatchGW, setSettings, setFixtureResult, setStats}