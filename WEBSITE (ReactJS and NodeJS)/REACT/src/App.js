import React from 'react';
import Navbar from './Navbar'; 
import './App.css';

function App() {
  return (
    <div>
      <div className="navbar">
        <Navbar />
      </div>
      <div className="header">
        <h1>Trainex, the trainer finder</h1>
      </div>
    </div>
  )
}

export default App;
