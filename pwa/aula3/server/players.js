const bodyParser = require('body-parser')
const express = require('express')

function PlayerRouter() {
  let router = express()

  router.use(bodyParser.json({ limit: '100mb' }))
  router.use(bodyParser.urlencoded({ limit: '100mb', extended: true }))

  router.route('/players')
  .get((req, res) => {
    console.log('Get foi!')
    res.send('Get foi!')
  })
  .post((req, res) => {
    console.log('Post foi!')
    res.send('Post foi!')
  })

  return router
}

module.exports = PlayerRouter