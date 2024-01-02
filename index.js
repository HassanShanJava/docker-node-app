//simple express app 
const express=require("express");


// create route
app.get('/',(req,res)=>{
    res.send("Hello world")
})


app.listen(3000,()=>{
    console.log("localhost:3000 port read")
});