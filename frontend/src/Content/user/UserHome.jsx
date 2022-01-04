import { Timeline, TimelineConnector, TimelineContent, TimelineDot, TimelineItem, TimelineSeparator } from "@mui/lab"
import { Grid, Typography } from "@mui/material"
import { Box } from "@mui/system"

const UserHome = () => {

    return (<>
        <Typography variant="h6">
            Current Gameweek Point Update Status
        </Typography>

        <Timeline position="alternate">
            <TimelineItem>
                <TimelineSeparator>
                    <TimelineDot color="success" />
                    <TimelineConnector />
                </TimelineSeparator>
                <TimelineContent>
                    Match Points Confirmed
                </TimelineContent>
            </TimelineItem>
            <TimelineItem>
                <TimelineSeparator>
                    <TimelineDot color="success" variant="outlined" />
                    <TimelineConnector />
                </TimelineSeparator>
                <TimelineContent>
                    Player Points Updated
                </TimelineContent>
            </TimelineItem>
            <TimelineItem>
                <TimelineSeparator>
                    <TimelineDot color="success" variant="outlined" />
                </TimelineSeparator>
                <TimelineContent>
                    League Table Updated
                </TimelineContent>
            </TimelineItem>
        </Timeline>

        <Grid container spacing={3} direction="row" justifyContent="space-evenly" alignItems="center">
            <Grid item xs={6}>
                <Typography variant="h6">Top Transfer In </Typography>
            </Grid>
            <Grid item xs={6}>
                <Typography variant="h6">Top Transfer Out </Typography>
            </Grid>
            <Grid item xs={6}>
                <Typography variant="h6">Player Availibility Update</Typography>
            </Grid>
            <Grid item xs={6}>
                <Typography variant="h6">Player Price Update</Typography>
            </Grid>
            <Grid item xs={6}>
                <Typography variant="h6">Star of The Gameweek</Typography>
            </Grid>
            <Grid item xs={6}>
                <Typography variant="h6">King of Each Gameweek</Typography>
            </Grid>
        </Grid>
    </>)
}

export default UserHome