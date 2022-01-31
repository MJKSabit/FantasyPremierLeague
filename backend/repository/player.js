const { getConnection } = require("oracledb")
const { TABLE_PLAYER_CLUB, VIEW_PLAYER_LIST } = require("./constants")

const GET_ALL_PLAYER_OF_CLUB = `SELECT * FROM ${VIEW_PLAYER_LIST} WHERE ${TABLE_PLAYER_CLUB} = :1`

const getAllPlayers = async (club) => {
    const connection = await getConnection()
    console.log(GET_ALL_PLAYER_OF_CLUB);
    const result = (await connection.execute(GET_ALL_PLAYER_OF_CLUB, [club])).rows
    connection.release()
    return result
}

module.exports = {getAllPlayers}