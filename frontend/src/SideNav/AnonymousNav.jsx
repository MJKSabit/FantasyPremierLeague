import HomeIcon from "@mui/icons-material/Home";
import { ListItemButton, ListItemIcon, ListItemText } from "@mui/material";
import { Navigate, NavLink, Route, Routes } from "react-router-dom";
import { useStyles } from ".";

const AnonymousNav = () => {
    const classes = useStyles();

    return (<>
        <NavLink to='/home' className={classes.menubtn}>
            { ({isActive}) => (
                <ListItemButton selected={isActive}>
                    <ListItemIcon><HomeIcon /></ListItemIcon>
                    <ListItemText primary={'Home'} />
                </ListItemButton>
            )}
        </NavLink>

        <Routes >
            <Route path='/' element={<Navigate to='/home' />}/>
        </Routes>
    </>)
}

export default AnonymousNav