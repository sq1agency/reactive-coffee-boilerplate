webpack          = require 'webpack'
WebpackDevServer = require 'webpack-dev-server'
config           = require './webpack.config'

new WebpackDevServer(webpack(config), {
  contentBase: 'http://localhost:3000'
  publicPath: config.output.publicPath
  noInfo: true
  hot: true
  headers:
    "Access-Control-Allow-Origin": "*"
}).listen 8080, 'localhost', (err, result) ->
  if err? then console.log err

  console.log 'Dev server listening at localhost:8080'
