import React from 'react';
import gym1 from './images/gym1.jpg';
import gym from './images/gym.jpg';
import './Trainers.css';

function Home() {
    return (
        <div className="homebox">
            <h2 style={{color:"whitesmoke",marginBottom:"70px",marginTop:"30px"}}>Want to get the best fitness tips and training Right at home?</h2>
            <div className="imbox">
            <img style={{marginRight:"5px"}} src = {gym} alt = "" width='500px' heigh='auto'/>
            <img src = {gym1} alt = "" width='500px' heigh='auto' />
            </div>
            <h4 style={{color:"whitesmoke",marginTop:"50px"}}>What are you waiting for? Try trainex now!</h4> 
        </div>
    )
}

export default Home;
