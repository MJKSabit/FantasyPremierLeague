import { Grid, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useState } from "react";
// import Editor from "rich-markdown-editor";
import ImageUploader from "../components/ImageUploader";

const CreateBlog = () => {

    const [title, setTitle] = useState('')
    const [cover, setCover] = useState(null)
    const [writing, setWriting] = useState('')

    return (<>

        <Typography variant="h6">
            Write your views and suggestions for <Box sx={{ fontWeight: '700'}} component='span'>FPL Managers</Box>.
        </Typography>

        <Box component='form' sx={{mt: 3, width: '100%'}} onSubmit={ e=> {
            e.preventDefault()
        }}>
            
            <TextField variant='outlined' type={'text'} label='Username' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={title} onChange={e=>{setTitle(e.target.value)}} />

            <Grid container justifyContent="space-around" alignItems="center" sx={{my: 3}}>
                <Grid xs={3} item>
                    Cover Photo
                </Grid>
                <Grid xs={6} item>
                    <ImageUploader onUpload={ link => {setCover(link)}} init={cover}/>
                </Grid>
            </Grid>

            {/* <Editor defaultValue={writing} onChange={ e => {setWriting(e.toString())}} /> */}
            
        </Box>

    </>)
}

export default CreateBlog