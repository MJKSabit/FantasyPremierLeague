const blog = require('../repository/blog')
const { OK, NOT_FOUND, errorInfo } = require('./HttpStatus')

const getAllBlogs = async (req, res) => {
    const p = Number.parseInt(req.query.p || '1') - 1
    res.status(OK).json(await blog.getAllBlogs(p))
}

const getBlog = async (req, res) => {
    const id = Number.parseInt(req.params.id)
    const result = await blog.getBlog(id)

    if (result.length === 0) {
        res.status(NOT_FOUND).json(errorInfo(`Blog with id=${id} not found`))
        return
    }

    res.status(OK).json(result[0])
}

module.exports = {
    getAllBlogs,
    getBlog
}