const { getConnection } = require("oracledb")
const { TABLE_PLAYER_CLUB, VIEW_PLAYER_LIST, TABLE_PLAYER, TABLE_PLAYER_PRICE_CURRENT, TABLE_PLAYER_AVAILIBILITY_STATUS, TABLE_PLAYER_AVAILIBILITY_PERCENTAGE, TABLE_PLAYER_ID, TABLE_PLAYER_NAME, TABLE_PLAYER_POSITION, TABLE_PLAYER_AVAILIBILITY_CHANGED, TABLE_PLAYER_PRICE_CHANGED, TABLE_PLAYER_PRICE_CHANGE_AMOUNT } = require("./constants")

const GET_ALL_PLAYER_OF_CLUB = `SELECT * FROM ${VIEW_PLAYER_LIST} WHERE ${TABLE_PLAYER_CLUB} = :1`

const getAllPlayers = async (club) => {
    const connection = await getConnection()
    const result = (await connection.execute(GET_ALL_PLAYER_OF_CLUB, [club])).rows
    connection.release()
    return result
}

const getPlayersOrdered = async (sort_by, order) => {
    if (order !== 'ASC' && order !== 'DESC')
        order = 'DESC'
    if (sort_by !== "points" && sort_by !== "minutes_played" && sort_by !== "goal_scored" && sort_by !== "assist" && sort_by !== "clean_sheet" && sort_by !== "bonus_point" && sort_by !== "price")
        sort_by = 'price'

    const GET_ALL_PLAYER = `SELECT * FROM "player_stats" ORDER BY "${sort_by}" ${order}`
    const connection = await getConnection()
    const result = (await connection.execute(GET_ALL_PLAYER)).rows
    connection.release()
    return result
}

const UPDATE_PLAYER_DATA = `UPDATE ${TABLE_PLAYER} SET ${TABLE_PLAYER_PRICE_CURRENT} = :1, ${TABLE_PLAYER_AVAILIBILITY_STATUS} = :2, ${TABLE_PLAYER_AVAILIBILITY_PERCENTAGE} = :3 WHERE ${TABLE_PLAYER_ID} = :4`

const editPlayer = async (id, availibility, availibility_percentage, price) => {
    const connection = await getConnection()
    const result = await connection.execute(UPDATE_PLAYER_DATA, [price, availibility, availibility_percentage, id])
    connection.release()
    return result.rowsAffected === 1
}

const DELETE_PLAYER = `DELETE FROM ${TABLE_PLAYER} WHERE ${TABLE_PLAYER_ID} = :1`

const deletePlayer = async (id) => {
    const connection = await getConnection()
    const result = await connection.execute(DELETE_PLAYER, [id])
    connection.release()
    return result.rowsAffected === 1
}


const ADD_PLAYER = `INSERT INTO ${TABLE_PLAYER}(${TABLE_PLAYER_NAME}, ${TABLE_PLAYER_CLUB}, ${TABLE_PLAYER_POSITION}, ${TABLE_PLAYER_AVAILIBILITY_STATUS}, ${TABLE_PLAYER_AVAILIBILITY_PERCENTAGE}, ${TABLE_PLAYER_PRICE_CURRENT}, ${TABLE_PLAYER_AVAILIBILITY_CHANGED}, ${TABLE_PLAYER_PRICE_CHANGED}, ${TABLE_PLAYER_PRICE_CHANGE_AMOUNT}) VALUES (:1, :2, :3, :4, :5, :6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, .0)`

const addPlayer = async (name, club, position, ava_stat, ava_percentage, price) => {
    const connection = await getConnection()
    const result = await connection.execute(ADD_PLAYER, [name, club, position, ava_stat, ava_percentage, price])
    connection.release()
    return result.rowsAffected === 1
}

const GET_PLAYER_STAT = `SELECT FS.*, FX.* FROM "fixture_stats" FS JOIN "fixture" FX ON (FS."fixture_id" = FX."id") WHERE "player_id" = :1`
const GET_PLAYER_FIXTURE = `SELECT FX.* FROM "fixture" FX JOIN "player" P ON (P."club" = FX."home_club" OR P."club" = FX."away_club") WHERE P."id" = :1 ORDER BY "gw_id"`
const GET_PLAYER = `SELECT * FROM ${VIEW_PLAYER_LIST} WHERE "id" = :1`

const playerStats = async (playerId) => {
    const result = {}
    const connection = await getConnection()
    result.stats = (await connection.execute(GET_PLAYER_STAT, [playerId])).rows
    result.fixture = (await connection.execute(GET_PLAYER_FIXTURE, [playerId])).rows
    result.player = (await connection.execute(GET_PLAYER, [playerId])).rows[0]
    connection.release()
    return result
}

module.exports = {getAllPlayers, editPlayer, deletePlayer, addPlayer, getPlayersOrdered, playerStats}