import ArrowBackIos from "@mui/icons-material/ArrowBackIos";
import ArrowForwardIos from "@mui/icons-material/ArrowForwardIos";
import InfoOutlined from "@mui/icons-material/InfoOutlined";
import { Button, Dialog, DialogActions, Grid, IconButton, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";
import { Box } from "@mui/system";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { getPoint, getSettingsAPI } from "../../api";
import { StatDialog } from "../anonymous/Stat";

export default function PointsPage () {

    let urlParams = useParams()

    const [gwId, setGwId] = useState(1)
    const [team, setTeam] = useState({players: [], team: []})
    const [infoPlayer, setInfoPlayer] = useState(null)

    useEffect(() => {
        getSettingsAPI().then(d => {
            for (let i=0; i<d.length; i++)
                if (d.key === 'POINTS_GW')
                    setGwId(d.value)
        })
    }, [])

    useEffect(() => {
        getPoint(gwId, urlParams.teamId).then(d => {
            setTeam(d)
        })
    }, [gwId])

    const handleClose = () => {
        setInfoPlayer(null)
    }

    let thisGwPoint = 0
    team.players.forEach(p => {
        thisGwPoint += p.gw_points
    })

    return <>
    <Typography variant="h6">
        Gameweek Points
    </Typography>
    <Typography variant="subtitle2">
        see what you and others scored in GWs
    </Typography>

    <Dialog open={infoPlayer} onClose={handleClose} fullWidth='true'>
        <StatDialog id={infoPlayer}/>
        <DialogActions>
            <Button onClick={handleClose}>
                Close
            </Button>
        </DialogActions>
    </Dialog>

    {team.team.map(t => <Box sx={{display: "flex", mt: 2}} >
        <Box sx={{p: 1}}>
            <img src={t.logo_url} style={{height: '45px'}} />
        </Box>
        <Box sx={{flexGrow: 1, p: 1}}>
            Team Name: {t.team_name}<br />
            Manager: {t.name}
        </Box>
        <Box sx={{p:1}}>
            Balance<br />
            ${Math.round(10*t.team_balance)/10}
        </Box>
        <Box sx={{p:1}}>
            Points<br />
            {t.total_points}
        </Box>
        <Box sx={{p:1, color: 'success.main'}}>
            GW Points<br />
            {thisGwPoint}
        </Box>
    </Box>)}

    <Grid container spacing={2} sx={{mt: 2}} direction="row" justifyContent="center" alignItems="center">
        <Grid item xs={3}>
            <Button variant="outlined" fullWidth startIcon={<ArrowBackIos />} onClick={ e => {
                if (gwId > 1) setGwId(gwId-1)
            }}>
                Previous
            </Button>
        </Grid>
        <Grid item xs={6} style={{textAlign: 'center'}}>
            Gameweek {gwId}
        </Grid>
        <Grid item xs={3}>
            <Button variant="outlined" fullWidth endIcon={<ArrowForwardIos />} onClick={ e => {
                if (gwId < 38) setGwId(gwId+1)
            }}>
                Next
            </Button>
        </Grid>
    </Grid>

    <TableContainer component={Paper}>
    <Table sx={{ minWidth: '100%' }} aria-label="simple table">
        <TableHead>
        <TableRow>
            <TableCell> </TableCell>
            <TableCell align="left">Name</TableCell>
            <TableCell align="right">Club</TableCell>
            <TableCell align="right">Position</TableCell>
            <TableCell align="right" title="Points">GW Points</TableCell>
        </TableRow>
        </TableHead>
        <TableBody>
        {team.players.map((p) => (
            <TableRow
            key={p.id}
            sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
            <TableCell>
                <IconButton size="small" onClick={() => {setInfoPlayer(p.id)}}>
                    <InfoOutlined />
                </IconButton>    
            </TableCell>    
            <TableCell component="th" scope="row">
                {p.name}
            </TableCell>
            <TableCell align="right">{p.club}</TableCell>
            <TableCell align="right">{p.position}</TableCell>
            <TableCell align="right" title="Points">{p.gw_points}</TableCell>
            </TableRow>
        ))}
        </TableBody>
    </Table>
    </TableContainer>
    
    </>
}