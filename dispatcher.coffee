Dispatcher = require('dispatchr')()
fs         = require 'fs'

# Loops through the stores folder and registers the stores to the dispatcher.
# Also, I use sync here. I know, I know, but it should only be run on startup.
files = fs.readdirSync './client/stores'

files.forEach (file) ->
  Dispatcher.registerStore require "./client/stores/#{file}"

module.exports = Dispatcher
