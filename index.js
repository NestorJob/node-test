const express = require("express");
const app = express();

const morgan = require("morgan");

app.use(morgan("dev"));

app.use(require("./routes.js"));

const server = app.listen(process.env.PORT || 3000, function () {
  const port = server.address().port;
  console.log("Server is working on port " + port);
});
