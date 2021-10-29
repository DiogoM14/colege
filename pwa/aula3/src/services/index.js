const PlayersController = require('../controllers/PlayersController')
const Player = require('../models/Player')

const service = PlayersController(Player)

module.exports = service