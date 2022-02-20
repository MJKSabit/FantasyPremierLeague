import { Box, Container, CssBaseline, Paper, Typography } from "@mui/material";
import { Route, Routes } from "react-router-dom";
import { getScoutBlog } from "../api";
import AdminHome from "./admin/AdminHome";
import GWManagement from "./admin/GWManagement";
import MatchManagement from "./admin/MatchManagement";
import PlayerManagement from "./admin/PlayerManagement";
import UserManagement from "./admin/UserManagement";
import BlogList, { Blog } from "./anonymous/Blog";
import Fixture from "./anonymous/Fixture";
import ForgotPasswordPage from "./anonymous/Forgot";

import HomePage from './anonymous/Home'
import RegisterPage from "./anonymous/Register";
import StatPage from "./anonymous/Stat";
import CreateBlog from "./scout/CreateBlog";
import Settings from "./Settings";
import LeaguePage, { SingleLeague } from "./user/LeaguePage";
import MyTeam from "./user/MyTeam";
import PointsPage from "./user/PointsPage";
import TransferPage from "./user/TransferPage";
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
                        <Route path='team' element={<MyTeam />} />
                        <Route path='point' element={<PointsPage />} />
                        <Route path='point/:teamId' element={<PointsPage />} />
                        <Route path='transfer' element={<TransferPage />} />
                        <Route path='league' element={<LeaguePage />} />
                        <Route path='league/:leagueId' element={<SingleLeague />} />
                    </Route>
                    <Route path='admin'>
                        <Route path='home' element={<AdminHome />} />
                        <Route path='user' element={<UserManagement />} />
                        <Route path='player' element={<PlayerManagement />} />
                        <Route path='match' element={<MatchManagement />} />
                        <Route path='gw' element={<GWManagement />} />
                    </Route>
                    <Route path='scout'>
                        <Route path='create' element={<CreateBlog />} />
                        <Route path='my' element={<BlogList disableLoading={true} getBlogs={getScoutBlog} heading={'My Blogs'}/>} />
                    </Route>
                    <Route path='settings' element={<Settings /> } />
                </Routes>
            </Paper>
        </Container>
    </>
)

export default CenterContent;