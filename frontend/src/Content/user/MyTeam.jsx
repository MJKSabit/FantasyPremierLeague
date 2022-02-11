import { Button, FormControl, Grid, InputLabel, MenuItem, Select, TextField, Typography } from "@mui/material"
import { useEffect, useState } from "react"
import { getAllPlayerStat } from "../../api"

export default function MyTeam () {

    const [hasTeam, setHasTeam] = useState(false)
    const [sortBy, setSortBy] = useState('price')
    const [order, setOrder] = useState('ASC')
    const [players, setPlayers] = useState([])

    const getPlayers = () => {
        getAllPlayerStat(sortBy, order).then(d => {
            setPlayers(d)
        })
    }

    useEffect(() => {
        getPlayers()
    }, [sortBy, order])
    
    const [gk, setGk] = useState(0)

    const [def1, setDef1] = useState(0)
    const [def2, setDef2] = useState(0)
    const [def3, setDef3] = useState(0)
    const [def4, setDef4] = useState(0)

    const [mid1, setMid1] = useState(0)
    const [mid2, setMid2] = useState(0)
    const [mid3, setMid3] = useState(0)
    const [mid4, setMid4] = useState(0)
    
    const [fwd1, setFwd1] = useState(0)
    const [fwd2, setFwd2] = useState(0)

    const playerIds = [gk, def1, def2, def3, def4, mid1, mid2, mid3, mid4, fwd1, fwd2]
    const usedPlayers = []

    const positional_player = {'GKP': [], 'DEF': [], 'MID': [], 'FWD': []}

    players.forEach(p => {
        for (let i=0; i<playerIds.length; i++)
            if (playerIds[i] === p.id)
                usedPlayers.push(p)
        positional_player[p.position].push(p)
    });

    let balance_left = 100.0;

    usedPlayers.forEach( p => {
        balance_left -= p.price
    })    

    const createTeam = <>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={12}>
                <Typography variant="h5">
                    Create your team and participate in FPL
                </Typography>
                <Typography variant="body2" sx={{my: 3}}>
                    Select 11 player (1 GKP, 4 DEF, 4 MID and 2 FWD) from your given $100.0. 
                    {/* You can not select more than 3 players from a single club.  */}
                    Select the players very carefully...
                </Typography>
            </Grid>
            <Grid item xs={6}>
                <TextField label='Team Name' size="small" fullWidth />
            </Grid>
            <Grid item xs={2}>
                <TextField label='Balance Left' size="small" fullWidth value={Math.round(balance_left*10)/10}/>
            </Grid>
            <Grid item xs={2}>
            <FormControl size="small" fullWidth>
                <InputLabel id='Sort-label'>Sort By</InputLabel>

                <Select labelId="Sort-label"
                    label='Sort By'
                    value={sortBy}
                    onChange={ e => { setSortBy(e.target.value)}}
                >
                    
                    {['price', 'points', 'minutes_played', 'goal_scored', 'assist', 'clean_sheet', 'bonus_point'].map( v => (
                        <MenuItem value={v} key={v}>{v}</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            <Grid item xs={2}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>Order</InputLabel>

                <Select labelId="order-label"
                    label='Order'
                    value={order}
                    onChange={ e => { setOrder(e.target.value)}}
                >
                    {['DESC', 'ASC'].map( v => (
                        <MenuItem value={v} key={v}>{v}</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            <Grid item xs={12}>
                <Typography variant="body1" sx={{mt: 2}}>
                    Goalkeeper
                </Typography>
            </Grid>
            
            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>GKP</InputLabel>

                <Select labelId="order-label"
                    label='GKP'
                    value={gk}
                    onChange={ e => { setGk(Number.parseInt(e.target.value))}}
                >
                    {positional_player['GKP'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={12}>
                <Typography variant="body1" sx={{mt: 2}}>
                    Defenders
                </Typography>
            </Grid>
            
            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>DEF</InputLabel>

                <Select labelId="order-label"
                    label='DEF'
                    value={def1}
                    onChange={ e => { setDef1(Number.parseInt(e.target.value))}}
                >
                    {positional_player['DEF'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            
            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>DEF</InputLabel>

                <Select labelId="order-label"
                    label='DEF'
                    value={def2}
                    onChange={ e => { setDef2(Number.parseInt(e.target.value))}}
                >
                    {positional_player['DEF'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>DEF</InputLabel>

                <Select labelId="order-label"
                    label='DEF'
                    value={def3}
                    onChange={ e => { setDef3(Number.parseInt(e.target.value))}}
                >
                    {positional_player['DEF'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>DEF</InputLabel>

                <Select labelId="order-label"
                    label='DEF'
                    value={def4}
                    onChange={ e => { setDef4(Number.parseInt(e.target.value))}}
                >
                    {positional_player['DEF'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            
            <Grid item xs={12}>
                <Typography variant="body1" sx={{mt: 2}}>
                    Midfielder
                </Typography>
            </Grid>

            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>MID</InputLabel>

                <Select labelId="order-label"
                    label='MID'
                    value={mid1}
                    onChange={ e => { setMid1(Number.parseInt(e.target.value))}}
                >
                    {positional_player['MID'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            
            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>MID</InputLabel>

                <Select labelId="order-label"
                    label='MID'
                    value={mid2}
                    onChange={ e => { setMid2(Number.parseInt(e.target.value))}}
                >
                    {positional_player['MID'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>MID</InputLabel>

                <Select labelId="order-label"
                    label='MID'
                    value={mid3}
                    onChange={ e => { setMid3(Number.parseInt(e.target.value))}}
                >
                    {positional_player['MID'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>MID</InputLabel>

                <Select labelId="order-label"
                    label='MID'
                    value={mid4}
                    onChange={ e => { setMid4(Number.parseInt(e.target.value))}}
                >
                    {positional_player['MID'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={12}>
                <Typography variant="body1" sx={{mt: 2}}>
                    Forwards
                </Typography>
            </Grid>

            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>FWD</InputLabel>

                <Select labelId="order-label"
                    label='FWD'
                    value={fwd1}
                    onChange={ e => { setFwd1(Number.parseInt(e.target.value))}}
                >
                    {positional_player['FWD'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>
            <Grid item xs={12}>
            <FormControl size="small" fullWidth>
                <InputLabel id='order-label'>FWD</InputLabel>

                <Select labelId="order-label"
                    label='FWD'
                    value={fwd2}
                    onChange={ e => { setFwd2(Number.parseInt(e.target.value))}}
                >
                    {positional_player['FWD'].map( v => (
                        <MenuItem value={v.id} key={v.id}>{v.position} : {v.name} ({v.club}) - ${Math.round(v.price*10)/10} [{sortBy}:{v[sortBy]}]</MenuItem>
                    ))}
                </Select>
            </FormControl>
            </Grid>

            <Grid item xs={6}>
                <Button variant='contained' fullWidth>Create your Team</Button>
            </Grid>
        </Grid>
    </>

    const showMyTeam = <>

    </>

    return <>
        {hasTeam ? showMyTeam : createTeam}
    </>
}
