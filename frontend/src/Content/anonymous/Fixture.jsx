import { Box, Button, TextField, Tooltip, Typography } from "@mui/material"
import { useState } from "react";
import FixtureList from "../components/FixtureList";

const Fixture = () => {
    
    return (<>
        <Typography variant="h6">
            Gameweek Fixtures
        </Typography>
        <Typography variant="subtitle2">
            with Results or <Tooltip title='Fixture Difficulity Rating'><span style={{textDecoration: 'underline'}}>FDR</span></Tooltip>
        </Typography>

        <FixtureList />
    </>)
}

export default Fixture