let express = require('express');
const PORT = 8888;
let app = express();

app.get("/",function(req,res){
    res.send("hello world");
})

app.listen(PORT);
console.log("running at http://localhost:" + PORT);