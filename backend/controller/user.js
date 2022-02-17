const team = require('../repository/team')
const league = require('../repository/league')

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

const addLeague = async (req, res) => {
    const username = req.user.username
    const {leagueName, leagueCode} = req.body

    if (leagueCode.length > 6) {
        res.status(BAD_REQUEST).json(errorInfo('Wrong League Code'))
    }

    res.status(CREATED).json({created: await league.addLeague(username, leagueName, leagueCode)})
}

const joinLeague = async (req, res) => {
    const username = req.user.username
    const leagueId = Number.parseInt(req.params.id)
    const {leagueCode} = req.body
    const joined = await league.joinLeague(username, leagueId, leagueCode)

    if (joined)
        res.status(OK).json({joined: true})
    else if (joined === undefined)
        res.status(NOT_FOUND).json(errorInfo('Team Not Found'))
    else
        res.status(BAD_REQUEST).json(errorInfo('Wrong League Code'))
}

const myLeague = async (req, res) => {
    const username = req.user.username
    res.status(OK).json(await league.myLeague(username))
}

const joinedLeague = async (req, res) => {
    const username = req.user.username
    res.status(OK).json(await league.joinedLeague(username))
}

const leaveLeague = async (req, res) => {
    const username = req.user.username
    const leagueId = Number.parseInt(req.params.id)
    res.status(OK).json(await league.leaveLeague(username, leagueId))
}

const getLeague = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    res.status(OK).json(await league.getLeague(id))
}


const deleteLeague = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    const username = req.user.username
    const deleted = await league.deleteLeague(username, id)

    if (deleted)
        res.status(OK).json({deleted: true})
    else
        res.status(NOT_FOUND).json(errorInfo('Not Found/Not Owner'))
}

module.exports = {
    addLeague,
    myLeague,
    joinedLeague,
    joinLeague,
    getLeague,
    hasTeam,
    createTeam,
    getTeam,
    transferTeam,
    getPoints,
    leaveLeague,
    deleteLeague
}