const express = require("express");

const app = express();

const PORT = process.env.PORT || 8080;
const name = process.env.NAME || "world";
app.get("/", (req, res) => {
  res.send("hello " + name);
});

app.listen(PORT, () => {
  console.log(`server listening on ${PORT}`);
});
