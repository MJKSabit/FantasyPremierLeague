import { Button, FormControl, Grid, InputLabel, MenuItem, Select, TextField, Typography, Card, CardContent, Chip, Box } from "@mui/material"
import { useSnackbar } from "material-ui-snackbar-provider"
import { useEffect, useState } from "react"
import { addTeam, getAllPlayerStat, getUserTeam, userHasTeam } from "../../api"

export default function MyTeam () {

    const [teamname, setTeamname] = useState('')
    const [hasTeam, setHasTeam] = useState(false)
    const [sortBy, setSortBy] = useState('price')
    const [order, setOrder] = useState('ASC')
    const [players, setPlayers] = useState([])

    const snackbar = useSnackbar()

    const getPlayers = () => {
        getAllPlayerStat(sortBy, order).then(d => {
            setPlayers(d)
        })
    }

    useEffect(() => {
        userHasTeam().then(d => {
            setHasTeam(d)
        })
    }, [])

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

    const validateAndCreateTeam = () => {
        const player_set = new Set()
        const club_count = {}
        
        usedPlayers.forEach(p => {
            player_set.add(p.id)
            
            if (!club_count[p.club])
                club_count[p.club] = 0

            club_count[p.club]++;
        })
        
        if (balance_left < 0) {
            snackbar.showMessage('Can not use more than $100.0!')
            return
        }

        if (player_set.size !== 11) {
            snackbar.showMessage('Select 11 players!')
            return
        }

        for (const key in club_count) {
            if (club_count[key] > 3) {
                snackbar.showMessage('Selected more than three players from '+key)
                return
            }
        }

        const selectedPlayerIds = Array.from(player_set)
        addTeam(teamname, selectedPlayerIds).then(d => {
            setHasTeam(true)
        }).catch(err => {
            snackbar.showMessage('Error Occured!')
            console.log(err)
        })
    }

    const createTeam = <>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={12}>
                <Typography variant="h5">
                    Create your team and participate in FPL
                </Typography>
                <Typography variant="body2" sx={{my: 3}}>
                    Select 11 player (1 GKP, 4 DEF, 4 MID and 2 FWD) from your given $100.0. 
                    You can not select more than 3 players from a single club. 
                    Select the players very carefully...
                </Typography>
            </Grid>
            <Grid item xs={6}>
                <TextField label='Team Name' size="small" fullWidth value={teamname} onChange={e => {setTeamname(e.target.value)}} />
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
                <Button variant='contained' fullWidth onClick={validateAndCreateTeam}>Create your Team</Button>
            </Grid>
        </Grid>
    </>

    const showMyTeam = <ShowMyTeam />

    return <>
        {hasTeam ? showMyTeam : createTeam}
    </>
}

const ShowMyTeam = () => {
    const [myTeam, setMyTeam] = useState(null)

    const snackbar = useSnackbar()

    useEffect(() => {
        getUserTeam().then(d => {
            setMyTeam(d)
        }).catch (err => {
            snackbar.showMessage('Error loading Team')
        })
    }, [])

    const players = myTeam === null ? [] : myTeam.players

    return <>
        {myTeam === null ? <> Loading Team ... </> : 
        <>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={12}>
                <Typography variant="h5">
                    {myTeam.team_name}
                </Typography>
                <Typography variant="body2" sx={{my: 3}}>
                    (Balance : {Math.round(myTeam.team_balance*10)/10})
                </Typography>
            </Grid>
            { players.map(p => <PlayerCard data={p} />) }
        </Grid>
        </>
        }
        
    </>
}

const PlayerCard = ({data}) => {
    
    const {id, name, position, availibility_status, availibility_percentage, price_current, club, logo_url, player_club} = data
    const state = {availibility_status, availibility_percentage, price_current}
    
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
                            {state.availibility_status} (<Box sx={{ fontWeight: '700'}} component='span'>{state.availibility_percentage}%</Box>)  <br />
                            ${Math.round(state.price_current*10)/10}
                        </Typography>
                    </Grid>
                    <Grid xs={3} item>
                        <img src={logo_url} style={{width: '100%', height: 'auto'}} alt={club} />
                    </Grid>
                </Grid>
            </CardContent>
        </Card>
    </Grid>
} 
