import { ArrowBackIos, ArrowForwardIos, Search } from "@mui/icons-material"
import { Button, Card, CardActions, CardContent, Chip, Dialog, DialogActions, DialogContent, DialogTitle, FormControl, Grid, IconButton, Input, InputLabel, Link, MenuItem, Select, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system";
import { useEffect, useState } from "react"
import {Link as RouterLink } from 'react-router-dom';
import { getAllClubs } from "../../api";

const PlayerManagement = () => {

    const [page, setPage] = useState(1)
    const [query, setQuery] = useState('')
    const [players, setPlayers] = useState([{id: 1989, name: "Lacazette", position: 'FWD', availibility: 'Available', availibility_percentage: 100, price_current: 8.4, club: 'ARS'}])

    const [allClub, setAllClub] = useState([]);
    const [playerClub, setUserClub] = useState('');

    useEffect( () => {
        getAllClubs().then( data => {
            setAllClub(data)
        }).catch( err => {
            console.log(err);
        })
    }, [])
    
    const [dialogOpen, setDialogOpen] = useState(false)
    const closeDialog = () => {setDialogOpen(false)}

    return (<>
        <Typography variant="h5" sx={{mb: 4}}>
            Admin Panel Player Management
        </Typography>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={6}>
                <Button variant='contained' color="success" fullWidth onClick={() => {setDialogOpen(true)}}>
                    Add Player +
                </Button>
                <Dialog open={dialogOpen} onClose={closeDialog} fullWidth='true'>
                    <DialogTitle>Insert a Player</DialogTitle>
                    <AddPlayerDialog handleClose={closeDialog} />
                </Dialog>
            </Grid>
            <Grid item xs={5}>
            <FormControl size="small" fullWidth>
                <InputLabel id='club-label'>Club</InputLabel>

                <Select labelId="club-label"
                    value={playerClub}
                    label='Favourite Club'
                    onChange={ e => { e.target.value && setUserClub(e.target.value)}}
                >
                    <MenuItem value=''>Select</MenuItem>
                    {allClub.map( v => (
                        <MenuItem value={v.short_name} key={v.short_name}>{v.name}</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            <Grid item xs={1}>
                <IconButton fullWidth onClick={e => {console.log(query);}}>
                    <Search />
                </IconButton>
            </Grid>
        </Grid>

        <Grid container justifyContent="flex-start" alignItems="center" sx={{mt: 4}}>
            {players.map(value => <PlayerCard data={value} />)}
        </Grid>
    </>)
}

const PlayerCard = ({data}) => {
    if (!data)
        return null
    
    const {id, name, position, availibility, availibility_percentage, price_current, club, club_logo} = data
    
    return <Grid item xs={6}>
        <Card sx={{width: '100%'}} >
            <CardContent>
                <Typography gutterBottom variant="h5" component="div">
                    {name} 
                <Chip label={`${position}`} sx={{mx: 2}}/>
                </Typography>
                <Typography variant="body2" color="text.secondary">
                    {club} <br />
                    {availibility} ({availibility_percentage}%) - {price_current}
                </Typography>
            </CardContent>
            <CardActions>
                <Button size="small" variant='text' color="success">
                    Edit
                </Button>
                <Button size="small" variant='text' color="error">
                    Remove
                </Button>
            </CardActions>
        </Card>
    </Grid>
} 

const AddPlayerDialog = ({handleClose}) => {
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

export default PlayerManagement