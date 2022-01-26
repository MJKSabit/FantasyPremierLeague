const { getConnection } = require("../config/database");
const { TABLE_BLOG, TABLE_BLOG_WRITER, TABLE_BLOG_TITLE, TABLE_BLOG_COVER_IMAGE_URL, TABLE_BLOG_PUBLICATION_DATE, TABLE_BLOG_CONTENT } = require("./constants");

const INSERT_BLOG_SQL = `INSERT INTO ${TABLE_BLOG} (${TABLE_BLOG_WRITER}, ${TABLE_BLOG_TITLE}, ${TABLE_BLOG_COVER_IMAGE_URL}, ${TABLE_BLOG_PUBLICATION_DATE}, ${TABLE_BLOG_CONTENT}) VALUES (:1, :2, :3, CURRENT_TIMESTAMP, :4)`


const insertBlog = async (writer, title, coverImgUrl, content) => {
    const connection = await getConnection()
    console.log(INSERT_BLOG_SQL);
    const result = await connection.execute(INSERT_BLOG_SQL, [writer, title, coverImgUrl, content])
    connection.release()
    console.log(result);
    return true
}

module.exports = {insertBlog}