import { ListItemButton, ListItemIcon, ListItemText } from "@mui/material";
import HomeIcon from '@mui/icons-material/Home';
import PaidIcon from '@mui/icons-material/Paid';
import CachedIcon from '@mui/icons-material/Cached';
import GroupsIcon from '@mui/icons-material/Groups';
import FormatListNumberedIcon from '@mui/icons-material/FormatListNumbered';
import { Navigate, NavLink, Route, Routes } from "react-router-dom";
import { useStyles } from ".";

const UserNav = () => {
    const classes = useStyles();

    return (<>
        <NavLink to='/user/home' className={classes.menubtn}>
            { ({isActive}) => (
                <ListItemButton selected={isActive}>
                    <ListItemIcon><HomeIcon /></ListItemIcon>
                    <ListItemText primary={'Home'} />
                </ListItemButton>
            )}
        </NavLink>
        <NavLink to='/user/team' className={classes.menubtn}>
            { ({isActive}) => (
                <ListItemButton selected={isActive}>
                    <ListItemIcon><GroupsIcon /></ListItemIcon>
                    <ListItemText primary={'My Team'} />
                </ListItemButton>
            )}
        </NavLink>
        <NavLink to='/user/point' className={classes.menubtn}>
            { ({isActive}) => (
                <ListItemButton selected={isActive}>
                    <ListItemIcon><PaidIcon /></ListItemIcon>
                    <ListItemText primary={'Points'} />
                </ListItemButton>
            )}
        </NavLink>
        <NavLink to='/user/transfer' className={classes.menubtn}>
            { ({isActive}) => (
                <ListItemButton selected={isActive}>
                    <ListItemIcon><CachedIcon /></ListItemIcon>
                    <ListItemText primary={'Transfer'} />
                </ListItemButton>
            )}
        </NavLink>
        
        <NavLink to='/user/league' className={classes.menubtn}>
            { ({isActive}) => (
                <ListItemButton selected={isActive}>
                    <ListItemIcon><FormatListNumberedIcon /></ListItemIcon>
                    <ListItemText primary={'Leagues'} />
                </ListItemButton>
            )}
        </NavLink>
        <Routes >
            <Route path='/' element={<Navigate to='/user/home' />}/>
        </Routes>
    </>)
}

export default UserNav