import './App.css';
import { Navigate, Route, Routes, useNavigate } from 'react-router-dom';
import { AppBar, Button, CssBaseline, Divider, Drawer, List, ListItem, ListItemIcon, ListItemText, Toolbar, Typography } from '@mui/material';
import { Box } from '@mui/system';
import { useEffect, useState } from 'react';
import LeftNavigation from './SideNav';
import CenterContent from './Content';

function App() {
  return (
    <Routes>
      <Route path="home" element={<div>Hello World!</div>} />
      <Route path='*' element={<Navigate to="/home" />} />
    </Routes>
  );
}

const drawerWidth = 240;

function Structure() {

  const [isSignedIn, setSignedIn] = useState(localStorage.getItem('JWT') !== null)
  const navigate = useNavigate();

  useEffect( () => {
    if (!isSignedIn && localStorage.getItem('JWT')) { 
      localStorage.removeItem('JWT');
      navigate('/');
    }
  }, [isSignedIn])

  return (
    <Box sx={{ display: 'flex' }}>
      <CssBaseline />
      <AppBar position="fixed" sx={{ zIndex: (theme) => theme.zIndex.drawer + 1 }}>
        <Toolbar>
          <Typography variant="h6" noWrap component="div" sx={{ flexGrow: 1 }}>
            Fantasy Premier League
          </Typography>
          { isSignedIn ? <>
            <Button color="inherit" onClick={ () => {navigate('/settings')}}>
                Settings
              </Button>
            <Button color="inherit" onClick={()=>{
              setSignedIn(false);
            }}>Log Out</Button>
            </> :
            <>
              <Button color="inherit" onClick={ () => {navigate('/register')}}>
                Register
              </Button>
              <Button color="inherit" onClick={ () => {navigate('/home')}}>
                Log In
              </Button>
            </>
          }
        </Toolbar>
      </AppBar>
      <Drawer
        variant="permanent"
        sx={{
          width: drawerWidth,
          flexShrink: 0,
          [`& .MuiDrawer-paper`]: { width: drawerWidth, boxSizing: 'border-box' },
        }}
      >
        <Toolbar />
        <Box sx={{ overflow: 'auto' }}>
          <LeftNavigation signedIn={isSignedIn} />
        </Box>
      </Drawer>
      <Box component="main" sx={{ flexGrow: 1, p: 3, backgroundColor: '#e5e5e5' }}>
        <Toolbar />
        <CenterContent />
      </Box>
    </Box>
  )
}

export default Structure;
