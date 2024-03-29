const express = require("express");
// const bodyParser = require("body-parser"); /* deprecated */
const cors = require("cors");

const app = express();

var corsOptions = {
  //origin: "http://localhost:8081" //CRUD website
  //origin: "https://web.postman.co/workspace/My-Workspace~7e2759bf-58c5-4529-82be-0d1a6d69ae18/request/create?requestId=1c685414-5855-4191-9058-082fc4b0b82c" //CRUD website
  origin: "https://real-front.netlify.app" //CRUD website
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(express.json()); /* bodyParser.json() is deprecated */

// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true })); /* bodyParser.urlencoded() is deprecated */

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to Real Backend API-crud application." });
});

require("./app/routes/product.routes.js")(app);

// set port, listen for requests
/* const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
}); */

const server = app.listen(process.env.PORT || 8080, () => {
  const port = server.address().port;
  console.log(`Express is working on port ${port}`);
});
