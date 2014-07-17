
model = require '../model'

module.exports = React.createClass
  displayName: 'DoneItem'
  render: ->
    $.div className: 'done-item',
      $.span
        className: 'item-done'
        onClick: (event) => @onClick event,  @props.item
        '×'
      $.div
        className: 'item-text'
        type: 'text'
        @props.item.text

  onClick: (event, item) ->
    model.toggle item.id