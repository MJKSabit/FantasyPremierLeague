const { getConnection } = require("../config/database");
const { TABLE_GW, TABLE_GW_DEADLINE, TABLE_GW_ID } = require("./constants");

const FORMAT = "'YYYY-MM-DD HH24:MI:SS'"

const GET_GW = `SELECT ${TABLE_GW_ID}, TO_CHAR(${TABLE_GW_DEADLINE}, ${FORMAT}) ${TABLE_GW_DEADLINE} FROM ${TABLE_GW} ORDER BY ${TABLE_GW_ID}`

const getGW = async () => {
    const connection = await getConnection();
    const result = await connection.execute(GET_GW)
    connection.release()
    return result.rows
}

const INSERT_GW = `INSERT INTO ${TABLE_GW} VALUES (:1, TO_DATE(:2, ${FORMAT}))`
const UPDATE_GW = `UPDATE ${TABLE_GW} SET ${TABLE_GW_DEADLINE} = TO_DATE(:1, ${FORMAT}) WHERE ${TABLE_GW_ID} = :2`

const setGW = async (id, deadline) => {
    const connection = await getConnection();
    let result = await connection.execute(UPDATE_GW, [deadline, id])

    if (result.rowsAffected === 0) {
        result = await connection.execute(INSERT_GW, [id, deadline])
    }
    connection.release()
}

module.exports = {
    setGW, getGW
}