const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/up", (_req, res) => {
  res.send({
    build_version: process.env.BUILD_VERSION,
    ref: process.env.BUILD_REF,
  });
});

app.get("/", (req, res) => {
  res.send({ hello: "world" });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
