import { createMuiTheme } from '@material-ui/core/styles';
import { blue,lightBlue } from '@material-ui/core/colors';

const theme = createMuiTheme({
  palette: {
    primary: blue,
    secondary: lightBlue,
  },
  status: {
    danger: 'orange',
  },
});

export default theme;