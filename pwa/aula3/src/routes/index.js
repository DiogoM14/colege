const express = require('express')
let PlayerService = require('../services/PlayersService')

let router = express()

router.use('/team', PlayerService)

module.exports = router