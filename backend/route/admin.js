const { ADMIN_AUTH } = require('../middleware/auth');
const router = require('express-promise-router')();
const controller = require('../controller/admin')

router.use(ADMIN_AUTH)

router.get('/user', controller.getUser)
router.post('/user/:username', controller.disableUserStat)

router.post('/addscout', controller.createScout)

router.put('/player/:id', controller.editPlayer)
router.delete('/player/:id', controller.deletePlayer)
router.post('/player', controller.addPlayer)

router.get('/gw', controller.getGW)
router.post('/gw', controller.setGW)

router.get('/match', controller.getMatchGW)
router.post('/match', controller.setMatchGW)

router.post('/settings', controller.setSettings)

router.post('/result/:fId', controller.setFixtureResult)
router.post('/stat', controller.setStats)

router.get('/preprocess', controller.preprocess)
router.get('/postprocess', controller.postprocess)

module.exports = router;