const router = require('express-promise-router')();
const club = require('../controller/club')
const auth = require('../controller/auth')

router.get('/club/all', club.allClub)

router.post('/auth/login', auth.login)
// router.post('/auth/register', auth.register)
// router.post('/auth/fotgot', auth.forgotPassword)

module.exports = router