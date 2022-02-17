import { FormControl, Grid, IconButton, InputLabel, MenuItem, Paper, Select, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, TextField, Typography, Dialog, DialogActions, DialogContent, DialogTitle, Button, Box } from "@mui/material"
import { useEffect, useState } from "react"
import { getAllPlayerStat, getPlayerStat } from "../../api"
import InfoIcon from '@mui/icons-material/InfoOutlined';

export const StatDialog = ({id}) =>  {

    const [response, setResponse] = useState({stats: [], fixture: []})

    useEffect(() => {
        getPlayerStat(id).then(d => {
            setResponse(d)
        })
    }, [])

    const p = response.player

    return <>
        <DialogTitle>Player Statistics</DialogTitle>
        <DialogContent>
            <div style={{ width: '100%' }}>
            <Box sx={{display: "flex"}} >
                <Box sx={{p: 1}}>
                    <img src={p && p.logo_url} style={{height: '35px'}} />
                </Box>
                <Box sx={{flexGrow: 1}}>
                    {p && p.name} ({p && p.position})<br />
                    {p && p.club_name} - {p && p.availibility_status} ({p && p.availibility_percentage}%)
                </Box>
                <Box>
                    Price <br />
                    ${p && Math.round(10*p.price_current)/10}
                </Box>
            </Box>
            </div>
            <Typography variant="h6">Statistics</Typography>
            <TableContainer component={Paper}>
            <Table sx={{ minWidth: '100%' }} aria-label="simple table">
                <TableHead>
                <TableRow>
                    <TableCell>GW</TableCell>
                    <TableCell align="right">GameBetween</TableCell>
                    <TableCell align="right">Result</TableCell>
                    <TableCell align="right" title="Minutes Played">MP</TableCell>
                    <TableCell align="right" title="Points">Pts</TableCell>
                    <TableCell align="right" title="Goal Scored">GS</TableCell>
                    <TableCell align="right" title="Assist">Asst</TableCell>
                    <TableCell align="right" title="Own Goal">OG</TableCell>
                    <TableCell align="right" title="Penalty Missed">PM</TableCell>
                    <TableCell align="right" title="Yellow Card">YC</TableCell>
                    <TableCell align="right" title="Red Card">RC</TableCell>
                    <TableCell align="right" title="Goal Conceded">GC</TableCell>
                    <TableCell align="right" title="Clean Sheet">CS</TableCell>
                    <TableCell align="right" title="Saves">SV</TableCell>
                    <TableCell align="right" title="Bonus Points">BPs</TableCell>
                </TableRow>
                </TableHead>
                <TableBody>
                {response.stats.map((p) => (
                    <TableRow
                    key={p.fixture_id}
                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                    >
                    <TableCell>
                        {p.gw_id}
                    </TableCell>    
                    <TableCell component="th" scope="row">
                        {p.home_club} - {p.away_club}
                    </TableCell>
                    <TableCell align="right">{p.result || '-'}</TableCell>
                    <TableCell align="right">{p.minutes_played}</TableCell>
                    <TableCell align="right">{p.points}</TableCell>
                    <TableCell align="right">{p.goal_scored}</TableCell>
                    <TableCell align="right">{p.assist}</TableCell>
                    <TableCell align="right">{p.own_goal}</TableCell>
                    <TableCell align="right">{p.penalty_missed}</TableCell>
                    <TableCell align="right">{p.yellow_card}</TableCell>
                    <TableCell align="right">{p.red_card}</TableCell>
                    <TableCell align="right">{p.goal_conceded}</TableCell>
                    <TableCell align="right">{p.clean_sheet}</TableCell>
                    <TableCell align="right">{p.saves}</TableCell>
                    <TableCell align="right">{p.bonus_point}</TableCell>
                    </TableRow>
                ))}
                </TableBody>
            </Table>
            </TableContainer>

            <Typography variant="h6" sx={{my: 3}}>Fixture</Typography>
            <TableContainer component={Paper}>
            <Table sx={{ minWidth: '100%' }} aria-label="simple table">
                <TableHead>
                <TableRow>
                    <TableCell>GW</TableCell>
                    <TableCell >Game</TableCell>
                    <TableCell align="right">Result</TableCell>
                </TableRow>
                </TableHead>
                <TableBody>
                {response.fixture.map((p) => (
                    <TableRow
                    key={p.fixture_id}
                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                    >
                    <TableCell>
                        {p.gw_id || '-'}
                    </TableCell>    
                    <TableCell component="th" scope="row">
                        {p.home_club} - {p.away_club}
                    </TableCell>
                    <TableCell align="right">{p.result || '-'}</TableCell>
                    </TableRow>
                ))}
                </TableBody>
            </Table>
            </TableContainer>
        </DialogContent>
    </>
}

