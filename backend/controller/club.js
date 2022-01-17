const club = require('../repository/club')
const HttpStatus = require('./HttpStatus')

const allClub = async (req, res, next) => {
    
    try {
        const clubs = await club.findAll()
        return res.status(HttpStatus.OK).json(clubs)
    } catch (err) {
        console.log(err)
        res.status(HttpStatus.INTERNAL_SERVER_ERROR).json(HttpStatus.errorInfo('Internal Server Error (DB)', err))
    }
}

module.exports = { allClub }