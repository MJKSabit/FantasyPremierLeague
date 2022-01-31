import './blog.css'
import { Button, Card, CardActionArea, CardContent, CardMedia, CircularProgress, Grid, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useNavigate, useParams } from "react-router-dom"
import {useState, useEffect} from 'react'
import { getAllBlogs, getBlog } from '../../api'
import MDEditor from '@uiw/react-md-editor';

export const Blog = () => {
    const {blogId} = useParams()
    const [blog, setBlog] = useState(null)

    useEffect(() => {
        getBlog(blogId).then(data => {
            console.log(data);
            setBlog(data)
        })
    }, [])

    if (!blog)
        return <CircularProgress />
    
    return (<>
        <div className='container' style={{marginBottom: '20px'}}>
            <img src={blog.cover_image_url} style={{maxHeight: '300px'}} alt='Blog Img'/>
            <div className="content">
            <Typography variant="h4">
                {blog.title}
            </Typography>
            <Typography variant="subtitle">
                {blog.name} • {blog.publication_date}
            </Typography>
            </div>
        </div>
        

        <MDEditor.Markdown source={blog.content} />
    </>)
}

const BlogCard = ({blog}) => {

    const navigate = useNavigate();

    return (<Card style={{width: '100%'}} >
        <CardActionArea onClick={ e => {navigate(`/blog/${blog.id}`)}}>
            <CardMedia component='img' height={140} image={blog.cover_image_url} />
            <CardContent>
                <Typography gutterBottom variant="h6" component='div'>
                    {blog.title}
                </Typography>
                <Typography variant="subtitle2">
                    {blog.name} • {blog.publication_date}
                </Typography>
            </CardContent>
        </CardActionArea>
    </Card>
)}

const BlogList = ({getBlogs, heading}) => {

    getBlogs = getBlogs || getAllBlogs
    const disableLoading = false

    const [blogs, setBlogs] = useState([])
    const [page, setPage] = useState(1)
    const [loading, setLoading] = useState(false)

    const fetchBlogs = () => {
        setLoading(true)
        getAllBlogs(page).then(data => {
            setLoading(false)
            setBlogs(blogs.concat(data))
            setPage(page+1)
        }).catch(err => {
            setLoading(false)
            console.log(err);
        })
    }

    useEffect(() => {
        fetchBlogs()
    }, [])

    return (<>
        <Typography variant="h6">
            { heading || `Learn from the exparts. Latest Blogs from our scouts`}.
        </Typography>

        <Grid container spacing={4} sx={{mt: 2}} >

            {blogs.map( v => <Grid xs={6} item><BlogCard blog={v}/></Grid> )}

        </Grid>

        <Button variant="filled" fullWidth sx={{mt: 4}} onClick={ e => {fetchBlogs()}} disabled={disableLoading || loading}>
            Load More
        </Button>
    </>)
}

export default BlogList