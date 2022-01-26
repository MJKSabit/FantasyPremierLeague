import { Avatar, Button, CircularProgress, Grid } from "@material-ui/core"
import { CloudUpload } from "@mui/icons-material"
import axios from "axios"
import { useState } from "react"
import { IconButton } from "@mui/material";

const IMGBB_API = "https://api.imgbb.com/1/upload"
const IMGBB_API_KEY = 'f96dcb0d10309fcb8be71d9b7a82022a'

const uploadImage = async (file) => {
    const formData = new FormData()
    formData.append("image", file);
    const {data} = await axios.post(`${IMGBB_API}?key=${IMGBB_API_KEY}`,
        formData, {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
        })
    
    return data.data.url
}

export default function ImageUploader({onUpload, init=null}) {
  const [isUploading, setUploading] = useState(false)
  const [uploadLink, setUploadLink] = useState(init)
  
  const onFileSelected = (e) => {
    const file = e.target.files[0]
    if (!file) return
    setUploading(true)
    uploadImage(file).then(link => {
      onUpload && onUpload(link)
      setUploadLink(link)
      setUploading(false)
    })
  }

  return (
    <Grid container direction="row"
      alignItems="center" spacing={3} style={{width: '100%'}} justifyContent="center">
      <Grid item>
        {isUploading ? 
          <CircularProgress /> :
          <Avatar src={uploadLink} style={{ height: '100px', width: '100px' }} variant="rounded">
            Img
          </Avatar>
        }
      </Grid>
      <Grid item>
        <input type="file" onChange={ onFileSelected } accept="image/*" multiple={false}
          style={{ display: 'none' }} id="raised-button-file-img"/>
        <label htmlFor="raised-button-file-img">
          <IconButton variant="outlined" component="span">
            <CloudUpload style={{marginRight: '8px'}}/>Upload
          </IconButton>
        </label> 
      </Grid>
    </Grid>
  )
}