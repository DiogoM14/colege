const express = require('express')

const routes = express.Router()

routes.get('/tempohoje', (req, res) => {
  res.json({
    "27 de outubro": "sol"
  })
})

routes.get('/tempoamanha', (req, res) => {
  res.json({
    "28 de outubro": "chuva"
  })
})

module.exports = routes