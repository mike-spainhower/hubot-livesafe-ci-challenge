# Description
#   Ask SafeBot for the results of the LS CI Challenge! 
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Spain Train <spain@livesafemobile.com>

_ = require "ls-lodash"
challStatus = require "./status.json"

module.exports = (robot) ->
  robot.respond /ci challenge status/, (msg) ->
    _.forEach challStatus, (status, human) ->
      msg.reply "#{human} #{if status then 'white_check_mark' else ':no_entry:' }"
