const { USER_AUTH } = require('../middleware/auth');
const router = require('express-promise-router')();
const controller = require('../controller/user')

router.use(USER_AUTH)

router.get('/playerorder', controller.getPlayerOrder)

router.get('/hasteam', controller.hasTeam)

router.post('/team', controller.createTeam)
router.get('/team', controller.getTeam)

router.post('/transfer', controller.transferTeam)

router.get('/points/:teamId', controller.getPoints)
router.get('/points', controller.getPoints)

router.post('/league', controller.addLeague)

router.get('/league/:id', controller.getLeague)
router.delete('/league/:id', controller.deleteLeague)
router.post('/join/:id', controller.joinLeague)
router.delete('/join/:id', controller.leaveLeague)

router.get('/myleague', controller.myLeague)
router.get('/joinedleague', controller.joinedLeague)


module.exports = router;