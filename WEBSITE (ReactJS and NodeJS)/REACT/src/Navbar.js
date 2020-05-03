import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import BottomNavigation from '@material-ui/core/BottomNavigation';
import BottomNavigationAction from '@material-ui/core/BottomNavigationAction';
import FitnessCenterIcon from '@material-ui/icons/FitnessCenter';
import HomeIcon from '@material-ui/icons/Home';
import AssignmentIndIcon from '@material-ui/icons/AssignmentInd';
import CreditCardIcon from '@material-ui/icons/CreditCard';
import Button from '@material-ui/core/Button';
import TextField from '@material-ui/core/TextField';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogTitle from '@material-ui/core/DialogTitle';


const useStyles = makeStyles({
  root: {
    width: 500,
  },
});

function Navbar({getname, istrainer, gethome}) {

  function gettrainers(){
    istrainer();
  }

  const [signupdets, setsu] = React.useState({username:null, bday:null, password:null, gender:null});

  function onchanging(event){
    if(event.target.id !== "retype" || event.target.id!==""){
        console.log(event.target.id);
        setsu(signupdets => ({...signupdets, [event.target.id]: event.target.value}));
    }
  }

  function gohome(){
    gethome();
  }

  const [open1, setOpen1] = React.useState(false);

  const handleClickOpen1 = () => {
    setOpen1(true);
    setOpen0(false);
  };

  const handleClose1 = () => {
    setOpen1(false);
    getname(signupdets.username);
  };

  const [open0, setOpen0] = React.useState(false);

  const handleClickOpen0 = () => {
    setOpen0(true);
  };

  const handleClose0 = () => {
    setOpen0(false);
    setOpen1(false);
    getname(signupdets.username);
  };

  function senddata(event){
      getname(event.target.value)
  }

  const classes = useStyles();
  const [value, setValue] = React.useState(0);

  function payment(){
    window.location.href = "";
  }

  return (
    <div>
    <BottomNavigation
    value={value}
    onChange={(event, newValue) => {
      setValue(newValue);
    }}
    showLabels
    className={classes.root}
  >
    <BottomNavigationAction label="Home" icon={<HomeIcon />} onClick={gohome}/>
    <BottomNavigationAction label="Sign In" onClick = {handleClickOpen0} icon={<AssignmentIndIcon />} />
    <BottomNavigationAction label="Trainers" onClick = {gettrainers} icon={<FitnessCenterIcon />} />   
    <BottomNavigationAction label="Payment" onClick = {payment} icon={<CreditCardIcon />} />
  </BottomNavigation>
  
  <Dialog open={open1} onClose={handleClose1} aria-labelledby="form-dialog-title">
      <DialogTitle id="form-dialog-title">Sign Up</DialogTitle>
      <DialogContent>
        <TextField
          autoFocus
          margin="dense"
          id="username"
          label="UserName"
          type="text"
          fullWidth
          onChange={onchanging}
        />
        <TextField
          autoFocus
          InputLabelProps={{ shrink: true }}
          margin="dense"
          id="bday"
          label="Birthday"
          type="date"
          fullWidth
          onChange={onchanging}
        />
        <TextField
          autoFocus
          margin="dense"
          id="password"
          label="Password"
          type="password"
          fullWidth
          onChange={onchanging}
        />
        <TextField
          autoFocus
          margin="dense"
          id="retype"
          label="Re type Password"
          type="password"
          fullWidth
        />
        <TextField
          autoFocus
          margin="dense"
          id="gender"
          label="Gender (M/F/O)"
          type="text"
          fullWidth
          onChange={onchanging}
        />
                  
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose1} color="primary">
          Sign Up
        </Button>
      </DialogActions>
    </Dialog>

    <Dialog open={open0} onClose={handleClose0} aria-labelledby="form-dialog-title">
      <DialogTitle id="form-dialog-title">Sign In</DialogTitle>
      <DialogContent>
        <TextField
          autoFocus
          margin="dense"
          id="name"
          label="UserName"
          type="text"
          fullWidth
          onChange={senddata}
        />
        <TextField
          autoFocus
          margin="dense"
          id="password"
          label="Password"
          type="password"
          fullWidth
        />
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClickOpen1} color="primary">
          Sign Up
        </Button>
        <Button onClick={handleClose0} color="primary">
          Sign In
        </Button>
      </DialogActions>
    </Dialog>
    </div>
  );
}

export default Navbar;