import { FormControl, Grid, IconButton, InputLabel, MenuItem, Paper, Select, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, TextField, Typography } from "@mui/material"
import { useEffect, useState } from "react"
import { getAllPlayerStat } from "../../api"
import InfoIcon from '@mui/icons-material/InfoOutlined';

const Stat = () =>  (<>

</>)

const StatPage = () => {

    const [sortBy, setSortBy] = useState('price')
    const [order, setOrder] = useState('ASC')
    const [position, setPostion] = useState('ALL')
    const [name, setName] = useState('')
    const [players, setPlayers] = useState([])

    const getPlayers = () => {
        getAllPlayerStat(sortBy, order).then(d => {
            setPlayers(d)
        })
    }

    useEffect(() => {
        getPlayers()
    }, [sortBy, order])

    const filteredPlayers = players.filter(p => (p.name.includes(name) && (position==='ALL' || p.position===position)))

    return (<Grid container spacing={2} justifyContent="center" alignItems="center">
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
                        <IconButton size="small">
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