import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import BottomNavigation from '@material-ui/core/BottomNavigation';
import BottomNavigationAction from '@material-ui/core/BottomNavigationAction';
import FitnessCenterIcon from '@material-ui/icons/FitnessCenter';
import AssignmentIndIcon from '@material-ui/icons/AssignmentInd';
import CreditCardIcon from '@material-ui/icons/CreditCard';
import Button from '@material-ui/core/Button';
import TextField from '@material-ui/core/TextField';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';


const useStyles = makeStyles({
  root: {
    width: 500,
  },
});

function Navbar() {

  const [open, setOpen] = React.useState(false);

  const handleClickOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const classes = useStyles();
  const [value, setValue] = React.useState(0);

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
    <BottomNavigationAction label="Trainers" onClick = {handleClickOpen} icon={<FitnessCenterIcon />} />
    <BottomNavigationAction label="Sign in" onClick = {handleClickOpen} icon={<AssignmentIndIcon />} />
    <BottomNavigationAction label="Payment" onClick = {handleClickOpen} icon={<CreditCardIcon />} />
  </BottomNavigation>
  
  <Dialog open={open} onClose={handleClose} aria-labelledby="form-dialog-title">
      <DialogTitle id="form-dialog-title">Sign In</DialogTitle>
      <DialogContent>
        <DialogContentText>
          To sign in to this website, please enter your details here. We will send email updates
          occasionally.
        </DialogContentText>
        <TextField
          autoFocus
          margin="dense"
          id="name"
          label="Name"
          type="text"
          fullWidth
        />
        <TextField
          autoFocus
          InputLabelProps={{ shrink: true }}
          margin="dense"
          id="name"
          label="Birthday"
          type="date"
          fullWidth
        />
        <TextField
          autoFocus
          margin="dense"
          id="name"
          label="Email Address"
          type="email"
          fullWidth
        />
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose} color="primary">
          Cancel
        </Button>
        <Button onClick={handleClose} color="primary">
          Sign In
        </Button>
      </DialogActions>
    </Dialog>
    </div>
  );
}

export default Navbar;