const blog = require('../repository/blog')
const { BAD_REQUEST, errorInfo, CREATED } = require('./HttpStatus')


const createBlog = async (req, res) => {
    let {title, coverImgUrl, content} = req.body
    const writer = req.user.username

    if (!title || !content) {
        res.status(BAD_REQUEST).json(errorInfo('Title/Content not provided'))
        return
    }
    title = title.trim(); coverImgUrl = coverImgUrl.trim(); content = content.trim()

    if (!title || !content) {
        res.status(BAD_REQUEST).json(errorInfo('Title/Content is empty'))
        return
    }

    const result = await blog.insertBlog(writer, title, coverImgUrl, content)

    res.status(CREATED).json(result)
}

module.exports = {createBlog}