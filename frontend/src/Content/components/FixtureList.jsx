import { Button, Grid } from "@mui/material";
import ArrowBackIosIcon from '@mui/icons-material/ArrowBackIos';
import ArrowForwardIosIcon from '@mui/icons-material/ArrowForwardIos';
import { useNavigate, useParams } from "react-router-dom";
import { useState } from "react";
import { useEffect } from "react";
import { getFixtureOfGW } from "../../api";

const data = {
    gw: 1,
    matches: [
        {
            HOME: 'ARS',
            AWAY: 'MNU',
            FDR: 3,
            RESULT: {
                HOME: 4,
                AWAY: 1
            }
        }
    ]
}

const SingleMatch = ({data}) => {
    return (<>
        <Grid item xs={4} sx={{textAlign: 'right', pr: 2}}>
            {data.home_full_name}
        </Grid>
        <Grid item xs={1}>
            <img src={data.home_logo_url} style={{width: '60%'}}/>
        </Grid>
        <Grid item xs={2} >
            <Button variant="contained" size="small" fullWidth>
                {data.result || '---'}
            </Button>
        </Grid>
        <Grid item xs={1}>
            <img src={data.away_logo_url} style={{width: '60%'}}/>
        </Grid>
        <Grid item xs={4} sx={{textAlign: 'left', pl: 2}}>
            {data.away_full_name}
        </Grid>
    </>)
} 

const FixtureList = () => {

    const [gwId, setGwId] = useState(1)
    const [list, setList] = useState([])

    useEffect( () => {
        getFixtureOfGW(gwId).then(d => {
            setList(d)
        })
    }, [gwId])
    
    return (<Grid container spacing={2} sx={{mt: 2}} direction="row" justifyContent="center" alignItems="center">
        <Grid item xs={3}>
            <Button variant="outlined" fullWidth startIcon={<ArrowBackIosIcon />} onClick={ e => {
                if (gwId > 1) setGwId(gwId-1)
            }}>
                Previous
            </Button>
        </Grid>
        <Grid item xs={6} style={{textAlign: 'center'}}>
            Gameweek {gwId}
        </Grid>
        <Grid item xs={3}>
            <Button variant="outlined" fullWidth endIcon={<ArrowForwardIosIcon />} onClick={ e => {
                if (gwId < 38) setGwId(gwId+1)
            }}>
                Next
            </Button>
        </Grid>
        {list.map(d => (<SingleMatch data={d} key={d.id}/>))}
    </Grid>)
}

export default FixtureList;