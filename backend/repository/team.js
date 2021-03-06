const { getConnection } = require("../config/database");
const { TABLE_TEAM, TABLLE_TEAM_OWNER, TABLE_CURRENT_SQUAD, TABLE_PLAYER } = require("./constants");


const HAS_TEAM_QUERY = `SELECT * FROM ${TABLE_TEAM} WHERE ${TABLLE_TEAM_OWNER} = :1`
const hasTeam = async (username) => {
    const connection = await getConnection()
    const result = (await connection.execute(HAS_TEAM_QUERY, [username])).rows
    connection.release()
    return result.length === 1
}

const INSERT_TEAM = `INSERT INTO ${TABLE_TEAM}("owner", "team_name", "team_balance", "total_points") VALUES (:1, :2, :3, 0)`
const GET_TEAM_ID = `SELECT "id" FROM ${TABLE_TEAM} WHERE "owner" = :1`
const GET_TEAM = `SELECT * FROM ${TABLE_TEAM} WHERE "owner" = :1`
const INSERT_CURRENT_SQUAD = `INSERT INTO ${TABLE_CURRENT_SQUAD} VALUES (:1, :2, :3)`

const addTeam = async (username, teamname, players) => {
    const GET_PLAYERS = `SELECT "id", "price_current", "club" FROM "player" WHERE "id" in (${players.join(',')})`

    const connection = await getConnection()
    const selected_players = (await connection.execute(GET_PLAYERS)).rows
    let balance_left = 100;
    selected_players.forEach(p => {
        balance_left -= p.price_current
    })

    await connection.execute(INSERT_TEAM, [username, teamname, balance_left])
    const teamId = (await connection.execute(GET_TEAM_ID, [username])).rows[0].id

    for (let i=0; i<selected_players.length; i++) {
        const p = selected_players[i]
        await connection.execute(INSERT_CURRENT_SQUAD, [teamId, p.id, p.price_current])
    }

    connection.release()
}

const GET_PLAYERS_OF_TEAM = `SELECT * FROM "player_list_view" JOIN "current_squad" on ("player_id" = "id") WHERE "team_id" = :1`

const getTeam = async (username) => {
    const connection = await getConnection()
    const team = (await connection.execute(GET_TEAM, [username])).rows[0]
    team.players = (await connection.execute(GET_PLAYERS_OF_TEAM, [team.id])).rows
    connection.release()
    return team
}

const GET_PLAYER_PRICE = `SELECT "price_current" FROM ${TABLE_PLAYER} WHERE "id" = :1`
const SET_TEAM_BALANCE_AND_POINTS = `UPDATE ${TABLE_TEAM} SET "team_balance" = "team_balance" + :1, "total_points" = "total_points" - 4 * :2 WHERE "id" = :3`
const TRANSFER_PLAYER = `UPDATE "current_squad" SET "player_id" = :1 WHERE "player_id" = :2 AND "team_id" = :3`

const transferTeam = async (username, outPlayers, inPlayers) => {
    let inPrice = 0, outPrice = 0
    const connection = await getConnection()
    const teamId = (await connection.execute(GET_TEAM_ID, [username])).rows[0].id

    for (let i=0; i<inPlayers.length; i++)
        inPrice += (await connection.execute(GET_PLAYER_PRICE, [inPlayers[i]])).rows[0].price_current
    
    for (let i=0; i<outPlayers.length; i++)
        outPrice += (await connection.execute(GET_PLAYER_PRICE, [outPlayers[i]])).rows[0].price_current

    await connection.execute(SET_TEAM_BALANCE_AND_POINTS, [outPrice-inPrice, outPlayers.length, teamId], { autoCommit: false })
    
    for (let i=0; i<inPlayers.length; i++)
        await connection.execute(TRANSFER_PLAYER, [inPlayers[i], outPlayers[i], teamId], { autoCommit: false })

    connection.commit()
    connection.release()
}

const GET_TEAM_DETAILS = `SELECT T."id", T."team_name", T."team_balance", T."total_points", U."name", C."name" "fav_club", C."logo_url" FROM "team" T JOIN "user" U ON (T."owner" = U."username") JOIN "club" C ON (U."favourite_club" = C."short_name") WHERE T."id" = :1`

const GET_GW_POINTS = `SELECT P."id", P."name", P."club", P."position", NVL((SELECT SUM(FS."points") FROM "fixture_stats" FS JOIN "fixture" F ON (FS."fixture_id" = F."id") WHERE F."gw_id" = GS."gw_id" AND P."id" = FS."player_id" ), 0) "gw_points" FROM "prev_gw_sqad" GS JOIN "player" P ON ("player_id" = "id") WHERE GS."team_id" = :1 AND GS."gw_id" = :2`
const gwPoints = async (teamId, gwId) => {
    const result = {}
    const connection = await getConnection()
    result.team = (await connection.execute(GET_TEAM_DETAILS, [teamId])).rows
    result.players = (await connection.execute(GET_GW_POINTS, [teamId, gwId])).rows
    connection.release()
    return result
}

const gwPointsFromUsername = async (username, gwId) => {
    const connection = await getConnection()
    const rows = (await connection.execute(GET_TEAM_ID, [username])).rows
    const teamId = rows.length && rows[0].id
    connection.release()
    return await gwPoints(teamId, gwId)
}

module.exports = {
    hasTeam,
    addTeam,
    getTeam,
    transferTeam,
    gwPoints,
    gwPointsFromUsername
}