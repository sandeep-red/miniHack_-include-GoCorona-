const mongoose=require('mongoose')

const trainerschema=mongoose.Schema({
    _id:mongoose.Schema.Types.ObjectId,
    url:String,
    name:String,
    number:Number,
    gender:String,
    fitnesstype:String,
    language:Array,
    free:String,
    rating:Number,
    price:Number
})
module.exports = mongoose.model('trainer',trainerschema)