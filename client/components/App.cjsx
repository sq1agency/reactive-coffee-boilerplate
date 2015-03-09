React = require 'react'
Title = require 'react-document-title'
RouteHandler = require('react-router').RouteHandler

{ StyleResolverMixin, BrowserStateMixin } = require 'radium'

app = React.createClass {
  mixins: [
    StyleResolverMixin
    BrowserStateMixin
  ]

  render: ->
    (
      <Title title="Hello.">
        <RouteHandler />
      </Title>
    )
}

module.exports = app
