const express = require('express')

let router = require('./routes')
require('./database/connection')

const app = express()
const port = 3333

app.use(express.json())
app.use(router)

app.listen(port, () => {
  console.log("Server started 🟢")
})
