import Info from "@mui/icons-material/Info"
import { Avatar, IconButton, List, ListItem, ListItemAvatar, ListItemText, Typography } from "@mui/material"

const TransferStat = () => {

    return (<List sx={{width: '100%'}} >
        <ListItem secondaryAction={<IconButton edge='end'>
            <Info />
        </IconButton>} >
            <ListItemAvatar >
                <Avatar src="">
                </Avatar>
            </ListItemAvatar>
            <ListItemText primary={'Emile Smith Rowe'} secondary={<Typography variant="subtitle" color={'success'}>
                +1204921 
            </Typography>} />
        </ListItem>
    </List>)
}