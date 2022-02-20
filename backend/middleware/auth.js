/*
    Sample Payload {username: '', role: 'USER'}
*/

const { errorInfo } = require("../controller/HttpStatus");
const HttpStatus = require("../controller/HttpStatus");
const jwt = require('jsonwebtoken');
const { USER_TYPE_ADMIN, USER_TYPE_SCOUT, USER_TYPE_USER } = require("../repository/constants");

const JWT_SECRET_KEY = process.env.JWT_SECRET_KEY || 'i-do-not-care-what-the-key-is'

const addUserToRequest = (req, res, next) => {
    const authHeader = req.headers.authorization;

    if (authHeader) {
        const token = authHeader.split(' ')[1];

        jwt.verify(token, JWT_SECRET_KEY, (err, user) => {
            if (err) {
                res.status(HttpStatus.UNAUTHORIZED).json(errorInfo(`Invalid 'authorization' Token`, err));
            } else {
                req.user = user;
                next()
            }
        });
    } else {
        next()
    }
};

function typeBasedAuth(allowedUserTypes) {
    return function(req, res, next) {
        if (!allowedUserTypes)
            next()
        else if (allowedUserTypes.includes(req.user && req.user.user_type))
            next()
        else
            return res.status(HttpStatus.FORBIDDEN).json(errorInfo('Access not allowed'))
    }
}

const ADMIN_AUTH = typeBasedAuth([USER_TYPE_ADMIN])
const SCOUT_AUTH = typeBasedAuth([USER_TYPE_SCOUT])
const USER_AUTH = typeBasedAuth([USER_TYPE_USER])

module.exports = {addUserToRequest, ADMIN_AUTH, SCOUT_AUTH, USER_AUTH}