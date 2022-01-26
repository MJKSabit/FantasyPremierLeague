const router = require('express-promise-router')();
const club = require('../controller/club')
const auth = require('../controller/auth')
const public = require('../controller/public')

router.get('/club/all', club.allClub)

router.post('/auth/login', auth.login)
// router.post('/auth/register', auth.register)
// router.post('/auth/fotgot', auth.forgotPassword)

router.get('/blog', public.getAllBlogs)
router.get('/blog/:id', public.getBlog)

module.exports = router