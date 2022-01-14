const { close, getConnection } = require("../config/database");

const FIND_ALL_CLUB_QUERY = `SELECT * FROM "C##FPL"."club"`


const findAll = async () => {
    const connection = await getConnection()
    const result = await connection.execute(FIND_ALL_CLUB_QUERY)
    connection.release()
    return result
}

module.exports = { findAll }