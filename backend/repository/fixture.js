const { getConnection } = require("../config/database");
const { TABLE_FIXTURE, TABLE_FIXTURE_GW_ID, TABLE_FIXTURE_HOME_CLUB, TABLE_FIXTURE_AWAY_CLUB } = require("./constants");

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

module.exports = {
    setGW, getGW
}