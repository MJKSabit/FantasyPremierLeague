const { addUserToRequest } = require('../middleware/auth');

const router = require('express-promise-router')();

router.use(addUserToRequest)

router.use("/public", require('./public'))

router.use("/admin", require('./admin'))

// router.use("/scout", require('./scout'))

module.exports = router;