const DB_NAME = `"C##FPL"`

module.exports = {
    TABLE_CLUB: `${DB_NAME}."club"`,
    TABLE_CLUB_SHORT_NAME: `"short_name"`,
    TABLE_CLUB_NAME: `"name"`,
    TABLE_CLUB_LOGO_URL: `"logo_url"`,

    TABLE_USER: `${DB_NAME}."user"`,
    TABLE_USER_USERNAME: `"username"`,
    TABLE_USER_NAME: `"name"`,
    TABLE_USER_EMAIL: `"email"`,
    TABLE_USER_PASSWORD: `"hashed_password"`,
    TABLE_USER_FAV_CLUB: `"favourite_club"`,
    TABLE_USER_USER_TYPE: `"user_type"`,
    TABLE_USER_DISABLED: `"disabled"`,

    TABLE_PLAYER: `${DB_NAME}."player"`,
    TABLE_PLAYER_ID: `"id"`,
    TABLE_PLAYER_NAME: `"name"`,
    TABLE_PLAYER_POSITION: `"position"`,
    TABLE_PLAYER_CLUB: `"club"`,
    TABLE_PLAYER_AVAILIBILITY_STATUS: `"availibility_status"`,
    TABLE_PLAYER_AVAILIBILITY_CHANGED: `"availibility_last_changed"`,
    TABLE_PLAYER_AVAILIBILITY_PERCENTAGE: `"availibility_percentage"`,
    TABLE_PLAYER_PRICE_CURRENT: `"price_current"`,
    TABLE_PLAYER_PRICE_CHANGED: `"price_last_changed"`,
    TABLE_PLAYER_PRICE_CHANGE_AMOUNT: `"price_change_amount"`,

    TABLE_BLOG: `${DB_NAME}."blog"`,
    TABLE_BLOG_ID: `"id"`,
    TABLE_BLOG_WRITER: `"writer"`,
    TABLE_BLOG_PUBLICATION_DATE: `"publication_date"`,
    TABLE_BLOG_TITLE: `"title"`,
    TABLE_BLOG_COVER_IMAGE_URL: `"cover_image_url"`,
    TABLE_BLOG_CONTENT: `"content"`,

    TABLE_GW: `${DB_NAME}."gw"`,
    TABLE_GW_ID: `"id"`,
    TABLE_GW_DEADLINE: `"deadline"`,

    TABLE_FIXTURE: `${DB_NAME}."fixture"`,
    TABLE_FIXTURE_ID: `"id"`,
    TABLE_FIXTURE_GW_ID: `"gw_id"`,
    TABLE_FIXTURE_HOME_CLUB: `"home_club"`,
    TABLE_FIXTURE_AWAY_CLUB: `"away_club"`,

    TABLE_SETTINGS: `${DB_NAME}."settings"`,
    TABLE_SETTINGS_KEY: `"key"`,
    TABLE_SETTINGS_VALUE: `"value"`,

    SETTING_TYPE_CURRENT_GW: `CURRENT_GW`,
    SETTING_TYPE_TRANSFER_GW: `TRANSFER_GW`,
    SETTING_TYPE_POINT_STATUS: `POINT_STATUS`,
    
    VIEW_PLAYER_LIST: `${DB_NAME}."player_list_view"`,

    USER_TYPE_SCOUT: 'SCOUT',
    USER_TYPE_ADMIN: 'ADMIN',
    USER_TYPE_USER: 'USER',

    PAGE_SIZE: 20
}