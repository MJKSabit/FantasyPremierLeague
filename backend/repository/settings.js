const { getConnection } = require("../config/database");
const { TABLE_SETTINGS, TABLE_SETTINGS_KEY, TABLE_SETTINGS_VALUE } = require("./constants");

const GET_SETTINGS = `SELECT * FROM ${TABLE_SETTINGS}`

const getSettings = async () => {
    const connection = await getConnection();
    const result = await connection.execute(GET_SETTINGS)
    connection.release()
    return result.rows
}

const SET_SETTINGS = `UPDATE ${TABLE_SETTINGS} SET ${TABLE_SETTINGS_VALUE} = :1 WHERE ${TABLE_SETTINGS_KEY} = :2`

const setSettings = async (settings) => {
    const connection = await getConnection();
    settings.forEach (v => {
        connection.execute(SET_SETTINGS, [v.value, v.key])
    })
    connection.release()
    return await getSettings()
}

module.exports = {
    getSettings,
    setSettings
}