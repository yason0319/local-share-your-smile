var express = require('express');
var router = express.Router();
const controller = require('../components/controller');
 
router.get('/', controller.home); //home route
router.get('/auth', controller.auth); //redirect route
 
module.exports = router;