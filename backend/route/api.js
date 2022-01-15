const router = require('express-promise-router')();


router.use("/public", require('./public'))

module.exports = router;