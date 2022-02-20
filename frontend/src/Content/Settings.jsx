import { Box, Button, TextField, Typography } from "@mui/material";
import { useSnackbar } from "material-ui-snackbar-provider";
import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { updatePassword } from "../api";

export default function Settings () {

    const [oldPassword, setOldPassword] = useState('')
    const [password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');

    const snackbar = useSnackbar()

    return <>
        <Typography variant="h6">
            Reset your password
        </Typography>

        <Box component='form' sx={{mt: 3, width: '60%'}} onSubmit={ e=> {
            e.preventDefault()
            if (password !== confirmPassword)
                snackbar.showMessage('Passwords do not match!')
            else
                updatePassword(oldPassword, password).then(data => {
                    snackbar.showMessage(`Password Changed!`)
                    setOldPassword('')
                    setPassword('')
                    setConfirmPassword('')
                }).catch( err => {
                    console.log(err.response)
                    snackbar.showMessage(err.response.data.info)
                })
        }}>
            <TextField type={'password'} variant='outlined' label='Old Password' sx={{display: 'block'}} margin="normal" size='small' fullWidth
            value={oldPassword} onChange={e=>{setOldPassword(e.target.value)}} />

            <TextField type={'password'} variant='outlined' label='New Password' sx={{display: 'block'}} margin="normal" size='small' fullWidth
            value={password} onChange={e=>{setPassword(e.target.value)}} />

            <TextField type={'password'} variant='outlined' label='Confirm Password' sx={{display: 'block'}} margin="normal" size='small' fullWidth
            value={confirmPassword} onChange={e=>{setConfirmPassword(e.target.value)}} />

            <Button variant="contained" fullWidth margin='dense' sx={{mt: 1, mb: 2}} type="submit">Change Password</Button>

        </Box>
    </>
}