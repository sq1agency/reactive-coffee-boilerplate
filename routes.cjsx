React = require 'react'
Route = require('react-router').Route
NotFoundRoute = require('react-router').NotFoundRoute
DefaultRoute  = require('react-router').DefaultRoute

Routes = (
  <Route handler={require './client/components/App'}>
    <DefaultRoute name="Index" handler={require './client/components/Index'}/>
  </Route>
)

module.exports = Routes
