import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import { BrowserRouter } from 'react-router-dom';
import { ThemeProvider } from '@mui/system';
import theme from './config/theme';
import SnackbarProvider from 'material-ui-snackbar-provider/lib/SnackbarProvider';


ReactDOM.render(
    <SnackbarProvider SnackbarProps={{ autoHideDuration: 4000 }}>
      <BrowserRouter>
        <ThemeProvider theme={theme} >
          <App />
        </ThemeProvider>
      </BrowserRouter>
    </SnackbarProvider>
  ,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
