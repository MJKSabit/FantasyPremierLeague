import HomeIcon from '@mui/icons-material/Home';
import CalendarTodayIcon from '@mui/icons-material/CalendarToday';
import TextSnippetIcon from '@mui/icons-material/TextSnippet';
import QueryStatsIcon from '@mui/icons-material/QueryStats';
import InfoIcon from '@mui/icons-material/Info';

import { Button, Dialog, DialogActions, DialogContent, DialogContentText, DialogTitle, Divider, List, ListItem, ListItemButton, ListItemIcon, ListItemText, Typography } from "@mui/material";
import { makeStyles } from "@mui/styles";
import { NavLink } from "react-router-dom";
import UserNav from './UserNav';
import AnonymousNav from './AnonymousNav';
import decodeJWT from '../util/common';
import { useState } from 'react';

export const useStyles = makeStyles(() => ({
    menubtn: {
        textDecoration: 'none',
        color: 'inherit'
    },
}));


const SignedInNav = () => {

    const userType = 'user'; decodeJWT(localStorage.getItem('JWT'));

    if (userType === 'user') {
        return <UserNav />
    }

    return (<>
        <ListItemButton component={NavLink} to='/user/home'>
            <ListItemIcon><HomeIcon /></ListItemIcon>
            <ListItemText primary={'Home'} />
        </ListItemButton>
    </>)
}

const FooterWithDialog = () => {
    const [open, setOpen] = useState(false)

    return (<>
        <ListItemButton onClick={ () => {setOpen(true)}}>
            <ListItemIcon><InfoIcon /></ListItemIcon>
            <ListItemText>Information</ListItemText>
        </ListItemButton>
        <Dialog open={open} onClose={ () => {setOpen(false)}} >
            <DialogTitle>Fantasy Premier League: Developers</DialogTitle>
            <DialogContent>
                <DialogContentText>
                    <Typography variant='h5'>Md. Jehadul Karim (Sabit)</Typography>
                    <Typography variant='subtitle'>Favourite Club: Arsenal</Typography>
                    
                    <Typography variant='h5' sx={{mt: 2}}>Al Amru Bil Maruf</Typography>
                    <Typography variant='subtitle'>Favourite Club: Chelsea</Typography>
                    
                </DialogContentText>
                <DialogActions>
                    <Button onClick={ () => {setOpen(false)}} variant="contained">
                        Okay
                    </Button>
                </DialogActions>
            </DialogContent>
        </Dialog>
    </>)
}

const footerHeight = '60px';

export default function LeftNavigation({signedIn}) {
    const classes = useStyles();

    return (<>
        <List style={{marginBottom: footerHeight}}>
            {!signedIn ? <AnonymousNav /> : <SignedInNav />}
            <Divider/>
            <NavLink to='/fixture' className={classes.menubtn}>
                { ({isActive}) => (
                    <ListItemButton selected={isActive}>
                        <ListItemIcon><CalendarTodayIcon /></ListItemIcon>
                        <ListItemText primary={'Fixture'} />
                    </ListItemButton>
                )}
            </NavLink>
            <NavLink to='/stat' className={classes.menubtn}>
                { ({isActive}) => (
                    <ListItemButton selected={isActive}>
                        <ListItemIcon><QueryStatsIcon /></ListItemIcon>
                        <ListItemText primary={'Stats'} />
                    </ListItemButton>
                )}
            </NavLink>
            <NavLink to='/blog' className={classes.menubtn}>
                { ({isActive}) => (
                    <ListItemButton selected={isActive}>
                        <ListItemIcon><TextSnippetIcon /></ListItemIcon>
                        <ListItemText primary={'Blog'} />
                    </ListItemButton>
                )}
            </NavLink>
        </List>

        {/* Footer */}
        <List style={{width: '100%', position: 'absolute', bottom: '0', height: footerHeight}} >
            <Divider />
            <FooterWithDialog />
        </List>
    </>) 
}