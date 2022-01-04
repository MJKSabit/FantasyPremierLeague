import { Button, Grid } from "@mui/material";
import ArrowBackIosIcon from '@mui/icons-material/ArrowBackIos';
import ArrowForwardIosIcon from '@mui/icons-material/ArrowForwardIos';
import { useNavigate, useParams } from "react-router-dom";

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

const SingleMatch = ({match}) => {
    return (<>
        <Grid item xs={5} sx={{textAlign: 'right', pr: 2}}>
            Arsenal
        </Grid>
        
        <Grid item xs={2} >
            <Button variant="contained" size="small" fullWidth> 4 - 1 </Button>
        </Grid>
        
        <Grid item xs={5} sx={{textAlign: 'left', pl: 2}}>
            Manchester Utd
        </Grid>
    </>)
} 

const FixtureList = () => {

    const {gwId} = useParams()
    const navigate = useNavigate()
    
    return (<Grid container spacing={2} sx={{mt: 2}} direction="row"
    justifyContent="center"
    alignItems="center">
        <Grid item xs={3}>
            <Button variant="outlined" fullWidth startIcon={<ArrowBackIosIcon />} onClick={ e => {
                gwId && navigate(`./${Number.parseInt(gwId)-1}`)
            }}>
                Previous
            </Button>
        </Grid>
        <Grid item xs={6} style={{textAlign: 'center'}}>
            Gameweek {gwId || data.gw}
        </Grid>
        <Grid item xs={3}>
            <Button variant="outlined" fullWidth endIcon={<ArrowForwardIosIcon />} onClick={ e => {
                gwId && navigate(`./${Number.parseInt(gwId)+1}`)
            }}>
                Next
            </Button>
        </Grid>
        <SingleMatch />
    </Grid>)
}

export default FixtureList;