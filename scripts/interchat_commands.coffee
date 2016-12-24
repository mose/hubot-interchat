# Description:
#   configure and control bridges
#
# Dependencies:
#
# Configuration:
#
# Commands:
#   hubot interchat version         - give the version of hubot-pager-v2 loaded
#
# Author:
#   mose

Interchat = require '../lib/interchat'
moment = require 'moment'
path = require 'path'

module.exports = (robot) ->

  robot.brain.on 'loaded', ->

    robot.brain.data.interchat ?= {
      bridges: { }
    }
    robot.interchat ?= new Interchat robot, process.env
    interchat = robot.interchat
    # console.log robot.pagerv2.data

  #   hubot pd version - give the version of hubot-pager-v2 loaded
    robot.respond /interchat version\s*$/, 'pd_version', (res) ->
      pkg = require path.join __dirname, '..', 'package.json'
      res.send "hubot-interchat is version #{pkg.version}"
      res.finish()
