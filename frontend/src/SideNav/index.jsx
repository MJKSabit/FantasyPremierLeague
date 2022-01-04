import HomeIcon from '@mui/icons-material/Home';
import CalendarTodayIcon from '@mui/icons-material/CalendarToday';
import TextSnippetIcon from '@mui/icons-material/TextSnippet';
import QueryStatsIcon from '@mui/icons-material/QueryStats';
import InfoIcon from '@mui/icons-material/Info';

import { Divider, List, ListItem, ListItemButton, ListItemIcon, ListItemText } from "@mui/material";
import { makeStyles } from "@mui/styles";
import { NavLink } from "react-router-dom";
import UserNav from './UserNav';
import AnonymousNav from './AnonymousNav';

export const useStyles = makeStyles(() => ({
    menubtn: {
        textDecoration: 'none',
        color: 'inherit'
    },
}));


const SignedInNav = () => {

    const userType = 'user';

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
            <ListItemButton>
                <ListItemIcon><InfoIcon /></ListItemIcon>
                <ListItemText>Information</ListItemText>
            </ListItemButton>
        </List>
    </>) 
}