import { Button, Card, CardContent, Chip, FormControl, Grid, Input, InputLabel, MenuItem, Select, TextField, Typography } from "@mui/material";
import { Box } from "@mui/system";
import { useEffect, useState } from "react";
import { getAllClubs, getGW, setGW } from "../../api";

const MatchManagement = () => {
    const [allClub, setAllClub] = useState([]);
    const [playerClub, setUserClub] = useState('');

    const [allGW, setAllGW] = useState([])

    const [gwId, setGwId] = useState(0)
    const [deadline, setDeadline] = useState('')

    const otherClub = playerClub ? allClub.map(v => (v.short_name)).filter( v => (v !== playerClub)) : []

    const getClubData = () => {
        getAllClubs().then( data => {
            setAllClub(data)
        }).catch( err => {
            console.log(err);
        })
    }

    const getAllGW = () => {
        getGW().then(d => {
            setAllGW(d)
        })
    }

    const updateGW = () => {
        setGW(gwId, deadline).then(d => {
            setAllGW(d)
        }).catch(err => {
            console.log(err)
        })
    }

    useEffect(() => {
        getClubData();
        getAllGW()
    }, [])

    return (<>
        <Typography variant="h5" sx={{mb: 4}}>
            Admin Panel Match Management
        </Typography>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={6}>
                <Box component="div" sx={{ overflowX: 'auto', overflowY: 'auto', py: 2 }}>
                    {allGW.map(v => (<Chip label={`${v.id} : ${v.deadline}`} variant="outlined" sx={{m: 1, display: 'inline'}} />))}
                </Box>
            </Grid>
            <Grid item xs={1}>
                <TextField variant="standard" type="number" value={gwId} onChange={t => {setGwId(Number.parseInt(t.target.value))}} fullWidth label='GW' />
            </Grid>
            <Grid item xs={3}>
                <TextField variant="standard" value={deadline} onChange={t => {setDeadline(t.target.value)}} fullWidth label='YYYY-MM-DD HH:MM:SS' />
            </Grid>
            <Grid item xs={2}>
            <Button variant="outlined" fullWidth margin='dense' onClick={updateGW}>Update</Button>
            </Grid>
            <Grid item xs={6}>
                Home Club:
            </Grid>
            <Grid item xs={6}>
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
        </Grid>

        <Grid container justifyContent="flex-start" alignItems="center" sx={{mt: 4}} spacing={2}>
            {otherClub.map(club => <MatchCard home={playerClub} away={club} clubs={allClub}/>)}
        </Grid>
    </>)
}

const MatchCard = ({home, away, clubs}) => {
    let home_name, away_name, home_logo, away_logo;

    clubs.forEach( v => {
        if (v.short_name === home) {
            home_name = v.name
            home_logo = v.logo_url
        } else if (v.short_name === away) {
            away_name = v.name
            away_logo = v.logo_url
        } 
    })

    return <Grid item xs={12}>
    <Card sx={{width: '100%'}} >
        <CardContent>
            <Grid container justifyContent="center" alignItems="center">
                <Grid item xs={1}>
                    <img src={home_logo} style={{width: '50%'}}/>
                </Grid>
                <Grid item xs={5}>
                    {home_name}
                </Grid>
                <Grid item xs={5}>
                    {away_name}
                </Grid>
                <Grid item xs={1}>
                    <img src={away_logo} style={{width: '50%'}}/>
                </Grid>
                <Grid item xs={2}>
                    <Input type="number" fullWidth size="small"/>
                </Grid>
                <Grid item xs={3}>
                    <Button type="contained" size="small">
                        Update GW
                    </Button>
                </Grid>
            </Grid>
        </CardContent>
    </Card>
    </Grid>
}

export default MatchManagement;