import { Button, FormControl, InputLabel, MenuItem, Select, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system"
import { useSnackbar } from "material-ui-snackbar-provider";
import { useEffect, useState } from "react";
import { Link, Link as RouterLink, useNavigate } from 'react-router-dom';
import { getAllClubs, register } from "../../api";


const RegisterPage = () => {
    
    const [email, setEmail] = useState('');
    const [username, setUsername] = useState('');
    const [name, setName] = useState('');
    const [password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const [favouriteClub, setFavouriteClub] = useState('');
    const [allClub, setAllClub] = useState([]);

    const snackbar = useSnackbar()
    const navigate = useNavigate()

    useEffect( () => {
        getAllClubs().then( data => {
            setAllClub(data)
        }).catch( err => {
            console.log(err);
        })
    }, [])

    return (<>
        <Typography variant="h6">
            Create a new account and get into <Box sx={{ fontWeight: '700'}} component='span'>Fantasy Premier League</Box>.
        </Typography>

        <Box component='form' sx={{mt: 3, width: '60%'}} onSubmit={ e=> {
            e.preventDefault()
            register(username, name, email, password, favouriteClub).then(data => {
                snackbar.showMessage(`User created with ${data.username}`)
            }).catch( err => {
                console.log(err.response)
                snackbar.showMessage(err.response.data.info)
            })
        }}>

            <TextField variant='outlined' type={'text'} label='Email' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={email} onChange={e=>{setEmail(e.target.value)}} />

            <TextField variant='outlined' type={'text'} label='Username' sx={{display: 'block', mb: 4}} margin='normal' size='small' fullWidth
            value={username} onChange={e=>{setUsername(e.target.value)}} />
            
            <TextField variant='outlined' type={'text'} label='Name' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={name} onChange={e=>{setName(e.target.value)}} />

            <FormControl sx={{mt: 2, mb: 4}} size="small" fullWidth>
                <InputLabel id='fav-club-label'>Favourite Club</InputLabel>

                <Select labelId="fav-club-label"
                    value={favouriteClub}
                    label='Favourite Club'
                    onChange={ e => { e.target.value && setFavouriteClub(e.target.value)}}
                >
                    <MenuItem value=''>Select</MenuItem>
                    {allClub.map( v => (
                        <MenuItem value={v.short_name} key={v.short_name}>{v.name}</MenuItem>
                    ))}
                </Select>
            </FormControl>

            <TextField type={'password'} variant='outlined' label='Password' sx={{display: 'block'}} margin="normal" size='small' fullWidth
            value={password} onChange={e=>{setPassword(e.target.value)}} />

            <TextField type={'password'} variant='outlined' label='Confirm Password' sx={{display: 'block'}} margin="normal" size='small' fullWidth
            value={confirmPassword} onChange={e=>{setConfirmPassword(e.target.value)}} />

            <Button variant="contained" fullWidth margin='dense' sx={{mt: 1, mb: 2}} type="submit">Create New Account</Button>

        </Box>

        <Typography paragraph>
            Already have an account?&nbsp;
            <Link component={RouterLink} to="/home">
                Log in
            </Link>
            &nbsp;to your account
        </Typography>
    </>)
}

export default RegisterPage;