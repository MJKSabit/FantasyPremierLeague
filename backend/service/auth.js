// USER REPO

const bcryptjs = require('bcryptjs');
const repository = require('../repository/user')

const USER_TYPE_ADMIN = "ADMIN", USER_TYPE_SCOUT = "SCOUT", USER_TYPE_USER = "USER"

const login = async (username, password) => {
    const user = await repository.getOne(username);

    if (!user.username)
        throw '404 : user not found'
    if (await bcryptjs.compare(password, user.password))
        return user
    else
        throw '401 : Auth Error'
}

const signUp = async ({username, password, email, favoriteClub}) => {
    const type = USER_TYPE_USER
    const hashed_password = await bcryptjs.hash(password)
}