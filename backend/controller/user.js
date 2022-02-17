const team = require('../repository/team')
const player = require('../repository/player')

const { BAD_REQUEST, errorInfo, CREATED, NOT_FOUND, OK } = require('./HttpStatus')

const hasTeam = async (req, res) => {
    const {username} = req.user
    res.json({hasTeam: await team.hasTeam(username)})
}

const createTeam = async (req, res) => {
    const {teamname, players} = req.body
    const username = req.user.username
    if (await team.hasTeam(req.user.username))
        res.status(BAD_REQUEST).json(errorInfo('Already has a team!'))
    else {
        await team.addTeam(username, teamname, players)
        res.status(CREATED).json({created: true})
    }
}

const getTeam = async (req, res) => {
    const username = req.user.username
    if (await team.hasTeam(req.user.username))
        res.status(OK).json(await team.getTeam(username))
    else {
        res.status(NOT_FOUND).json(errorInfo('No Team!'))
    }
}

const transferTeam = async (req, res) => {
    const username = req.user.username
    const {outPlayers, inPlayers} = req.body
    await team.transferTeam(username, outPlayers, inPlayers)
    res.status(OK).json({transfer: true})
}

const getPoints = async (req, res) => {
    const username = req.user.username
    const teamId = req.params.teamId && Number.parseInt(req.params.teamId)
    const gwId = Number.parseInt(req.query.gw)

    if (!teamId)
        res.status(OK).json(await team.gwPointsFromUsername(username, gwId))
    else
        res.status(OK).json(await team.gwPoints(teamId, gwId))
}

module.exports = {
    hasTeam,
    createTeam,
    getTeam,
    transferTeam,
    getPoints
}