const { getConnection } = require("oracledb")
const { TABLE_PLAYER_ID, TABLE_PLAYER_NAME, TABLE_PLAYER_POSITION } = require("./constants")

const GET_ALL_PLAYER_OF_CLUB = `SELECT ${TABLE_PLAYER_ID}, ${TABLE_PLAYER_NAME}, ${TABLE_PLAYER_POSITION}`

const getAllPlayers = async (club) => {

}