const router = require('express-promise-router')();


// passport jwt authentication
// const passport = require('passport');
// const passportConf = require('../passport');


// router.use('/*', (req,res,next)=>{
//     passport.authenticate('jwt',{failureFlash:true}, (err,user,info)=>{
//         if(err|| !user) return res.status(401).json({user});
//         next();
//     })(req,res,next);
// });

// DIVIDE THE ROUTES ACCORDING TO THE DATA WHATEVER
// router.use("/stats",require('./employee'));
// router.use("/job",require('./job'));

router.use("/club", require('./club'))

module.exports = router;