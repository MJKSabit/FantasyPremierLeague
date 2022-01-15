const bcryptjs = require('bcryptjs')
const user = require('../repository/user')
const { generate } = require('../util/jwt')

const login = async (req, res) => {
    const {username, password} = req.body

    if (!username || !password) {
        res.status(400).send({info: 'Blank Username / Password'})
        return
    }

    const [user_data] = await user.getUser(username)
    
    if (!user_data) {
        res.status(404).send({info: 'User not found'})
        return
    }

    if (!bcryptjs.compareSync(password, user_data.hashed_password)) {
        res.status(401).send({info: 'Incorrect Password'})
        return
    }
    
    if (user_data.disabled) {
        res.status(403).send({info: 'User Disabled'})
        return
    }

    delete user_data.hashed_password
    delete user_data.disabled
    delete user_data.email
    delete user_data.name
    delete user_data.favourite_club

    const token = generate(user_data);

    res.send({jwt: token})
}

module.exports = {login}