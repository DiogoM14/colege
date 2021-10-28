const express = require('express')
const Players = require('./index')

let router = express()

router.route('/players')
.get((req, res) => {
  
  console.log('Get foi!')
})
.post((req, res, next) => {
  let body = req.body

  console.log(body)

  Players.create(body)
    .then(() => {
      console.log('gravei')
      res.status(200)
      res.send(body)
      next()
    })
    .catch(err => {
      console.log('já existe')
      err.status = err.status || 500
      res.status(401)
      next()
    })

  console.log('Post foi!')
})

module.exports = router