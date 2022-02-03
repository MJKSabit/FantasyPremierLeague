const { getConnection } = require("../config/database");
const { TABLE_FIXTURE, TABLE_FIXTURE_GW_ID, TABLE_FIXTURE_HOME_CLUB, TABLE_FIXTURE_AWAY_CLUB, VIEW_FIXTURE_LIST, VIEW_FIXTURE_PLAYER_LIST, TABLE_FIXTURE_ID, TABLE_FIXTURE_RESULT } = require("./constants");

const GET_GW = `SELECT ${TABLE_FIXTURE_GW_ID} FROM ${TABLE_FIXTURE} WHERE ${TABLE_FIXTURE_HOME_CLUB} = :1 AND ${TABLE_FIXTURE_AWAY_CLUB} = :2`

const getGW = async (home_club, away_club) => {
    const connection = await getConnection();
    const result = await connection.execute(GET_GW, [home_club, away_club])
    connection.release()
    if (result.rows.length === 0)
        return 0
    else 
        return result.rows[0].gw_id
}

const INSERT_GW = `INSERT INTO ${TABLE_FIXTURE}(${TABLE_FIXTURE_GW_ID}, ${TABLE_FIXTURE_HOME_CLUB}, ${TABLE_FIXTURE_AWAY_CLUB}) VALUES (:1, :2, :3)`
const UPDATE_GW = `UPDATE ${TABLE_FIXTURE} SET ${TABLE_FIXTURE_GW_ID} = :1 WHERE ${TABLE_FIXTURE_HOME_CLUB} = :2 AND ${TABLE_FIXTURE_AWAY_CLUB} = :3`

const setGW = async (gw, home, away) => {
    const connection = await getConnection();
    let result = await connection.execute(UPDATE_GW, [gw, home, away])

    if (result.rowsAffected === 0) {
        result = await connection.execute(INSERT_GW, [gw, home, away])
    }
    connection.release()
}

const GET_FIXTURE_LIST = `SELECT * FROM ${VIEW_FIXTURE_LIST} WHERE ${TABLE_FIXTURE_GW_ID} = :1`

const getFixtureOfGW = async (gw) => {
    const connection = await getConnection();
    const result = await connection.execute(GET_FIXTURE_LIST, [gw])
    connection.release()
    return result.rows
}


const GET_FIXTURE_PLAYER = `SELECT * FROM ${VIEW_FIXTURE_PLAYER_LIST} WHERE "fixture_id" = :1`

const getPlayerOfFixture = async (fixtureId) =>  {
    const connection = await getConnection();
    const result = await connection.execute(GET_FIXTURE_PLAYER, [fixtureId])
    connection.release()
    return result.rows
}

const SET_FIXTURE_RESULT = `UPDATE ${TABLE_FIXTURE} SET ${TABLE_FIXTURE_RESULT} = :1 WHERE ${TABLE_FIXTURE_ID} = :2`

const setResult = async (fixtureId, result) =>  {
    const connection = await getConnection();
    const res = await connection.execute(SET_FIXTURE_RESULT, [result, fixtureId])
    connection.release()
}

module.exports = {
    setGW, getGW, getFixtureOfGW, getPlayerOfFixture, setResult
}