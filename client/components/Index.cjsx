React = require 'react'
{ StyleResolverMixin, BrowserStateMixin } = require 'radium'

Index = React.createClass {
  mixins: [
    StyleResolverMixin
    BrowserStateMixin
  ]
  render: ->
    styles =
      backgroundColor: "red"
      color: "#FFF"

    (
      <div style={@buildStyles styles}>
        <p>React stuff.</p>
      </div>
    )
}

module.exports = Index
