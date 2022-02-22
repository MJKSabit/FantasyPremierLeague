const { getConnection } = require("../config/database");
const { TABLE_BLOG, TABLE_BLOG_WRITER, TABLE_BLOG_TITLE, TABLE_BLOG_COVER_IMAGE_URL, TABLE_BLOG_PUBLICATION_DATE, TABLE_BLOG_CONTENT, TABLE_BLOG_ID, PAGE_SIZE, TABLE_USER, TABLE_USER_USERNAME, TABLE_USER_NAME } = require("./constants");

const INSERT_BLOG_SQL = `INSERT INTO ${TABLE_BLOG} (${TABLE_BLOG_WRITER}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_CONTENT}) VALUES (:1, :2, :3, CURRENT_TIMESTAMP, :4)`


const insertBlog = async (writer, title, coverImgUrl, content) => {
    const connection = await getConnection()
    const result = await connection.execute(INSERT_BLOG_SQL, [writer, title, coverImgUrl, content])
    connection.release()
    return result.rowsAffected == 1
}


const ALL_BLOGS_QUERY = `SELECT ${TABLE_BLOG_ID}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_WRITER}, ${TABLE_USER_NAME}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL} FROM ${TABLE_BLOG} JOIN ${TABLE_USER} ON (${TABLE_BLOG_WRITER} = ${TABLE_USER_USERNAME}) ORDER BY ${TABLE_BLOG_PUBLICATION_DATE} DESC OFFSET :1*${PAGE_SIZE} ROWS FETCH NEXT ${PAGE_SIZE} ROWS ONLY`

const BLOGS_OF_USER_QUERY = `SELECT ${TABLE_BLOG_ID}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_WRITER}, ${TABLE_USER_NAME}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL} FROM ${TABLE_BLOG} JOIN ${TABLE_USER} ON (${TABLE_BLOG_WRITER} = ${TABLE_USER_USERNAME}) WHERE ${TABLE_BLOG_WRITER} = :1 ORDER BY ${TABLE_BLOG_PUBLICATION_DATE} DESC OFFSET :2*${PAGE_SIZE} ROWS FETCH NEXT ${PAGE_SIZE} ROWS ONLY`

const BLOG_QUERY = `SELECT ${TABLE_BLOG_ID}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_WRITER}, ${TABLE_USER_NAME}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL}, ${TABLE_BLOG_CONTENT} FROM ${TABLE_BLOG} JOIN ${TABLE_USER} ON (${TABLE_BLOG_WRITER} = ${TABLE_USER_USERNAME}) WHERE ${TABLE_BLOG_ID} = :1`

const getAllBlogs = async (p) => {
    const connection = await getConnection()
    const {rows} = await connection.execute(ALL_BLOGS_QUERY, [p])
    connection.release()
    return rows
}

const getUserBlogs = async (username, offset) => {
    const connection = await getConnection()
    const {rows} = await connection.execute(BLOGS_OF_USER_QUERY, [username, offset])
    connection.release()
    return rows
}

const getBlog = async (id) => {
    const connection = await getConnection()
    const {rows} = await connection.execute(BLOG_QUERY, [id])
    connection.release()
    return rows
}

const DELETE_BLOG = `DELETE ${TABLE_BLOG} WHERE ${TABLE_BLOG_ID} = :1 AND ${TABLE_BLOG_WRITER} = :2`

const deleteBlog = async (id, author) => {
    const connection = await getConnection()
    const result = await connection.execute(DELETE_BLOG, [id, author])
    connection.release()
    return result.rowsAffected === 1
}

module.exports = {insertBlog, getAllBlogs, getUserBlogs, getBlog, deleteBlog}