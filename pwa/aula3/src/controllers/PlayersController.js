function PlayerService(PlayerModel) {
  let service = {
    create,
    findAll
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

  function findAll() {
    return new Promise((resolve, reject) => {
      PlayerModel.find({}, (err, users) => {
        if (err) reject(err)

        resolve(users)
      })
    })
  }

  return service
}

module.exports = PlayerService