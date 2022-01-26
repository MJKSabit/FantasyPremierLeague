import { Create, Description, Home, List } from "@mui/icons-material";
import { ListItemButton, ListItemIcon, ListItemText } from "@mui/material"
import { Navigate, NavLink, Route, Routes } from "react-router-dom"
import { useStyles } from ".";

const ScoutNav = () => {
    const classes = useStyles();

    return (<>
        <NavLink to='/scout/home' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><Home /></ListItemIcon>
                <ListItemText primary={'Home'} />
            </ListItemButton>
            )}
        </NavLink>

        <NavLink to='/scout/create' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><Create /></ListItemIcon>
                <ListItemText primary={'Write Blog'} />
            </ListItemButton>)}
        </NavLink>

        <NavLink to='/scout/my' className={classes.menubtn}>
            { ({isActive}) => (
            <ListItemButton selected={isActive}>
                <ListItemIcon><Description /></ListItemIcon>
                <ListItemText primary={'My Blogs'} />
            </ListItemButton>
            )}
        </NavLink>

        


        <Routes >
            <Route path='/' element={<Navigate to='/scout/home' />}/>
        </Routes>
    </>)
}

export default ScoutNav