const StatPage = () => {

    const [sortBy, setSortBy] = useState('price')
    const [order, setOrder] = useState('ASC')
    const [position, setPostion] = useState('ALL')
    const [name, setName] = useState('')
    const [players, setPlayers] = useState([])
    const [infoPlayer, setInfoPlayer] = useState(null)

    const handleClose = () => {
        setInfoPlayer(null)
    }

    const getPlayers = () => {
        getAllPlayerStat(sortBy, order).then(d => {
            setPlayers(d)
        })
    }

    useEffect(() => {
        getPlayers()
    }, [sortBy, order])

    const filteredPlayers = players.filter(p => (p.name.toLowerCase().includes(name.toLowerCase()) && (position==='ALL' || p.position===position)))

    return (<Grid container spacing={2} justifyContent="center" alignItems="center">
            <Dialog open={infoPlayer} onClose={handleClose} fullWidth='true'>
                <StatDialog id={infoPlayer}/>
                <DialogActions>
                    <Button onClick={handleClose}>
                        Close
                    </Button>
                </DialogActions>
            </Dialog>
            <Grid item xs={12}>
                <Typography variant="h5">
                    Player Statistics
                </Typography>
                <Typography variant="body2" sx={{my: 3}}>
                    Get Overall statistics and detailed statistics of players
                </Typography>
            </Grid>
            
            <Grid item xs={6}>
                <TextField label='Player Name' size="small" fullWidth value={name} onChange={e => {setName(e.target.value)}} />
            </Grid>
            <Grid item xs={2}>
                <FormControl size="small" fullWidth>
                    <InputLabel id='order-label'>Position</InputLabel>

                    <Select labelId="order-label"
                        label='Position'
                        value={position}
                        onChange={ e => { setPostion(e.target.value)}}
                    >
                        {[['ALL', 'All'], ['GKP', 'Goalkeeper'], ['DEF', 'Defender'], ['MID', 'Midfielder'], ['FWD', 'Forward']].map( v => (
                            <MenuItem value={v[0]} key={v[0]}>{v[1]}</MenuItem>
                        ))}
                    </Select>
                </FormControl>
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
        <Grid xs={12} item>
        <TableContainer component={Paper}>
            <Table sx={{ minWidth: '100%' }} aria-label="simple table">
                <TableHead>
                <TableRow>
                    <TableCell> </TableCell>
                    <TableCell align="right">Name</TableCell>
                    <TableCell align="right">Club</TableCell>
                    <TableCell align="right">Position</TableCell>
                    <TableCell align="right" title="Minutes Played">MP</TableCell>
                    <TableCell align="right" title="Points">Pts</TableCell>
                    <TableCell align="right" title="Goal Scored">GS</TableCell>
                    <TableCell align="right" title="Assist">Asst</TableCell>
                    <TableCell align="right" title="Clean Sheet">CS</TableCell>
                    <TableCell align="right" title="Bonus Points">BPs</TableCell>
                    <TableCell align="right" >Price</TableCell>
                </TableRow>
                </TableHead>
                <TableBody>
                {filteredPlayers.map((p) => (
                    <TableRow
                    key={p.id}
                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                    >
                    <TableCell>
                        <IconButton size="small" onClick={() => {setInfoPlayer(p.id)}}>
                            <InfoIcon />
                        </IconButton>    
                    </TableCell>    
                    <TableCell component="th" scope="row">
                        {p.name}
                    </TableCell>
                    <TableCell align="right">{p.club_name}</TableCell>
                    <TableCell align="right">{p.position}</TableCell>
                    <TableCell align="right" title="Minutes Played">{p.minutes_played}</TableCell>
                    <TableCell align="right" title="Points">{p.points}</TableCell>
                    <TableCell align="right" title="Goal Scored">{p.goal_scored}</TableCell>
                    <TableCell align="right" title="Assist">{p.assist}</TableCell>
                    <TableCell align="right" title="Clean Sheet">{p.clean_sheet}</TableCell>
                    <TableCell align="right" title="Bonus Points">{p.bonus_point}</TableCell>
                    <TableCell align="right" >{Math.round(p.price*10)/10}</TableCell>
                    </TableRow>
                ))}
                </TableBody>
            </Table>
            </TableContainer>
        </Grid>
    </Grid>)
}

export default StatPage