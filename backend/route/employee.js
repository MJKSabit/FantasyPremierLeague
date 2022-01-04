const router = require('express-promise-router')();

const EmployeeController = require('../controller/employee').EmployeeController;
let controller = new EmployeeController();

router.get('/all',controller.list);
router.get('/:id',controller.fetch);

router.delete('/',);
router.put('/',);

module.exports = router;