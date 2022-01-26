import { ArrowBackIos, ArrowForwardIos, Search } from "@mui/icons-material"
import { Button, Card, CardActions, CardContent, Chip, Dialog, DialogActions, DialogContent, DialogTitle, FormControl, Grid, IconButton, Input, InputLabel, Link, MenuItem, Select, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system";
import { useSnackbar } from "material-ui-snackbar-provider";
import { useEffect, useState } from "react"
import {Link as RouterLink } from 'react-router-dom';
import { addScout, disableUser, getAllClubs, getAllUsers } from "../../api";

const UserManagement = () => {

    const [page, setPage] = useState(1)
    const [query, setQuery] = useState('')
    const [users, setUsers] = useState([{username: 'MJKSabit', name: 'Md. Jehadul Karim', email: 'sabit.jehadul.karim@gmail.com', disabled: 0, user_type: 'ADMIN'}])
    
    const [dialogOpen, setDialogOpen] = useState(false)
    const closeDialog = () => {setDialogOpen(false)}

    const snakbar = useSnackbar()

    const fetchUser = () => {
        getAllUsers(query, page).then(result => {
            setUsers(result)
        }).catch(err => {
            console.log(err);
            snakbar.showMessage(err.data.info || 'Error')
        })
    }

    useEffect( () => {
        if (!dialogOpen)
            fetchUser()
    }, [page, dialogOpen])

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
                <TextField fullWidth placeholder="Search..." size='small' value={query} onChange={e => {setQuery(e.target.value)}} 
                onKeyDown={e => {if (e.key === 'Enter') {
                    if (page === 1) fetchUser()
                    else setPage(1)
                }}}/>
            </Grid>
            <Grid item xs={1}>
                <IconButton fullWidth onClick={ e => {if (page === 1) fetchUser(); else setPage(1);}}>
                    <Search />
                </IconButton>
            </Grid>
            
            <Grid item xs={1}>
                <IconButton fullWidth onClick={()=>{if (page>1) setPage(page-1)}}>
                    <ArrowBackIos />
                </IconButton>
            </Grid>

            <Grid item xs={1}>
                <Typography variant='subtitle2' sx={{textAlign: 'center'}}>
                    {page}
                </Typography>
            </Grid>

            <Grid item xs={1}>
                <IconButton fullWidth onClick={ () => {setPage(page+1)}}>
                    <ArrowForwardIos />
                </IconButton>
            </Grid>
        </Grid>

        <Grid container justifyContent="flex-start" alignItems="center" sx={{mt: 4}} spacing={2}>
            {users.map(value => <UserCard data={value} />)}
        </Grid>
    </>)
}

const UserCard = ({data}) => {
    const [disabled, setDisabled] = useState(data && data.disabled)
    const snackbar = useSnackbar()
    
    if (!data)
        return null
    
    const {username, email, name, user_type} = data
    
    
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
                <Button size="small" variant='outlined' color={disabled ? "success" : "error"} onClick={ e => {
                    disableUser(username, !disabled).then(data => {
                        snackbar.showMessage('Successfully Changed!')
                        setDisabled(!disabled);
                    }).catch( err => {
                        snackbar.showMessage(err.data.info || 'Error!')
                        console.log(err);
                    })
                }}>
                    {disabled ? 'Enable' : 'Disable'}
                </Button>
            </CardActions>
        </Card>
    </Grid>
} 

const AddScoutDialog = ({handleClose}) => {

    const snackbar = useSnackbar()

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
            <Button onClick={ e => {
                addScout({ username, name, password, email, favourite_club: favouriteClub}).then( data => {
                    handleClose();
                    snackbar.showMessage(`Scout: '${username}' Created`)
                }).catch( err => {
                    console.log(err.response.data);
                    snackbar.showMessage(err.response.data.info || "Error")
                })
            }}>Create Scout Account</Button>
        </DialogActions>
    </>)
}

export default UserManagement