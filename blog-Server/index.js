const express = require("express")
const app=express()

app.route("/").get((req,res)=>res.json("your first rest api 1"));

const port = 5002;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
