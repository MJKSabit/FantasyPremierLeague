const bcryptjs = require('bcryptjs')
const { USER_TYPE_SCOUT } = require('../repository/constants')
const user = require('../repository/user')
const player = require('../repository/player')
const { validateEmail, validateUsername } = require('../util/validation')
const { OK, BAD_REQUEST, errorInfo, ACCEPTED, SERVICE_UNAVAILABLE, CREATED, INTERNAL_SERVER_ERROR } = require('./HttpStatus')

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
    res.status(OK).json({status: 'deleted'})
}

const addPlayer = async (req, res) => {
    res.status(CREATED).json({status: 'created '})
}

module.exports = { getUser, disableUserStat, createScout, editPlayer, deletePlayer, addPlayer}