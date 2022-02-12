const { USER_AUTH } = require('../middleware/auth');
const router = require('express-promise-router')();
const controller = require('../controller/user')

router.use(USER_AUTH)

router.get('/hasteam', controller.hasTeam)

router.post('/team', controller.createTeam)
router.get('/team', controller.getTeam)

module.exports = router;