import './blog.css'
import { Button, Card, CardActionArea, CardContent, CardMedia, Grid, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useNavigate, useParams } from "react-router-dom"

export const Blog = () => {
    const {blogId} = useParams()

    return (<>
        
        <div className='container'>
            <img src='https://mui.com/static/images/cards/contemplative-reptile.jpg' style={{width: '100%'}} alt='Blog Img'/>
            <div className="content">
            <Typography variant="h4">
                Tottenham is Shit    
            </Typography>
            <Typography variant="subtitle">
                Md. Jehadul Karim • 30 Jan 2020
            </Typography>
            </div>    
        </div>
        

        <Typography paragraph>
            {blogId}
        </Typography>
    </>)
}

const BlogCard = () => {
    const navigate = useNavigate();

    return (<Card style={{width: '100%'}} >
        <CardActionArea onClick={ e => {navigate('./1')}}>
            <CardMedia component='img' height={140} image="https://mui.com/static/images/cards/contemplative-reptile.jpg" />
            <CardContent>
                <Typography gutterBottom variant="h6" component='div'>
                    Tottenham is Shit
                </Typography>
                <Typography variant="subtitle2">
                    Md. Jehadul Karim Sabit • 30 Jan 2020
                </Typography>
            </CardContent>
        </CardActionArea>
    </Card>
)}

const BlogList = () => {
    return (<>
        <Typography variant="h6">
            Learn from the exparts. Latest Blogs from our <Box sx={{ fontWeight: '700'}} component='span'>scouts</Box>.
        </Typography>

        <Grid container spacing={4} sx={{mt: 2}} >
            <Grid xs={6} item>
                <BlogCard />
            </Grid>
            <Grid xs={6} item>
                <BlogCard />
            </Grid>
        </Grid>

        <Button variant="filled" fullWidth sx={{mt: 4}}>
            Load More
        </Button>
    </>)
}

export default BlogList