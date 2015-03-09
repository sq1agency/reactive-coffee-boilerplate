React = require 'react'
{ StyleResolverMixin, BrowserStateMixin } = require 'radium'

Index = React.createClass {
  mixins: [
    StyleResolverMixin
    BrowserStateMixin
  ]
  render: ->
    styles =
      backgroundColor: "#DDD"
      color: "#555"

    (
      <div style={@buildStyles styles}>
        <p>Test.</p>
      </div>
    )
}

module.exports = Index
