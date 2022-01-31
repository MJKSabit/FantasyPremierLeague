import { ArrowBackIos, ArrowForwardIos, Search } from "@mui/icons-material"
import { Button, Card, CardActions, CardContent, Chip, Dialog, DialogActions, DialogContent, DialogTitle, FormControl, Grid, IconButton, Input, InputLabel, Link, MenuItem, Select, TextField, Typography } from "@mui/material"
import { Box } from "@mui/system";
import { useEffect, useState } from "react"
import { getAllClubs, getClubPlayers } from "../../api";

const PlayerManagement = () => {

    const [page, setPage] = useState(1)
    const [query, setQuery] = useState('')
    const [players, setPlayers] = useState([])

    const [allClub, setAllClub] = useState([]);
    const [playerClub, setUserClub] = useState('');

    useEffect( () => {
        getAllClubs().then( data => {
            setAllClub(data)
        }).catch( err => {
            console.log(err);
        })
    }, [])

    useEffect( () => {
        getClubPlayers(playerClub).then(data => {
            setPlayers(data)
            console.log(data);
        }).catch(err => {
            console.log(err.response);
        })
    }, [playerClub])
    
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

        <Grid container justifyContent="flex-start" alignItems="center" sx={{mt: 4}} spacing={2}>
            {players.map(value => <PlayerCard data={value} />)}
        </Grid>
    </>)
}

const PlayerCard = ({data}) => {
    const [editOpen, setEditOpen] = useState(false);

    if (!data)
        return null
    
    const closeDialog = () => {setEditOpen(false)}
    
    const {id, name, position, availibility_status, availibility_percentage, price_current, club, logo_url, player_club} = data
    
    return <Grid item xs={6}>
        <Card sx={{width: '100%'}} >
            <CardContent>
                <Grid container>
                    <Grid xs={9} item>
                        <Typography gutterBottom variant="h5" component="div">
                            {name} 
                        <Chip label={`${position}`} sx={{mx: 2}}/>
                        </Typography>
                        <Typography variant="body2" color="text.secondary">
                            {player_club} <br />
                            {availibility_status} (<Box sx={{ fontWeight: '700'}} component='span'>{availibility_percentage}%</Box>)  <br />
                            ${Math.round(price_current*10)/10}
                        </Typography>
                    </Grid>
                    <Grid xs={3} item>
                        <img src={logo_url} style={{width: '100%', height: 'auto'}} alt={club} />
                    </Grid>
                </Grid>
            </CardContent>
            <CardActions>
                <Button size="small" variant='text' color="success" onClick={ () => {setEditOpen(true)}}>
                    Edit
                </Button>
                <Button size="small" variant='text' color="error">
                    Remove
                </Button>
            </CardActions>
        </Card>
        <Dialog open={editOpen} onClose={closeDialog} fullWidth='true'>
            <DialogTitle>Edit Player Status</DialogTitle>
            <EditPlayerDialog handleClose={closeDialog} data={data} />
        </Dialog>
    </Grid>
} 

const EditPlayerDialog = ({handleClose, data}) => {
    const {id, name, position, availibility_status : as_data, availibility_percentage: ap_data, price_current : pc_data, club, logo_url, player_club} = data

    const [availibility_percentage, setAvailibityPercentage] = useState('');
    const [availibility, setAvailibity] = useState('');
    const [price, setPrice] = useState('');

    return (<>
        <DialogContent>
        {name} - {club} ({position})
        <Box component='form' sx={{mt: 3, width: '100%'}} onSubmit={ e=> {
            e.preventDefault()
        }}>

            <Box sx={{ display: 'flex', justifyContent: 'space-between'}}>

            <TextField variant='outlined' type={'text'} label='Availibility' margin='normal' size='small'
            value={availibility} onChange={e=>{setAvailibity(e.target.value)}} />

            <TextField variant='outlined' type={'number'} label='Availibility Percentage' margin='normal' size='small'
            value={availibility_percentage} onChange={e=>{setAvailibityPercentage(e.target.value)}} />

            <Button variant='contained' disabled={false}>Update</Button>

            </Box>

            <Box sx={{ display: 'flex', justifyContent: 'space-between'}}>

            <IconButton>
                <ArrowBackIos />
            </IconButton>

            <TextField type={'number'} variant='outlined' label='Price' sx={{display: 'block', mt: 2, flexGrow: '1'}} margin="normal" size='small'
            value={price} onChange={e=>{setPrice(e.target.value)}} />

            <IconButton>
                <ArrowForwardIos />
            </IconButton>

            </Box>
            
        </Box>
        </DialogContent>
    </>)
}

const AddPlayerDialog = ({handleClose}) => {
    const [availibility_percentage, setAvailibityPercentage] = useState('');
    const [availibility, setAvailibity] = useState('');
    const [position, setPosition] = useState('GKP');
    const possiblePosition = ['GKP', 'DEF', 'MID', 'FWD']
    const [name, setName] = useState('');
    const [price, setPrice] = useState('');
    const [club, setClub] = useState('');
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

            <TextField variant='outlined' type={'text'} label='Name' sx={{display: 'block'}} margin='normal' size='small' fullWidth
            value={name} onChange={e=>{setName(e.target.value)}} />

            <Box sx={{ display: 'flex', justifyContent: 'space-between', mt: 4, mb: 2}}>

            <FormControl size="small" sx={{width: '100px'}}>
                <InputLabel id='pos-label'>Player Position</InputLabel>

                <Select labelId="pos-label"
                    value={position}
                    label='Player Position'
                    onChange={ e => { e.target.value && setPosition(e.target.value)}}
                >
                    {possiblePosition.map( v => (
                        <MenuItem value={v} key={v}>{v}</MenuItem>
                    ))}
                </Select>
            </FormControl>

            <FormControl size="small" sx={{width: '400px'}}>
                <InputLabel id='fav-club-label'>Player Club</InputLabel>

                <Select labelId="fav-club-label"
                    value={club}
                    label='Player Club'
                    onChange={ e => { e.target.value && setClub(e.target.value)}}
                >
                    <MenuItem value=''>Select</MenuItem>
                    {allClub.map( v => (
                        <MenuItem value={v.short_name} key={v.short_name}>{v.name}</MenuItem>
                    ))}
                </Select>
            </FormControl>

            </Box>

            <Box sx={{ display: 'flex', justifyContent: 'space-between'}}>
                
            <TextField variant='outlined' type={'text'} label='Availibility' margin='normal' size='small'
            value={availibility} onChange={e=>{setAvailibity(e.target.value)}} />

            <TextField variant='outlined' type={'number'} label='Availibility Percentage' margin='normal' size='small'
            value={availibility_percentage} onChange={e=>{setAvailibityPercentage(e.target.value)}} />

            
            <TextField type={'number'} variant='outlined' label='Price' sx={{display: 'block', mt: 2}} margin="normal" size='small'
            value={price} onChange={e=>{setPrice(e.target.value)}} />
            
            </Box>

        </Box>
        </DialogContent>

        <DialogActions>
            <Button onClick={handleClose}>Cancel</Button>
            <Button onClick={handleClose}>Create a Player</Button>
        </DialogActions>
    </>)
}

export default PlayerManagement