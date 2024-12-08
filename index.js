const express =require('express');
const path =require('path');
const file = require('fs');
const app = express()
const port = 3000;


app.use('/',(req,res)=>{ 
res.sendFile(path.join(__dirname,'index.html'));
  console.log('Successfully Served');
})

//to  listen to the port 
app.listen(port,()=>{ 
console.log('Port opened')
})
