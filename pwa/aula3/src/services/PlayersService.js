const express = require('express')
const Players = require('./index')

let router = express()

router.route('/players')
.get((req, res, next) => {
  Players.findAll()
    .then(( players ) => {
      res.send(players)
      next()
    })
    .catch(err => {
      next()
    })
})
.post((req, res, next) => {
  let body = req.body

  Players.create(body)
    .then(() => {
      res.status(200)
      res.send(body)
      next()
    })
    .catch(err => {
      err.status = err.status || 500
      res.status(401)
      next()
    })
})

module.exports = router