import React,{useState} from 'react';
import axios from 'axios';
import TrainersList from './TrainersList';
import { Button } from '@material-ui/core';
import KeyboardArrowRightIcon from '@material-ui/icons/KeyboardArrowRight';
import Radio from '@material-ui/core/Radio';


function OptionsList() {
    const [type, settype] = useState(null);
    const [islist, settolist] = useState(false);
    const [trainerguys, setthem] = useState([])

    function getguy(){
        console.log(type);
        axios.post('https://63f871d4.ngrok.io/getdata',{fitnesstype:type}).then(response=>{
            console.log(response.data);
            setthem(response.data);
        })
        settolist(true);
    }

    function changetype(event){
        settype(event.target.value);
    }
    
    return (
        <div>
            {
            (islist)?
            (<TrainersList robots={trainerguys}/>)
            :
           ( <div style={{"color":"lightgrey","marginLeft":"40%","fontSize":"30px"}}>
        <h2>What are you interested in?</h2>
        <Radio
        color="primary"
        onChange={changetype}
        value="yoga"
        name="radio-button-demo"
      />&nbsp;&nbsp;Yoga<br/>
      <Radio
        color="primary"
        onChange={changetype}
        value="athletic"
        name="radio-button-demo"
      />&nbsp;&nbsp;Athletics<br/>
      <Radio
        color="primary"
        onChange={changetype}
        value="weight management"
        name="radio-button-demo"
      />&nbsp;&nbsp;Weight management<br/>
      <Radio
        color="primary"
        onChange={changetype}
        value="pilates"
        name="radio-button-demo"
      />&nbsp;&nbsp;Pilates<br/>
        <Button style={{marginLeft:'20px'}} color="primary" variant="contained" size="large" onClick={getguy} endIcon={<KeyboardArrowRightIcon />}>Find</Button>
        </div>)
        }
        </div>
    )
   
}

export default OptionsList
