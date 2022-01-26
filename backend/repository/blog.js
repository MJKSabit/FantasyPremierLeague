const { getConnection } = require("../config/database");
const { TABLE_BLOG, TABLE_BLOG_WRITER, TABLE_BLOG_TITLE, TABLE_BLOG_COVER_IMAGE_URL, TABLE_BLOG_PUBLICATION_DATE, TABLE_BLOG_CONTENT, TABLE_BLOG_ID, PAGE_SIZE, TABLE_USER, TABLE_USER_USERNAME, TABLE_USER_NAME, TABLE_USER_EMAIL } = require("./constants");

const INSERT_BLOG_SQL = `INSERT INTO ${TABLE_BLOG} (${TABLE_BLOG_WRITER}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_CONTENT}) VALUES (:1, :2, :3, CURRENT_TIMESTAMP, :4)`


const insertBlog = async (writer, title, coverImgUrl, content) => {
    const connection = await getConnection()
    console.log(INSERT_BLOG_SQL);
    const result = await connection.execute(INSERT_BLOG_SQL, [writer, title, coverImgUrl, content])
    connection.release()
    return result.rowsAffected == 1
}

const GET_BLOGS_QUERY = `SELECT ${TABLE_BLOG_ID}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_WRITER}, ${TABLE_USER_NAME}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL}, ${TABLE_BLOG_CONTENT} FROM ${TABLE_BLOG} JOIN ${TABLE_USER} ON (${TABLE_BLOG_WRITER} = ${TABLE_USER_USERNAME}) ORDER BY ${TABLE_BLOG_PUBLICATION_DATE} DESC OFFSET :1*${PAGE_SIZE} ROWS FETCH NEXT ${PAGE_SIZE} ROWS ONLY`

const getAllBlogs = async (p = 1) => {
    --p
    const connection = await getConnection()
    const {rows} = await connection.execute(GET_BLOGS_QUERY, [p])
    connection.release()
    return rows
}

module.exports = {insertBlog, getAllBlogs}