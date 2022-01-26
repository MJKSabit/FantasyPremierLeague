const EMAIL_REGEX = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

const USERNAME_REGEX = /^[a-z][a-z0-9_]{4,19}/

const validateEmail = (email) => (EMAIL_REGEX.test(email))

const validateUsername = (username) => (USERNAME_REGEX.test(username))

module.exports = {validateEmail, validateUsername}