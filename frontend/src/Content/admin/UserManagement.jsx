import { ArrowBackIos, ArrowForwardIos, Search } from "@mui/icons-material"
import { Button, Card, CardActions, CardContent, Chip, Dialog, DialogActions, DialogContent, DialogTitle, FormControl, Grid, IconButton, Input, InputLabel, Link, MenuItem, Select, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system";
import { useEffect, useState } from "react"
import {Link as RouterLink } from 'react-router-dom';
import { getAllClubs } from "../../api";

const UserManagement = () => {

    const [page, setPage] = useState(1)
    const [query, setQuery] = useState('')
    const [users, setUsers] = useState([{username: 'MJKSabit', name: 'Md. Jehadul Karim', email: 'sabit.jehadul.karim@gmail.com', disabled: 0, user_type: 'ADMIN'}])
    
    const [dialogOpen, setDialogOpen] = useState(false)
    const closeDialog = () => {setDialogOpen(false)}

    return (<>
        <Typography variant="h5" sx={{mb: 4}}>
            Admin Panel User Management
        </Typography>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={4}>
                <Button variant='contained' color="success" fullWidth onClick={() => {setDialogOpen(true)}}>
                    Add Scout +
                </Button>
                <Dialog open={dialogOpen} onClose={closeDialog} fullWidth='true'>
                    <DialogTitle>Create a Scout</DialogTitle>
                    <AddScoutDialog handleClose={closeDialog} />
                </Dialog>
            </Grid>
            <Grid item xs={4}>
                <TextField fullWidth placeholder="Search..." size='small' value={query} onChange={
                    e => {setQuery(e.target.value)}
                }/>
            </Grid>
            <Grid item xs={1}>
                <IconButton fullWidth onClick={e => {console.log(query);}}>
                    <Search />
                </IconButton>
            </Grid>
            
            <Grid item xs={1}>
                <IconButton fullWidth>
                    <ArrowBackIos />
                </IconButton>
            </Grid>

            <Grid item xs={1}>
                <Typography variant='subtitle2' sx={{textAlign: 'center'}}>
                    {page}
                </Typography>
            </Grid>

            <Grid item xs={1}>
                <IconButton fullWidth>
                    <ArrowForwardIos />
                </IconButton>
            </Grid>
        </Grid>

        <Grid container justifyContent="flex-start" alignItems="center" sx={{mt: 4}}>
            {users.map(value => <UserCard data={value} />)}
        </Grid>
    </>)
}

const UserCard = ({data}) => {
    if (!data)
        return null
    
    const {username, email, name, disabled, user_type} = data
    
    return <Grid item xs={6}>
        <Card sx={{width: '100%'}} >
            <CardContent>
                <Typography gutterBottom variant="h5" component="div">
                    {username} 
                <Chip label={`Type: ${user_type}`} sx={{mx: 2}}/>
                </Typography>
                <Typography variant="body2" color="text.secondary">
                    {name} <br />
                    {email}
                </Typography>
            </CardContent>
            <CardActions>
                <Button size="small" variant='outlined' color="error">
                    {disabled ? 'Enable' : 'Disable'}
                </Button>
            </CardActions>
        </Card>
    </Grid>
} 

const AddScoutDialog = ({handleClose}) => {
    const [email, setEmail] = useState('');
    const [username, setUsername] = useState('');
    const [name, setName] = useState('');
    const [password, setPassword] = useState('');
    const [favouriteClub, setFavouriteClub] = useState('');
    const [allClub, setAllClub] = useState([]);

    useEffect( () => {
        getAllClubs().then( data => {
            setAllClub(data)
        }).catch( err => {
            console.log(err);
        })
    }, [])

    return (<>
        
        <DialogContent>
        <Box component='form' sx={{mt: 3, width: '100%'}} onSubmit={ e=> {
            e.preventDefault()
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

        </Box>
        </DialogContent>

        <DialogActions>
            <Button onClick={handleClose}>Cancel</Button>
            <Button onClick={handleClose}>Create Scout Account</Button>
        </DialogActions>
    </>)
}

export default UserManagement