import { Button, Card, CardActionArea, CardContent, CardMedia, CircularProgress, Grid, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useNavigate, useParams } from "react-router-dom"
import {useState, useEffect} from 'react'
import { getAllBlogs, getBlog, getScoutBlog } from '../../api'
import MDEditor from '@uiw/react-md-editor';
import {BlogCard} from '../anonymous/Blog'

const MyBlogList = () => {

    const [blogs, setBlogs] = useState([])
    const [page, setPage] = useState(1)
    const [loading, setLoading] = useState(false)

    let fetchBlogs = () => {
        setLoading(true)
        getScoutBlog(page).then(data => {
            setLoading(false)
            setBlogs(blogs.concat(data))
            setPage(page+1)
        }).catch(err => {
            setLoading(false)
            console.log(err);
        })
    }

    useEffect(() => {
        setBlogs([])
        fetchBlogs()
    }, [])

    return (<>
        <Typography variant="h6">
            {`My Blogs`}.
        </Typography>

        <Grid container spacing={4} sx={{mt: 2}} >

            {blogs.map( v => <Grid xs={6} item><BlogCard blog={v} deleteAction={true}/></Grid> )}

        </Grid>

        <Button variant="filled" fullWidth sx={{mt: 4}} onClick={ e => {fetchBlogs()}} disabled={loading}>
            Load More
        </Button>
    </>)
}

export default MyBlogList