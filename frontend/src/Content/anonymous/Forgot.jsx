import { Box, Button, TextField, Typography } from "@mui/material"
import { useState } from "react";

const ForgotPasswordPage = () => {
    const [email, setEmail] = useState('');
    

    return (<>
        <Typography variant="h6">
            Forgot Password? Don't worry.
        </Typography>
        <Typography variant="subtitle">
            Enter your email, get a password reset link to reset your password.
        </Typography>

        <Box component='form' sx={{mt: 3, width: '60%'}} onSubmit={ e=> {
            e.preventDefault()
        }}>
            <TextField variant='outlined' type={'text'} label='Email' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={email} onChange={e=>{setEmail(e.target.value)}} />
            <Button variant="contained" fullWidth margin='dense' sx={{mt: 1, mb: 2}} type="submit">Send Reset Password Link</Button>
        </Box>
    </>)
}

export default ForgotPasswordPage