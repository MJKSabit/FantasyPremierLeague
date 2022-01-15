const jwt = require("jsonwebtoken");

const JWT_SECRET_KEY = process.env.JWT_SECRET_KEY || 'i-do-not-care-what-the-key-is'

const generate = (payload, expiresIn = '48h') => (
    jwt.sign(payload, JWT_SECRET_KEY, {expiresIn})
)

const verify = (token, type) => {
    const payload = jwt.verify(token, JWT_SECRET_KEY)
    if (type && type !== payload.type)
        throw '403 : Forbidden API'
    
    return payload
}

module.exports = {generate, verify}