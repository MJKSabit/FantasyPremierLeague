const blog = require('../repository/blog')
const { BAD_REQUEST, errorInfo, CREATED, OK, NOT_FOUND } = require('./HttpStatus')


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

const getMyBlog = async (req, res) => {
    const username = req.user.username
    const p = Number.parseInt(req.query.p || '1') - 1

    res.status(OK).json(await blog.getUserBlogs(username, p))
}

const deleteBlog = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    if (await blog.deleteBlog(id, req.user.username))
        res.status(OK).json({status: 'Deleted'})
    else
        res.status(NOT_FOUND).json(errorInfo('Access not allowed or not found!'))
}

module.exports = {createBlog, getMyBlog, deleteBlog}