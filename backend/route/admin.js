const { ADMIN_AUTH } = require('../middleware/auth');

const router = require('express-promise-router')();

router.use(ADMIN_AUTH)

module.exports = router;