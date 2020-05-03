import React from 'react';
import Trainers from './Trainers';

function TrainersList({robots}) {
    return (
        <div>
           { robots.map((a,i)=>{
                return(
                    <a href='/payment' style={{textDecoration:"none"}}>  <Trainers key = {i}
                        fitnesstype = {robots[i].fitnesstype} 
                        name = {robots[i].name} 
                        gender = {robots[i].gender}
                        number = {robots[i].number} 
                        price = {robots[i].price} 
                        rating = {robots[i].rating} 
                        language = {robots[i].language}
                     /> </a>
                )
            })
           }
           {/* <button onClick = {()=>{console.log(robots)}}>inspect</button> */}
        </div>
    )
}

export default TrainersList;
