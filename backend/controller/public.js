const blog = require('../repository/blog')
const { OK } = require('./HttpStatus')

const getAllBlogs = async (req, res) => {
    const p = Number.parseInt(req.query.p || '1') - 1
    res.status(OK).json(await blog.getAllBlogs(p))
}

module.exports = {
    getAllBlogs
}