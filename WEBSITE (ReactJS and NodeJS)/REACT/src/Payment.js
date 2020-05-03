import React from 'react'
import QR from './images/QR.jpg'
import FormControl from '@material-ui/core/FormControl';
import Input from '@material-ui/core/Input';
import InputLabel from '@material-ui/core/InputLabel';
import { Button } from '@material-ui/core';
import KeyboardArrowRightIcon from '@material-ui/icons/KeyboardArrowRight';
import DoneOutlineIcon from '@material-ui/icons/DoneOutline';

function Payment() {

    const [isqr,setqr] = React.useState(false);

    function gotopay(){
        setqr(true);
    }

    return (
        <div>
        {
            (!isqr)?
            (
                <div className="paybox" style={{color:"white"}} >
        <h3>You are almost done, </h3>
        <h5>To submit your requirement, please provide your contact details</h5>
        <FormControl>
        <InputLabel htmlFor="component-simple">Name</InputLabel>
        <Input id="component-simple" />
      </FormControl>
      <FormControl>
        <InputLabel htmlFor="component-simple">Phone Number</InputLabel>
        <Input id="component-simple" />
      </FormControl>
      <FormControl>
        <InputLabel htmlFor="component-simple">Email ID</InputLabel>
        <Input id="component-simple" />
      </FormControl>
      <Button style={{margin:"auto",marginTop:"50px"}} color="primary" variant="contained" onClick={gotopay} endIcon={<KeyboardArrowRightIcon />}>submit</Button>
        </div>
            )
            :
            (
                <div className="paybox" style={{color:"white"}}>
                <div style={{display:"flex"}}><h2>you have successfully submitted your details! &nbsp;</h2> <DoneOutlineIcon /></div><br/>
            <h3>Pay now to get access to your trainer!</h3>
            <img src={QR} alt = "" width='250px' height='auto' />
            <h5>Our trainer will get back to you as soon as the payment is successful!</h5>
            <h5>Thank you! for your patience</h5>
        </div>
            )
        }
        </div>
    )
}

export default Payment;
