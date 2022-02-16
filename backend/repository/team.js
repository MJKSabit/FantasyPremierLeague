const { getConnection } = require("../config/database");
const { TABLE_TEAM, TABLLE_TEAM_OWNER, TABLE_CURRENT_SQUAD } = require("./constants");


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

module.exports = {
    hasTeam,
    addTeam,
    getTeam
}