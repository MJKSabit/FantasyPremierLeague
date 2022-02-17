import { Backdrop, Button, CircularProgress, Typography } from "@mui/material";
import { useState } from "react";
import { adminPostProcess, adminPreProcess } from "../../api";

export default function AdminHome() {

    const [open, setOpen] = useState(false);

    return <>
        <Typography variant="h5" sx={{mb: 2}}>
            Management Guide
        </Typography>

        <Backdrop
            sx={{ color: '#fff', zIndex: (theme) => theme.zIndex.drawer + 1 }}
            open={open}
        >
            <CircularProgress color="inherit" />
        </Backdrop>

        <Typography variant="body2" sx={{mb: 2}}>
            You can update GW of matches in Match Management or users or players
        </Typography>

        <Typography variant="h5" sx={{mb: 2, mt: 4}}>
            Gameweek Management Guide
        </Typography>

        <Typography variant="body2" sx={{mb: 2}}>
            0. Make sure fixtures are okay
        </Typography>
        
        <Button variant="outlined" size="small" sx={{mb: 2}} fullWidth onClick={() => {
            setOpen(true)
            adminPreProcess().then(d => {
                setOpen(false)
            })
        }}>
            1. Pre-Gameweek Processing
        </Button>

        <Typography variant="body2" sx={{mb: 2}}>
            2. Update GW Stats
        </Typography>

        <Button variant="outlined" size="small" sx={{mb: 2}} fullWidth onClick={() => {
            setOpen(true)
            adminPostProcess().then(d => {
                setOpen(false)
            })
        }}>
            3. Post-Gameweek Processing
        </Button>
    </>
}