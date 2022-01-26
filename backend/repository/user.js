const oracledb = require("oracledb")
const { getConnection } = require("oracledb")
const { TABLE_USER_USERNAME, TABLE_USER, TABLE_USER_EMAIL, TABLE_USER_NAME, TABLE_USER_DISABLED, TABLE_USER_USER_TYPE, PAGE_SIZE } = require("./constants")

const GET_ONE_USER_QUERY = `SELECT * FROM ${TABLE_USER} WHERE ${TABLE_USER_USERNAME} = :1`

const getUser = async (username) => {
    const connection = await getConnection()
    const result = await connection.execute(GET_ONE_USER_QUERY, [username])
    connection.release()
    return result.rows
}

const GET_USERS_QUERY = `SELECT ${TABLE_USER_USERNAME}, ${TABLE_USER_EMAIL}, ${TABLE_USER_NAME}, ${TABLE_USER_DISABLED}, ${TABLE_USER_USER_TYPE} FROM ${TABLE_USER} WHERE ${TABLE_USER_USERNAME} like '%'||:1||'%' OFFSET :2*${PAGE_SIZE} ROWS FETCH NEXT ${PAGE_SIZE} ROWS ONLY`

const getUsers = async (match, page) => {
    const connection = await getConnection()
    const result = await connection.execute(GET_USERS_QUERY, [match, page])
    connection.release()
    return result.rows
}

const DISABLE_USER_QUERY = `UPDATE ${TABLE_USER} SET ${TABLE_USER_DISABLED} = :1 WHERE ${TABLE_USER_USERNAME} = :2`

const disableUser = async (username, disable = 1) => {
    const connection = await getConnection()
    const rows_affected = await connection.execute(DISABLE_USER_QUERY, [disable, username])
    connection.release()
    return rows_affected.rowsAffected === 1;
}

const USERNAME_OCCUPIED = `SELECT COUNT(*) FROM ${TABLE_USER} WHERE LOWER(${TABLE_USER_USERNAME}) = LOWER(:1)`
const EMAIL_OCCUPIED = `SELECT COUNT(*) FROM ${TABLE_USER} WHERE LOWER(${TABLE_USER_EMAIL}) = LOWER(:1)`

const usernameAvailable = async (username) => {
    const connection = await getConnection()
    const result = await connection.execute(USERNAME_OCCUPIED, [username])
    connection.release()
    console.log(result.rows[0]['COUNT(*)']);
    return result.rows[0]['COUNT(*)'] !== 1
}

const emailAvailable = async (email) => {
    const connection = await getConnection()
    const result = await connection.execute(EMAIL_OCCUPIED, [email])
    connection.release()
    return result.rows[0]['COUNT(*)'] !== 1
}

const CREATE_USER = `INSERT INTO ${TABLE_USER} VALUES(:1, :2, :3, :4, :5, :6, 0)`

const createUser = async (username, full_name, email, hashed_password, user_type, favourite_club) => {
    const connection = await getConnection()
    const result = await connection.execute(CREATE_USER, [username, full_name, email, hashed_password, favourite_club, user_type])
    connection.release()
    console.log(result);
    return result.rowsAffected === 1;
}


module.exports = {getUser, getUsers, disableUser, usernameAvailable, emailAvailable, createUser}