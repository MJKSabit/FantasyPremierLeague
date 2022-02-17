const { getConnection } = require("../config/database");
const { TABLE_TEAM } = require("./constants");

const ADD_LEAGUE = `INSERT INTO "league"("owner", "name", "invitation_code") VALUES (:1, :2, :3)`

const addLeague = async (username, leagueName, leagueCode) => {
    const connection = await getConnection()
    const res = await connection.execute(ADD_LEAGUE, [username, leagueName, leagueCode])
    connection.release()
    return res.rowsAffected === 1
}

const GET_LEAGUE = `SELECT "id" FROM "league" WHERE "id" = :1 AND "invitation_code" = :2`
const GET_TEAM_ID = `SELECT "id" FROM ${TABLE_TEAM} WHERE "owner" = :1`
const JOIN_LEAGUE = `INSERT INTO "participation" VALUES (:1, :2)`

const joinLeague = async (username, leagueId, leagueCode) => {
    const connection = await getConnection()
    let valid = (await connection.execute(GET_LEAGUE, [leagueId, leagueCode])).rows.length === 1
    if (valid) {
        const team = (await connection.execute(GET_TEAM_ID, [username])).rows
        if (team.length === 1) {
            const teamId = team[0].id
            await connection.execute(JOIN_LEAGUE, [teamId, leagueId])
        } else {
            valid = undefined
        }
    }
    connection.release()
    return valid
}

const LEAVE_LEAGUE = `DELETE FROM "participation" WHERE "team_id" = :1 AND "league_id" = :2`

const leaveLeague = async (username, leagueId) => {
    let valid = true
    const connection = await getConnection()
    const team = (await connection.execute(GET_TEAM_ID, [username])).rows
    if (team.length === 1) {
        const teamId = team[0].id
        await connection.execute(LEAVE_LEAGUE, [teamId, leagueId])
    } else {
        valid = false
    }
    connection.release()
    return valid
}

const MY_LEAGUE = `SELECT * FROM "league" WHERE "owner" = :1`

const myLeague = async (username) => {
    const connection = await getConnection()
    const res = await connection.execute(MY_LEAGUE, [username])
    connection.release()
    return res.rows
}

const JOINED_LEAGUE = `SELECT L."id", L."name" FROM "league" L JOIN "participation" P ON (L."id" = P."league_id") WHERE P."team_id" = :1`

const joinedLeague = async (username) => {
    let res = []
    const connection = await getConnection()
    const team = (await connection.execute(GET_TEAM_ID, [username])).rows
    if (team.length === 1) {
        const teamId = team[0].id
        res = (await connection.execute(JOINED_LEAGUE, [teamId])).rows
    }
    connection.release()
    return res
}

const getLeague = async (leagueId) => {
    const connection = await getConnection()

    connection.release()
}

module.exports = {
    addLeague,
    myLeague,
    joinLeague,
    joinedLeague,
    getLeague,
    leaveLeague,
}