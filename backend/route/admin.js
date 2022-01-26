const { ADMIN_AUTH } = require('../middleware/auth');
const router = require('express-promise-router')();
const controller = require('../controller/admin')

router.use(ADMIN_AUTH)

router.get('/user', controller.getUser)
router.post('/user/:username', controller.disableUserStat)

router.post('/addscout', controller.createScout)

module.exports = router;