const express = require('express')

let router = require('./routes')
require('./database/connection')

const app = express()

app.use(express.json())
app.use(router)

app.listen(3333, () => {
  console.log("Server started 🟢")
})
