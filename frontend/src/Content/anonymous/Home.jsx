import { Button, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useState } from "react";
import { Link, Link as RouterLink, useNavigate } from 'react-router-dom';
import { login } from "../../api";
import { useSnackbar } from 'material-ui-snackbar-provider'


const HomePage = () => {
    
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');

    const navigate = useNavigate();
    const snackbar = useSnackbar()

    return (<>
        <Typography variant="h6">
            Sign In to get into the world of <Box sx={{ fontWeight: '700'}} component='span'>Fantasy Premier League</Box>.
        </Typography>

        <Box component='form' sx={{mt: 3, width: '60%'}} onSubmit={ e=> {
            e.preventDefault()

            login({username, password}).then( data => {
                localStorage.setItem('JWT', data.jwt);
                navigate('/');
                window.location.reload();
            }).catch( err => {
                snackbar.showMessage(err.response.data.info);
            })
        }}>
            <TextField variant='outlined' type={'text'} label='Username' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={username} onChange={e=>{setUsername(e.target.value)}} />
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