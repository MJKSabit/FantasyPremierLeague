import { Box, Container, CssBaseline, Paper, Typography } from "@mui/material";
import { Route, Routes } from "react-router-dom";
import BlogList, { Blog } from "./anonymous/Blog";
import Fixture from "./anonymous/Fixture";
import ForgotPasswordPage from "./anonymous/Forgot";

import HomePage from './anonymous/Home'
import RegisterPage from "./anonymous/Register";
import StatPage from "./anonymous/Stat";
import UserHome from "./user/UserHome";

const CenterContent = () => (
    <>
        <CssBaseline />
        <Container maxWidth='md'>
            <Paper sx={{minHeight: '85vh', p: 5}} >
                <Routes path='/'>
                    <Route path='home' element={<HomePage />} />
                    <Route path='fixture' element={<Fixture />} >
                        <Route path=':gwId' element={<Fixture />} />
                    </Route>
                    <Route path='stat' element={<StatPage />} />
                    <Route path='forgot' element={<ForgotPasswordPage />} />
                    <Route path='blog' >
                        <Route index element={<BlogList />} />
                        <Route path=':blogId' element={<Blog />} />
                    </Route>
                    <Route path='register' element={<RegisterPage />} />
                    <Route path='user'>
                        <Route path='home' element={<UserHome />} />
                    </Route>
                </Routes>
            </Paper>
        </Container>
    </>
)

export default CenterContent;