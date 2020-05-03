import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import {BrowserRouter as Router,Switch, Route} from "react-router-dom";
import App from './App';
import * as serviceWorker from './serviceWorker';
import theme from './theme';
import { ThemeProvider } from '@material-ui/core/styles';
import Payment from './Payment';


ReactDOM.render(
  <ThemeProvider theme={theme}>
  <React.StrictMode>
  <Router>
  <Switch>
        <Route exact path="/">
          <App />
        </Route>
        <Route exact path='/payment'>
          <Payment/>
        </Route>
  </Switch>
  </Router>
  </React.StrictMode>
    </ThemeProvider>,
  document.getElementById('root')
);

serviceWorker.unregister();