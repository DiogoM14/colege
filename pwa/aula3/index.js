const express = require('express')
const http = require('http')
let router = require('./router')

const hostname = '127.0.0.1'
const port = '3000'

const app = express()
app.use(router.initialize())

const server = http.Server(app)

server.listen(port, hostname, () => {
  console.log("Server started 🟢")
})
