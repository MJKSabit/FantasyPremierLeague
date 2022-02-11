const { getConnection } = require("../config/database");
const { TABLE_TEAM, TABLLE_TEAM_OWNER } = require("./constants");


const HAS_TEAM_QUERY = `SELECT * FROM ${TABLE_TEAM} WHERE ${TABLLE_TEAM_OWNER} = :1`
const hasTeam = async (username) => {
    const connection = await getConnection()
    const result = (await connection.execute(HAS_TEAM_QUERY, [username])).rows
    connection.release()
    return result.length === 1
}

module.exports = {
    hasTeam
}