import React,{useState} from 'react';
import Navbar from './Navbar'; 
import './App.css';
import OptionList from './OptionsList';
import Home from './Home';

function App() {

  const [ishome,sethome]=useState(true);
  function gethome(){
    sethome(true);
  }

  const [name,setname]= useState(null);
  function getname(n){
    setname(n);
  }

  const [trainer,settrain] = useState(false);
  function istrainer(){
    sethome(false);
    console.log(trainer)
    settrain(true);
  }

  return (
    <div>
      <div className="navbar">
        <Navbar getname={getname} istrainer={istrainer} gethome={gethome}/>
      </div>
      <div className="header centre">
        <h1>Trainex: The trainer finder!</h1>
      </div>
      <h4>Welcome {name}!</h4>
      <div className="main">
      {
        ishome?(<Home />)
        :
        trainer?
        <OptionList/>:
        null
      }
      </div>
    </div>
  )
}

export default App;
