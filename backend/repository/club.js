const { getConnection } = require("../config/database");
const { TABLE_CLUB } = require("./constants");

const FIND_ALL_CLUB_QUERY = `SELECT * FROM ${TABLE_CLUB}`


const findAll = async () => {
    const connection = await getConnection()
    const result = await connection.execute(FIND_ALL_CLUB_QUERY)
    connection.release()
    return result
}

module.exports = { findAll }