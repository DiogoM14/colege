const PlayerModel = require('../models/Player')

function PlayerService(PlayerModel) {
  let service = {
    create
  }

  function create(values) {
    let newPlayer = PlayerModel(values)
    return save(newPlayer)
  }

  function save(newPlayer) {
    return new Promise((resolve, reject) => {
      newPlayer.save(err => {
        if (err) reject(err)

        resolve("Player created!")
      })
    })
  }

  return service
}

module.exports = PlayerService