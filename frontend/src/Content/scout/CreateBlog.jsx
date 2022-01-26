import { Button, Grid, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useState } from "react";
import MDEditor from '@uiw/react-md-editor';
import ImageUploader from "../components/ImageUploader";
import { createBlog } from "../../api";
import { useNavigate } from "react-router-dom";
import { useSnackbar } from "material-ui-snackbar-provider";

const CreateBlog = () => {

    const [title, setTitle] = useState('')
    const [cover, setCover] = useState('')
    const [writing, setWriting] = useState('')

    const navigate = useNavigate()
    const snackbar = useSnackbar()

    return (<>

        <Typography variant="h6">
            Write your views and suggestions for <Box sx={{ fontWeight: '700'}} component='span'>FPL Managers</Box>.
        </Typography>

        <Box component='form' sx={{mt: 3, width: '100%'}} onSubmit={ e=> {
            e.preventDefault()
            createBlog({title, coverImgUrl: cover, content: writing}).then(data => {
                navigate(-1)
                snackbar.showMessage('Blog posted successfully');
            }).catch(err => {
                console.log(err);
                console.log(err.response);
                snackbar.showMessage(err.response.data.info || 'Error');
            })
        }}>
            
            <TextField variant='outlined' type={'text'} label='Title' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={title} onChange={e=>{setTitle(e.target.value)}} />

            <Grid container justifyContent="space-around" alignItems="center" sx={{my: 3}}>
                <Grid xs={3} item>
                    Cover Photo
                </Grid>
                <Grid xs={6} item>
                    <ImageUploader onUpload={setCover} init={cover}/>
                </Grid>
            </Grid>

            <MDEditor value={writing} onChange={setWriting} height={400}/>
            {/* <MDEditor.Markdown source={writing} /> */}
            
            <Grid container direction="row" justifyContent="space-between" alignItems="center" sx={{my: 3}}>
                
                <Grid item xs={6}>
                <TextField variant='outlined' type={'text'} label='Uploaded Image URL' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={cover} />
                </Grid>

                <Grid item>
                <Button variant="contained" type="submit">
                    Publish
                </Button>
                </Grid>
                
            </Grid>

        </Box>

    </>)
}

export default CreateBlog