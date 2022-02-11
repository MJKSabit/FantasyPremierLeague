const { USER_AUTH } = require('../middleware/auth');
const router = require('express-promise-router')();
const controller = require('../controller/user')

router.use(USER_AUTH)

router.get('/hasteam', controller.hasTeam)

module.exports = router;