import { Button, Grid, TextField, Typography, Dialog, DialogActions, DialogContent, DialogTitle, IconButton, Select, MenuItem } from "@mui/material"
import ReactJson from "react-json-view"
import { useEffect, useState } from "react"
import { getFixtureOfGW, getPlayersOfFixture, getSettingsAPI, setFixtureResultAPI, setSettingsAPI, setStat } from "../../api"
import { ArrowRightAlt, Refresh, Upload } from "@mui/icons-material"
import { useSnackbar } from "material-ui-snackbar-provider"


const GWManagement = () => {

    const [settings, setSettings] = useState([{key: 'CURRENT_GW', value: 0}])
    const [showSettings, setShowSettings] = useState(false)

    useEffect(() => {
        getSettingsAPI().then(d => {
            setSettings(d)
        })
    }, [])

    const closeDialog = () => {setShowSettings(false)}

    const settingDialog = <Dialog open={showSettings} onClose={closeDialog}>
        <DialogTitle>
            Edit Settings
        </DialogTitle>
        <DialogContent>
        <ReactJson src={settings} onEdit={ (e) => setSettings(e.updated_src) } 
        indentWidth={2} quotesOnKeys={false}/>
        </DialogContent>
        <DialogActions>
            <Button type='contained' onClick={e => {
                closeDialog();
                setSettingsAPI(settings).then(d => {
                    setSettings(d)
                })
            }}>
                Okay
            </Button>
        </DialogActions>
    </Dialog>

    const [games, setGames] = useState([])
    const [selectedGame, setSelectedGame] = useState('')
    const [gameResult, setGameResult] = useState('')

    const game_selection = <Select labelId="club-label"
            value={selectedGame} fullWidth size="small"
            label='Select Game'
            onChange={ e => { e.target.value && setSelectedGame(e.target.value)}}>
            <MenuItem value=''>Select</MenuItem>
            {games.map( v => (
                <MenuItem value={v.id} key={v.id}>{v.home_full_name} - {v.away_full_name}</MenuItem>
            ))}
        </Select>

    let CURRENT_GW = -1

    settings.forEach(v => {
        if (v.key === 'CURRENT_GW')
            CURRENT_GW = v.value
    })

    return (<>
        <Typography variant="h5" sx={{mb: 4}}>
            Admin Panel GW Management
        </Typography>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={6}>
                <TextField variant="standard" type="number" value={CURRENT_GW} fullWidth label='Current GW' />
            </Grid>
            <Grid item xs={6}>
                <Button variant="outlined" fullWidth onClick={e => {setShowSettings(true)}}>
                    Show and Edit Settings
                </Button>
                {settingDialog}
            </Grid>
            <Grid item xs={1}>
                <IconButton onClick={ e => {
                    getFixtureOfGW(CURRENT_GW).then(d => {
                        setGames(d)
                    }).catch(err => {
                        console.log(err)
                    })
                }} title="Load GW Games">
                    <Refresh />
                </IconButton>
            </Grid>
            <Grid item xs={8}>
                {game_selection}
            </Grid>
            <Grid item xs={2}>
                <TextField label="Score" variant='standard' size="small" value={gameResult} onChange={e => {setGameResult(e.target.value)}}/>
            </Grid>
            <Grid item xs={1}>
                <IconButton onClick={ () => {
                    setFixtureResultAPI(selectedGame, gameResult).then(console.log).catch(console.log)
                }}>
                    <Upload />
                </IconButton>
            </Grid>
            <PlayerPointSet fixtureId={selectedGame}/>
        </Grid>
    </>)

}

const PlayerPointSet = ({fixtureId}) => {
    const [playerId, setPlayerId] = useState('')
    const [players, setPlayers] = useState([])

    const [mp, setMp] = useState(0)
    const [gs, setGs] = useState(0)
    const [gc, setGc] = useState(0)
    const [at, setAt] = useState(0)
    const [og, setOg] = useState(0)
    const [ps, setPs] = useState(0)
    const [pm, setPm] = useState(0)
    const [yc, setYc] = useState(0)
    const [rc, setRc] = useState(0)
    const [sv, setSv] = useState(0)
    const [bp, setBp] = useState(0)

    let player = null
    let playerPosition = null

    if (playerId!== '') {
        players.forEach(v => {
            if (v.id === Number.parseInt(playerId)) {
                player = v
                playerPosition = v.position
                console.log(player);
            }
        })
    }

    let total_points = (mp >= 60 ? 2 : (mp > 0 ? 1 : 0)) + at*3 + og*-2 + ps*5 + pm*-2 + yc*-1 + rc*-3 + Math.floor(sv*0.34) + bp;

    if (playerPosition === 'GKP' || playerPosition === 'DEF') {
        total_points += (mp >= 60 && gc === 0 ? 4 : Math.floor(gc*-0.5)) + gs*6;
    } else if (playerPosition === 'MID') {
        total_points += (mp >= 60 && gc === 0 ? 1 : 0) + gs*5;
    } else if (playerPosition === 'FWD') {
        total_points += gs*4;
    } 

    // (mp >= 60 ? 2 : (mp > 0 ? 1 : 0)) + gs * 5 + Math.floor(gc*-0.5) + at*3 + og*-2 + ps*5 + pm*-2 + yc*-1 + rc*-3 + Math.floor(sv*0.34) + bp;

    useEffect(() => {
        getPlayersOfFixture(fixtureId).then(d => {
            setPlayers(d)
        }).catch(console.log)
    }, [fixtureId])
    
    const player_selection = <Select labelId="club-label"
            value={playerId} fullWidth size="small"
            label='Select Player'
            onChange={ e => { setPlayerId(e.target.value)}}>
            <MenuItem value=''>Select</MenuItem>
            {players.map( v => (
                <MenuItem value={v.id} key={v.id}>{v.position} - {v.name} ({v.club_name})</MenuItem>
            ))}
        </Select>

    const snackbar = useSnackbar()

    const points_updater = <>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='MP' value={mp} onChange={e => {setMp(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='GS' value={gs} onChange={e => {setGs(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='Assist' value={at} onChange={e => {setAt(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='GC' value={gc} onChange={e => {setGc(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='OG' value={og} onChange={e => {setOg(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='PS' value={ps} onChange={e => {setPs(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='PM' value={pm} onChange={e => {setPm(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='YC' value={yc} onChange={e => {setYc(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='RC' value={rc} onChange={e => {setRc(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='Save' value={sv} onChange={e => {setSv(Number.parseInt(e.target.value))}}
            />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='Bonus' value={bp} onChange={e => {setBp(Number.parseInt(e.target.value))}} />
        </Grid>
        <Grid item xs={1}>
            <TextField type='number' variant='standard' size="small" label='Points' value={total_points} />
        </Grid>
        <Grid item xs={4}>
            <Button variant='outlined' size='small' fullWidth onClick={ () => {
                setStat(Number.parseInt(fixtureId), Number.parseInt(playerId), total_points, mp, gs, gc, at, og, ps, pm, yc, rc, sv, bp).then(d=>{
                    snackbar.showMessage('Updated Successfully!')
                }).catch(console.log)
            }}>
                Update Data
            </Button>
        </Grid>
    </>

    return (<>
        <Grid item xs={12}>
            {player_selection}
        </Grid>
        {/* <Grid item xs={12}>
            Selected player {playerId} of {fixtureId}
        </Grid> */}
        {playerId !== '' && points_updater}
    </>)
}

export default GWManagement