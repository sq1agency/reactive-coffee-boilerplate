require 'coffee-script/register'
webpack = require 'webpack'
path = require 'path'

outputPath = ''
if process.env.NODE_ENV is 'production'
  outputPath = path.join __dirname, '../../dist'
else
  outputPath = path.join __dirname, '../../build'

module.exports =
  entry: [
    'webpack-dev-server/client?http://0.0.0.0:8080'
    'webpack/hot/only-dev-server'
    './client/client.cjsx'
  ]

  output:
    publicPath: 'http://localhost:8080/public/'
    path: outputPath
    filename: 'bundle.js'

  plugins: [
    new webpack.HotModuleReplacementPlugin()
    new webpack.NoErrorsPlugin()
  ]

  devtool: 'eval'

  resolveLoader:
    modulesDirectories: ['./node_modules']

  resolve:
    extensions: ['', '.js', '.cjsx', '.coffee']

  module:
    loaders: [
      {
        test: /\.js$/
        loaders: ['jsx-loader', 'react-hot']
      }
      {
        test: /\.coffee$/
        loaders: [ 'coffee-loader' ]
      }
      {
        test: /\.cjsx$/
        loaders: [ 'react-hot', 'coffee-loader', 'cjsx' ]
      }
      {
        test: /\.(png|woff)$/
        loader: 'url-loader?limit=100000'
      }
      {
        test: /\.(jpe?g|png|gif|svg)$/i
        loader: 'image?bypassOnDebug&optimizationLevel=7&interlaced=false'
      }
    ]
