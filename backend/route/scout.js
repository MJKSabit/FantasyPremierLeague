const { SCOUT_AUTH } = require('../middleware/auth');

const router = require('express-promise-router')();
const controller = require('../controller/scout')

router.use(SCOUT_AUTH)



module.exports = router;