const router = require('express-promise-router')();
const controller = require('../controller/club')

router.get('/all', controller.allClub)

module.exports = router