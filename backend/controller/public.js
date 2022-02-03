const blog = require('../repository/blog')
const { getFixtureOfGW, getPlayerOfFixture } = require('../repository/fixture')
const player = require('../repository/player')
const settings = require('../repository/settings')
const { OK, NOT_FOUND, errorInfo } = require('./HttpStatus')

const getAllBlogs = async (req, res) => {
    const p = Number.parseInt(req.query.p || '1') - 1
    res.status(OK).json(await blog.getAllBlogs(p))
}

const getBlog = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    const result = await blog.getBlog(id)

    if (result.length === 0) {
        res.status(NOT_FOUND).json(errorInfo(`Blog with id=${id} not found`))
        return
    }

    res.status(OK).json(result[0])
}

const getClubPlayer = async (req, res) => {
    const club = req.params.club
    const result = await player.getAllPlayers(club)
    res.status(OK).json(result)
}

const getSettings = async (req, res) => {
    res.status(OK).json(await settings.getSettings())
}

const getFixture = async (req, res) => {
    let gwId = Number.parseInt(req.params.gwId)
    res.status(OK).json(await getFixtureOfGW(gwId))
}

const fixturePlayer = async (req, res) => {
    let fId = Number.parseInt(req.params.fId)
    res.status(OK).json(await getPlayerOfFixture(fId))
}

module.exports = {
    getAllBlogs,
    getBlog,
    getClubPlayer,
    getSettings,
    getFixture,
    fixturePlayer
}