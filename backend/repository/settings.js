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

const PRE_PROCESS_PL_SQL = `DECLARE
CURRENT_GW NUMBER;
BEGIN
SELECT "value" INTO CURRENT_GW FROM "settings" WHERE "key" = 'CURRENT_GW';
UPDATE "settings" SET "value" = 1 WHERE "key" = 'POINT_STATUS';
COMMIT;

FOR FIXTURE IN (SELECT * FROM "fixture" WHERE "gw_id" = CURRENT_GW) LOOP
    -- FOR ALL FIXTURES OF THAT GAMEWEEK		
    FOR PLAYER IN (SELECT "id" FROM "player" WHERE "club" = FIXTURE."home_club" OR "club" = FIXTURE."away_club") LOOP 
        -- FOR ALL PLAYERS IN THESE FIXTURES
        -- INSERT BLANK RECORD
        INSERT INTO "fixture_stats" ("fixture_id", "player_id") VALUES (FIXTURE."id", PLAYER."id");
        
    END LOOP;
END LOOP;

FOR CURRENT_SQUAD IN (SELECT * FROM "current_squad") LOOP
    -- COPY GAMEWEEK SQUAD
    INSERT INTO "prev_gw_sqad" VALUES (CURRENT_SQUAD."team_id", CURRENT_SQUAD."player_id", CURRENT_GW);
END LOOP;

COMMIT;
-- 	DBMS_OUTPUT.PUT_LINE(CURRENT_GW);
END;`

const preprocess = async () => {
    const connection = await getConnection();
    await connection.execute(PRE_PROCESS_PL_SQL)
    connection.release()
}

const POST_PROCESS_PL_SQL = `DECLARE
CURRENT_GW NUMBER;
BEGIN
SELECT "value" INTO CURRENT_GW FROM "settings" WHERE "key" = 'CURRENT_GW';
UPDATE "settings" SET "value" = 2 WHERE "key" = 'POINT_STATUS';
UPDATE "settings" SET "value" = CURRENT_GW + 1 WHERE "key" = 'CURRENT_GW';
COMMIT;

FOR GW_PTS IN (SELECT "team_id", SUM("points") "points" FROM "prev_gw_sqad" JOIN "fixture_stats" USING ("player_id") WHERE "gw_id" = CURRENT_GW AND (SELECT "gw_id" FROM "fixture" F WHERE "fixture_id" = F."id") = "gw_id" GROUP BY "team_id") LOOP
    -- GET SCORED POINTS IN THIS GAMEWEEK
    UPDATE "team" SET "total_points" = "total_points" + GW_PTS."points" WHERE "id" = GW_PTS."team_id";
END LOOP;

COMMIT;
-- 	DBMS_OUTPUT.PUT_LINE(CURRENT_GW);
END;`

const postprocess = async () => {
    const connection = await getConnection();
    await connection.execute(POST_PROCESS_PL_SQL)
    connection.release()
}

module.exports = {
    getSettings,
    setSettings,
    preprocess,
    postprocess
}