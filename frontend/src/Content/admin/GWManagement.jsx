import { Button, Grid, TextField, Typography, Dialog, DialogActions, DialogContent, DialogTitle } from "@mui/material"
import ReactJson from "react-json-view"
import { useEffect, useState } from "react"
import { getSettingsAPI, setSettingsAPI } from "../../api"


const GWManagement = () => {

    const [settings, setSettings] = useState([{key: 'CURRENT_GW', value: 0}])
    const [showSettings, setShowSettings] = useState(false)

    useEffect(() => {
        getSettingsAPI().then(d => {
            setSettings(d)
        })
    }, [])

    const closeDialog = () => {setShowSettings(false)}

    const settingDialog = <Dialog open={showSettings} onClose={closeDialog}>
        <DialogTitle>
            Edit Settings
        </DialogTitle>
        <DialogContent>
        <ReactJson src={settings} onEdit={ (e) => setSettings(e.updated_src) } 
        indentWidth={2} quotesOnKeys={false}/>
        </DialogContent>
        <DialogActions>
            <Button type='contained' onClick={e => {
                closeDialog();
                setSettingsAPI(settings).then(d => {
                    setSettings(d)
                })
            }}>
                Okay
            </Button>
        </DialogActions>
    </Dialog>

    let CURRENT_GW = -1

    settings.forEach(v => {
        if (v.key === 'CURRENT_GW')
            CURRENT_GW = v.value
    })

    return (<>
        <Typography variant="h5" sx={{mb: 4}}>
            Admin Panel GW Management
        </Typography>
        <Grid container spacing={2} justifyContent="center" alignItems="center">
            <Grid item xs={6}>
                <TextField variant="standard" type="number" value={CURRENT_GW} fullWidth label='Current GW' />
            </Grid>
            <Grid item xs={6}>
                <Button variant="outlined" fullWidth onClick={e => {setShowSettings(true)}}>
                    Show and Edit Settings
                </Button>
                {settingDialog}
            </Grid>
        </Grid>
    </>)

}

export default GWManagement