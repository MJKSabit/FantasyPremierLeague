import { Typography, Grid, Button, Dialog, DialogActions, DialogContent, DialogTitle, TextField, TableContainer, Paper, Table, TableHead, TableRow, TableCell, TableBody } from "@mui/material";
import { useEffect, useState } from "react"
import { useNavigate } from "react-router-dom";
import { useSnackbar } from "material-ui-snackbar-provider";
import { addLeagueAPI, joinedLeagueAPI, joinLeagueAPI, leaveLeagueAPI, myLeagueAPI } from "../../api";

const AddLeagueDialog = ({handleClose}) => {
    const [leagueName, setLeagueName] = useState('')
    const [leagueCode, setLeagueCode] = useState('')
    
    const snackbar = useSnackbar();

    return <>
        <DialogContent>
        <TextField label='League Name' fullWidth size="small" value={leagueName} onChange={e => {setLeagueName(e.target.value)}} sx={{mt: 2}}/> 
        <TextField label='League Code (Max 6 Character)' fullWidth size="small" value={leagueCode} onChange={e => {e.target.value.length<=6 && setLeagueCode(e.target.value)}} sx={{mt: 2}}/> 
        </DialogContent>
        <DialogActions>
            <Button onClick={handleClose}>Cancel</Button>
            <Button onClick={() => {
                if (leagueName.trim() === '' || leagueCode.trim() === '') {
                    snackbar.showMessage('Empty Not Allowed!')
                    return
                }
                addLeagueAPI(leagueName.trim(), leagueCode.trim()).then(d => {
                    handleClose()
                }).catch(e => {
                    snackbar.showMessage('Creation Error!')
                })
            }} variant="contained">Create League</Button>
        </DialogActions>
    </>
}

export default function LeaguePage () {
    const [dialogOpen, setDialogOpen] = useState(false)
    const [leagueId, setLeagueId] = useState('')
    const [leagueCode, setLeagueCode] = useState('')

    const [myLeagues, setMyLeagues] = useState([{id: 1, name: 'My League', invitation_code: 'AES256'}])
    const [joinedLeague, setJoinedLeague] = useState([{id: 1, name: 'My League'}])

    const snackbar = useSnackbar()

    const loadMyLeague = () => {
        myLeagueAPI().then(d => {
            setMyLeagues(d)
        })
    }

    const loadJoinedLeague = () => {
        joinedLeagueAPI().then(d => {
            setJoinedLeague(d)
        })
    }

    useEffect(() => {
        loadMyLeague()
        loadJoinedLeague()
    }, [])

    const closeDialog = () => {setDialogOpen(false); loadMyLeague()}
    const navigate = useNavigate()

    return <>
    <Typography variant="h6">
        League - Compete
    </Typography>
    <Typography variant="subtitle2">
        Create and Join League, See your ranking every week
    </Typography>

    <Grid container spacing={2} justifyContent="center" alignItems="center" sx={{mt: 3}}>
        <Grid item xs={3}>
            <Button variant='contained' color="success" fullWidth onClick={() => {setDialogOpen(true)}}>
                Add League +
            </Button>
            <Dialog open={dialogOpen} onClose={closeDialog} fullWidth='true'>
                <DialogTitle>Create A League</DialogTitle>
                <AddLeagueDialog handleClose={closeDialog} />
            </Dialog>
        </Grid>
        <Grid item xs={3}>
            <TextField label='League ID' fullWidth size="small" value={leagueId} onChange={e => {setLeagueId(e.target.value)}}/> 
        </Grid>
        <Grid item xs={3}>
            <TextField label='League Code' fullWidth size="small" value={leagueCode} onChange={e => {setLeagueCode(e.target.value)}}/> 
        </Grid>
        <Grid item xs={3}>
            <Button variant='outlined' color="success" fullWidth onClick={() => {
                joinLeagueAPI(leagueId, leagueCode).then(d => {
                    setLeagueId('')
                    setLeagueCode('')
                    loadJoinedLeague()
                }).catch(err => {
                    snackbar.showMessage(err.response.data.info)
                })
            }}>
                Join League
            </Button>
        </Grid>
    </Grid>

    <Typography variant="h5" sx={{mt: 2}}>
        My Created Leagues
    </Typography>

    <TableContainer component={Paper} sx={{my: 2}}>
    <Table sx={{ minWidth: '100%' }} aria-label="simple table">
        <TableHead>
        <TableRow>
            <TableCell> League ID </TableCell>
            <TableCell align="left">League Name</TableCell>
            <TableCell align="right">League Code</TableCell>
        </TableRow>
        </TableHead>
        <TableBody>
        {myLeagues.map((p) => (
            <TableRow
            key={p.id}
            sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
            <TableCell>
                {p.id}
            </TableCell>    
            <TableCell component="th" scope="row">
                {p.name}
            </TableCell>
            <TableCell align="right">
                {p.invitation_code}
            </TableCell>
            </TableRow>
        ))}
        </TableBody>
    </Table>
    </TableContainer>
    
    <Typography variant="h5" sx={{mt: 2}}>
        My Joined Leagues
    </Typography>

    <TableContainer component={Paper} sx={{my: 2}}>
    <Table sx={{ minWidth: '100%' }} aria-label="simple table">
        <TableHead>
        <TableRow>
            <TableCell> League ID </TableCell>
            <TableCell align="left">League Name</TableCell>
            <TableCell align="right">View League</TableCell>
            <TableCell align="right">Leave League</TableCell>
        </TableRow>
        </TableHead>
        <TableBody>
        {joinedLeague.map((p) => (
            <TableRow
            key={p.id}
            sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
            <TableCell>
                {p.id}
            </TableCell>    
            <TableCell component="th" scope="row">
                {p.name}
            </TableCell>
            <TableCell>
                <Button fullWidth variant='text' onClick={() => {navigate('./'+p.id)}}>
                    View
                </Button>
            </TableCell>
            <TableCell>
                <Button fullWidth variant='text' color="error" onClick={() => {
                    leaveLeagueAPI(p.id).then(d => {
                        console.log(d)
                        loadJoinedLeague()
                    })
                }}>
                    Leave
                </Button>
            </TableCell>
            </TableRow>
        ))}
        </TableBody>
    </Table>
    </TableContainer>

    </>
}