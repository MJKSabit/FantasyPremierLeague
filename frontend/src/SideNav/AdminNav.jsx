import Home from "@mui/icons-material/Home"
import { ListItemButton, ListItemIcon, ListItemText } from "@mui/material"
import { Navigate, NavLink, Route, Routes } from "react-router-dom"
import AdminPanelSettingsIcon from '@mui/icons-material/AdminPanelSettings';
import SportsSoccerIcon from '@mui/icons-material/SportsSoccer';
import ManIcon from '@mui/icons-material/Man';
import SportsScoreIcon from '@mui/icons-material/SportsScore';
import { useStyles } from ".";

const AdminNav = () => {
    const classes = useStyles();

    return (<>
        <NavLink to='/admin/home' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><Home /></ListItemIcon>
                <ListItemText primary={'Home'} />
            </ListItemButton>
            )}
        </NavLink>

        <NavLink to='/admin/user' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><AdminPanelSettingsIcon /></ListItemIcon>
                <ListItemText primary={'User Management'} />
            </ListItemButton>)}
        </NavLink>

        <ListItemButton component={NavLink} to='/admin/match'>
            <ListItemIcon><SportsScoreIcon /></ListItemIcon>
            <ListItemText primary={'Match Management'} />
        </ListItemButton>

        <NavLink to='/admin/gw' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><SportsSoccerIcon /></ListItemIcon>
                <ListItemText primary={'GW Management'} />
            </ListItemButton>)}
        </NavLink>

        <NavLink to='/admin/player' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><ManIcon /></ListItemIcon>
                <ListItemText primary={'Player Management'} />
            </ListItemButton>)}
        </NavLink>

        <Routes >
            <Route path='/' element={<Navigate to='/admin/home' />}/>
        </Routes>
    </>)
}

export default AdminNav