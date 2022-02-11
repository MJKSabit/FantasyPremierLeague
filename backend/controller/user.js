const team = require('../repository/team')

const hasTeam = async (req, res) => {
    const {username} = req.user
    res.json({hasTeam: await team.hasTeam(username)})
}

module.exports = {
    hasTeam
}