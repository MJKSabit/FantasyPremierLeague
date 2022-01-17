const bcryptjs = require('bcryptjs')
const user = require('../repository/user')
const HttpStatus = require('./HttpStatus')
const { generate } = require('../util/jwt')

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

const register = async (res, req) => {
    const {username, email, password, favourite_club} = res.body
}

module.exports = { login }