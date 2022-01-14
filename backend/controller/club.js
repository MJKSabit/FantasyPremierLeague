const club = require('../repository/club')

const allClub = async (req, res, next) => {
    
    try {
        const clubs = await club.findAll()
        return res.status(200).json(clubs)
    } catch (err) {
        console.log(err)
        res.status(403).json({info: 'Internal Server Error (DB)', err: err})
    }
    
}

module.exports = { allClub }