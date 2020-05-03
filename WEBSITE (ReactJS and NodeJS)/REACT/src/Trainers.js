import React from 'react';
import './Trainers.css'
import girl from './images/girl.jpg';
import boy from './images/boy.png';
import StarBorderIcon from '@material-ui/icons/StarBorder';

function Trainers({fitnesstype, name, gender, number, price, rating,language}) {
    var foo = [];

    for (var i = 1; i <= rating; i++) {
        foo.push(i);
        }
    return (
        <div className="border">
        <div className="mainbox">
            <div className="photo">
            {
                (gender === 'male')?
                    <img src={boy} alt=""/>
                :
                    <img src={girl} alt=""/>
            }
            </div>
            <div className="details">
                <span>{name.toUpperCase()}</span><span>₹{price}</span>
                <span>*per hour</span>
                <br/> 
                <span>{
                    foo.map((b,j)=>{
                        return(<StarBorderIcon color="primary" />)
                    })
                }</span>
                <br/><br/> 
                <span>{fitnesstype} expert</span><br/>
                <span>languages known: {language.map((c,k)=>{return(c+", ")})}</span>
            </div>
        </div>
        </div>
    )
}

export default Trainers;
