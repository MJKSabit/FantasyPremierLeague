import { Button, Typography } from "@mui/material";

export default function AdminHome() {
    return <>
        <Typography variant="h5" sx={{mb: 2}}>
            Management Guide
        </Typography>

        <Typography variant="body2" sx={{mb: 2}}>
            You can update GW of matches in Match Management or users or players
        </Typography>

        <Typography variant="h5" sx={{mb: 2, mt: 4}}>
            Gameweek Management Guide
        </Typography>

        <Typography variant="body2" sx={{mb: 2}}>
            0. Make sure fixtures are okay
        </Typography>
        
        <Button variant="outlined" size="small" sx={{mb: 2}} fullWidth>
            1. Pre-Gameweek Processing
        </Button>

        <Typography variant="body2" sx={{mb: 2}}>
            2. Update GW Stats
        </Typography>

        <Button variant="outlined" size="small" sx={{mb: 2}} fullWidth>
            3. Post-Gameweek Processing
        </Button>
    </>
}