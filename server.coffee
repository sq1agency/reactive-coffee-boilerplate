require "babel/register"

require('node-cjsx').transform()
express      = require 'express'
compression  = require 'compression'
React        = require 'react'
Router       = require 'react-router'
RouteHandler = Router.RouteHandler

ReactDocumentTitle = require 'react-document-title'

routes    = require './routes'
Dispatchr = require './dispatcher'

server = express()
# GZIP like a BOSS
server.use compression()

if process.env.NODE_ENV is 'production'
  server.use "/public", express.static path.join(__dirname, '/dist')

server.use (req, res, next) ->
  # We create a new dispatcher on each request to keep it from being a "true"
  # singleton, and to keep session/request state information and events from
  # colliding.
  dispatcher = new Dispatchr()

  title = ReactDocumentTitle.rewind()

  router = Router.create {
    routes: routes
    location: req.path
    onAbort: (abortReason, location) ->
      if abortReason and abortReason.to
        res.redirect 301, abortReason.to
      else
        res.redirect 404, "404"
  }

  content = ''

  router.run (Handler, state) ->
    content = React.renderToString React.createElement(
      Handler,
      {routerState: state, environment: "server"},
      null
    )

  res.write """
    <html>
      <head><title>Hello.</title></head>
      <body>
        #{content}
      </body>
  """

  if process.env.NODE_ENV is "production"
    res.write '<script src="/public/bundle.js" defer></script>'

  if process.env.NODE_ENV is "development"
    res.write """
      <script src="http://localhost:8080/public/bundle.js" defer></script>
    """

  res.end()

server.listen 3000
if process.env.NODE_ENV is "development"
  console.log 'Server is now listening on port 3000.'
