import { Timeline, TimelineConnector, TimelineContent, TimelineDot, TimelineItem, TimelineSeparator } from "@mui/lab"
import InfoOutlined from "@mui/icons-material/InfoOutlined";
import { Button, Dialog, DialogActions, Grid, IconButton, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";
import { Box } from "@mui/system"
import { useEffect, useState } from "react"
import { getSettingsAPI, orderPlayerList } from "../../api"
import { StatDialog } from "../anonymous/Stat";

const UserHome = () => {

    const [updateStatus, setUpdateStatus] = useState(1)
    const [priceOrder, setPriceOrder] = useState([])
    const [availOrder, setAvailOrder] = useState([])
    const [infoPlayer, setInfoPlayer] = useState(null)

    useEffect(() => {
        getSettingsAPI().then(d => {
            for (let i=0; i<d.length; i++)
                if (d[i].key === 'POINT_STATUS')
                    setUpdateStatus(d[i].value)
        })
        orderPlayerList('price').then(setPriceOrder)
        orderPlayerList('avail').then(setAvailOrder)
    }, [])

    const handleClose = () => {
        setInfoPlayer(null)
    }

    return (<>
        <Typography variant="h6">
            Current Gameweek Point Update Status
        </Typography>

        <Timeline position="alternate">
            <TimelineItem>
                <TimelineSeparator>
                    <TimelineDot color="success" variant='filled' />
                    <TimelineConnector />
                </TimelineSeparator>
                <TimelineContent>
                    GW Start & Squad Confirmed
                </TimelineContent>
            </TimelineItem>
            <TimelineItem>
                <TimelineSeparator>
                    <TimelineDot color="success" variant={updateStatus===2 ? "filled" : "outlined"} />
                </TimelineSeparator>
                <TimelineContent>
                    Player Points Updated
                </TimelineContent>
            </TimelineItem>
        </Timeline>

        <Dialog open={infoPlayer} onClose={handleClose} fullWidth='true'>
        <StatDialog id={infoPlayer}/>
            <DialogActions>
                <Button onClick={handleClose}>
                    Close
                </Button>
            </DialogActions>
        </Dialog>

        <Grid container spacing={3} direction="row" justifyContent="space-evenly" alignItems="center">
            <Grid item xs={6}>
                <Typography variant="h6"  sx={{my: 2}}>Player Availibility Update</Typography>
                <TableContainer component={Paper}>
                <Table sx={{ minWidth: '100%' }} aria-label="simple table">
                    <TableHead>
                    <TableRow>
                        <TableCell> </TableCell>
                        <TableCell align="left">Name</TableCell>
                        <TableCell align="right">Availibility</TableCell>
                        <TableCell align="right" title="Points">%</TableCell>
                    </TableRow>
                    </TableHead>
                    <TableBody>
                    {availOrder.map((p) => (
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
                        <TableCell align="right">{p.availibility_status}</TableCell>
                        <TableCell align="right" title="Points">{p.availibility_percentage}</TableCell>
                        </TableRow>
                    ))}
                    </TableBody>
                </Table>
                </TableContainer>
            </Grid>
            <Grid item xs={6}>
                <Typography variant="h6" sx={{my: 2}}>Player Price Update</Typography>
                <TableContainer component={Paper}>
                <Table sx={{ minWidth: '100%' }} aria-label="simple table">
                    <TableHead>
                    <TableRow>
                        <TableCell> </TableCell>
                        <TableCell align="left">Name</TableCell>
                        <TableCell align="right">Price $</TableCell>
                        <TableCell align="right" title="Points">Change</TableCell>
                    </TableRow>
                    </TableHead>
                    <TableBody>
                    {priceOrder.map((p) => (
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
                        <TableCell align="right">{Math.round(10*p.price_current)/10}</TableCell>
                        <TableCell align="right" title="Points">{p.price_change_amount}</TableCell>
                        </TableRow>
                    ))}
                    </TableBody>
                </Table>
                </TableContainer>
            </Grid>
        </Grid>
    </>)
}

export default UserHome