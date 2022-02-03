const { getConnection } = require("../config/database");
const { TABLE_STAT, TABLE_STAT_PLAYER_ID, TABLE_STAT_FIXTURE_ID, TABLE_STAT_POINTS, TABLE_STAT_MINUTES_PLAYED, TABLE_STAT_GOAL_SCORED, TABLE_STAT_ASSISTS, TABLE_STAT_GOAL_CONCEDED, TABLE_STAT_OWN_GOAL, TABLE_STAT_PENALTY_MISSED, TABLE_STAT_YELLOW_CARD, TABLE_STAT_RED_CARD, TABLE_STAT_SAVES, TABLE_STAT_BONUS_POINT, TABLE_STAT_CLEAN_SHEET } = require("./constants");

const DELETE_STAT = `DELETE FROM ${TABLE_STAT} WHERE ${TABLE_STAT_PLAYER_ID} = :1 AND ${TABLE_STAT_FIXTURE_ID} = :2`
const INSERT_STAT = `INSERT INTO ${TABLE_STAT} (${TABLE_STAT_PLAYER_ID}, ${TABLE_STAT_FIXTURE_ID}, ${TABLE_STAT_POINTS}, ${TABLE_STAT_MINUTES_PLAYED}, ${TABLE_STAT_GOAL_SCORED}, ${TABLE_STAT_ASSISTS}, ${TABLE_STAT_GOAL_CONCEDED}, ${TABLE_STAT_CLEAN_SHEET}, ${TABLE_STAT_OWN_GOAL}, ${TABLE_STAT_SAVES}, ${TABLE_STAT_PENALTY_MISSED}, ${TABLE_STAT_YELLOW_CARD}, ${TABLE_STAT_RED_CARD}, ${TABLE_STAT_BONUS_POINT}) VALUES (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14)`

const updateStatistics = async (fixture_id, player_id, pts, mp, gs, gc, at, og, ps, pm, yc, rc, sv, bp) => {
    const connection = await getConnection()
    await connection.execute(DELETE_STAT, [player_id, fixture_id])
    // console.log(INSERT_STAT);
    await connection.execute(INSERT_STAT, [player_id, fixture_id, pts, mp, gs, at, gc, gc === 0 ? 1 : 0, og, sv, pm, yc, rc, bp])
    connection.release()
}

module.exports = {
    updateStatistics
}