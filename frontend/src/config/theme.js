import { createTheme } from '@mui/material/styles';

const font = "'Changa', sans-serif";
const primaryColor = '#360d3a'

const themeOptions = {
  palette: {
    type: 'light',
    primary: {
      main: primaryColor,
    },
    secondary: {
      main: '#02884e',
    },
  },
  typography: {
    useNextVariants: true,
    fontFamily: font,
  },
  overrides: {
    MuiSwitch: {
      root: {
        width: 42,
        height: 26,
        padding: 0,
        margin: 8,
      },
      switchBase: {
        padding: 1,
        '&$checked, &$colorPrimary$checked, &$colorSecondary$checked': {
          transform: 'translateX(16px)',
          color: '#fff',
          '& + $track': {
            opacity: 1,
            border: 'none',
          },
        },
      },
      thumb: {
        width: 24,
        height: 24,
      },
      track: {
        borderRadius: 13,
        border: '1px solid #bdbdbd',
        backgroundColor: '#fafafa',
        opacity: 1,
        transition: 'background-color 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,border 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms',
      },
    },
  },
};

const theme = createTheme(themeOptions);

export default theme;