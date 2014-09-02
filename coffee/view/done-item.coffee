
React = require 'react'

$ = React.DOM

model = require '../model'

module.exports = React.createClass
  displayName: 'DoneItem'

  onClick: (event, item) ->
    model.toggle @props.item.id

  render: ->
    $.div className: 'item is-done',
      $.span className: 'toggler', onClick: @onClick,
        '↺'
      $.div className: 'text', type: 'text',
        @props.item.text