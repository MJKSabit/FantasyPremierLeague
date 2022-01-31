const bcryptjs = require('bcryptjs')
const user = require('../repository/user')
const HttpStatus = require('./HttpStatus')
const jwt = require("jsonwebtoken");
const { USER_TYPE_USER } = require('../repository/constants');
const { validateEmail, validateUsername } = require('../util/validation');
const { INTERNAL_SERVER_ERROR, CREATED, BAD_REQUEST, errorInfo } = require('./HttpStatus');

const JWT_SECRET_KEY = process.env.JWT_SECRET_KEY || 'i-do-not-care-what-the-key-is'

const generate = (payload, expiresIn = '48h') => (
    jwt.sign(payload, JWT_SECRET_KEY, {expiresIn})
)

const login = async (req, res) => {
    const {username, password} = req.body

    if (!username || !password) {
        res.status(HttpStatus.BAD_REQUEST).send(HttpStatus.errorInfo('Blank Username / Password'))
        return
    }

    const [user_data] = await user.getUser(username)
    
    if (!user_data)
        res.status(HttpStatus.NOT_FOUND).send(HttpStatus.errorInfo('User not found'))
    else if (!bcryptjs.compareSync(password, user_data.hashed_password))
        res.status(HttpStatus.UNAUTHORIZED).send(HttpStatus.errorInfo('Incorrect Password'))
    else if (user_data.disabled)
        res.status(403).send(HttpStatus.errorInfo('User Disabled'))
    else {
        delete user_data.hashed_password
        delete user_data.disabled
        delete user_data.email
        delete user_data.name
        delete user_data.favourite_club

        const token = generate(user_data);

        res.send({jwt: token})
    }
}

const register = async (req, res) => {
    const {username, name, email, password, favourite_club} = req.body

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
        await user.createUser(username, name, email, hashed_password, USER_TYPE_USER, favourite_club)
        res.status(CREATED).json({username, email, name, favourite_club})
    } catch (e) {
        res.status(INTERNAL_SERVER_ERROR).json('Error executing query', e)
    }
}

module.exports = { login, register }