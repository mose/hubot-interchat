path = require 'path'

features = [
  'commands'
]

module.exports = (robot) ->
  for feature in features
    robot.logger.debug "Loading interchat_#{feature}"
    robot.loadFile(path.resolve(__dirname, 'scripts'), "interchat_#{feature}.coffee")
