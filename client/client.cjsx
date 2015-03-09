React  = require 'react'
Router = require 'react-router'

routes = require '../routes'

Router.run routes, Router.HistoryLocation, (Handler, state) ->
  React.render(
    <Handler routerState={state} environment="browser" />, document.body
  )
