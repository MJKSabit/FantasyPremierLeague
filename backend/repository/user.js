const { getConnection } = require("oracledb")
const { TABLE_USER_USERNAME, TABLE_USER_NAME, TABLE_USER_PASSWORD, TABLE_USER } = require("../model/user")

const GET_ONE_USER_QUERY = `SELECT * FROM ${TABLE_USER} WHERE ${TABLE_USER_USERNAME} = :1`

const getUser = async (username) => {
    const connection = await getConnection()
    const result = await connection.execute(GET_ONE_USER_QUERY, [username])
    connection.release()
    return result.rows
}

module.exports = {getUser}