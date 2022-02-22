import './blog.css'
import { Button, Card, CardActionArea, CardActions, CardContent, CardMedia, CircularProgress, Grid, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useNavigate, useParams } from "react-router-dom"
import {useState, useEffect} from 'react'
import { deleteBlog, getAllBlogs, getBlog } from '../../api'
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

export const BlogCard = ({blog, deleteAction}) => {

    const [b, setBlog] = useState(blog)
    const navigate = useNavigate();

    if (!b)
        return null

    return (<Card style={{width: '100%'}} >
        <CardActionArea onClick={ e => {navigate(`/blog/${b.id}`)}}>
            <CardMedia component='img' height={140} image={b.cover_image_url} />
            <CardContent>
                <Typography gutterBottom variant="h6" component='div'>
                    {b.title}
                </Typography>
                <Typography variant="subtitle2">
                    {b.name} • {b.publication_date}
                </Typography>
            </CardContent>
        </CardActionArea>
        {deleteAction && <CardActions>
            <Button variant='text' color='error' onClick={() => {
                deleteBlog(b.id).then(d => {
                    setBlog(null)
                }).catch(console.log)
            }}>Delete</Button>    
        </CardActions>}
    </Card>
)}

const BlogList = () => {

    const disableLoading = false

    const [blogs, setBlogs] = useState([])
    const [page, setPage] = useState(1)
    const [loading, setLoading] = useState(false)

    let fetchBlogs = () => {
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
        setBlogs([])
        fetchBlogs()
    }, [])

    return (<>
        <Typography variant="h6">
            Learn from the exparts. Latest Blogs from our scouts
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