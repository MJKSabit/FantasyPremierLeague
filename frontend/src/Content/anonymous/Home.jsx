import { Button, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useState } from "react";
import { Link, Link as RouterLink, useNavigate } from 'react-router-dom';


const HomePage = () => {
    
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const navigate = useNavigate();

    return (<>
        <Typography variant="h6">
            Sign In to get into the world of <Box sx={{ fontWeight: '700'}} component='span'>Fantasy Premier League</Box>.
        </Typography>

        <Box component='form' sx={{mt: 3, width: '60%'}} onSubmit={ e=> {
            e.preventDefault()
            localStorage.setItem('JWT', 'PLACEHOLDER-VALUE');
            navigate('/');
            window.location.reload();
        }}>
            <TextField variant='outlined' type={'text'} label='Email' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={email} onChange={e=>{setEmail(e.target.value)}} />
            <TextField type={'password'} variant='outlined' label='Password' sx={{display: 'block'}} margin="normal" size='small' fullWidth
            value={password} onChange={e=>{setPassword(e.target.value)}} />

            <Button variant="contained" fullWidth margin='dense' sx={{mt: 1, mb: 2}} type="submit">Log In</Button>

        </Box>

        <Typography paragraph>
            Forgot Password?&nbsp;
            <Link component={RouterLink} to="/forgot">
                Click Here
            </Link>
            &nbsp;to reset your password
        </Typography>

        <Typography paragraph>
            Do not have an account?&nbsp;
            <Link component={RouterLink} to="/register">
                Create new account.
            </Link>
        </Typography>

        <Typography variant="h6">
            Check out latest from <Box sx={{ fontWeight: '700'}} component='span'>
                <Link component={RouterLink} to="/blog">Blogs</Link>
            </Box>
        </Typography>
    </>)
}

export default HomePage