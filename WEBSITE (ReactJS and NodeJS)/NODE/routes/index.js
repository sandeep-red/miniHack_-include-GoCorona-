var express = require('express');
var router = express.Router();
const mongoose=require('mongoose')
const Trainer=require('../models/trainerdata')
/* GET home page. */

router.get('/data',(req,res,next)=>{
  const fitnesstype= req.query.fitnesstype;
  Trainer.find({fitnesstype:fitnesstype}).exec()
  .then((doc)=>{
    console.log(doc)
    res.status(200).json(doc)
  }).catch((err)=>{
    console.log(err)
    res.status(500).json({
      erro:err
    })
  })
})

router.post('/getdata',(req,res,next)=>{
  const fitnesstype= req.body.fitnesstype;
  Trainer.find({fitnesstype:fitnesstype}).exec()
  .then((doc)=>{
    console.log(doc)
    res.status(200).json(doc)
  }).catch((err)=>{
    console.log(err)
    res.status(500).json({
      erro:err
    })
  })
})


module.exports = router;
