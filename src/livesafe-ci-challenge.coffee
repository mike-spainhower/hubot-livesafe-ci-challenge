# Description
#   Ask SafeBot for the results of the LS CI Challenge! 
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot ci challenge status - Gives the current status of CI Challenge
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Spain Train <spain@livesafemobile.com>

_ = require "ls-lodash"
challStatus = require "../data/status.json"

module.exports = (robot) ->
  robot.respond /ci challenge status/i, (msg) ->
    _.forEach challStatus, (status, human) ->
      msg.send "#{human} #{if status then 'white_check_mark' else ':no_entry:' }"
