const { getConnection } = require("oracledb")
const { TABLE_PLAYER_CLUB, VIEW_PLAYER_LIST, TABLE_PLAYER, TABLE_PLAYER_PRICE_CURRENT, TABLE_PLAYER_AVAILIBILITY_STATUS, TABLE_PLAYER_AVAILIBILITY_PERCENTAGE, TABLE_PLAYER_ID } = require("./constants")

const GET_ALL_PLAYER_OF_CLUB = `SELECT * FROM ${VIEW_PLAYER_LIST} WHERE ${TABLE_PLAYER_CLUB} = :1`

const getAllPlayers = async (club) => {
    const connection = await getConnection()
    console.log(GET_ALL_PLAYER_OF_CLUB);
    const result = (await connection.execute(GET_ALL_PLAYER_OF_CLUB, [club])).rows
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

const deletePlayer = async (id) => {

}

module.exports = {getAllPlayers, editPlayer}