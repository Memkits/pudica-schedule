
React = require 'react'

$ = React.DOM
$$ = require '../utils/extend'

model = require '../model'

module.exports = React.createClass
  displayName: 'Item'

  edit: (event) ->
    id = @props.item.id
    text = event.target.value
    model.edit id, text

  componentDidMount: ->
    el = @refs.input.getDOMNode()
    if el.value.length is 0
      el.focus()

  editTask: (event) ->
    text = event.currentTarget.value.trimLeft()
    model.edit @props.item.id, text

  blurFromTarget: (event) ->
    event.currentTarget.blur()

  insertTask: (event) ->
    event.preventDefault()
    if event.shiftKey then model.before @props.item.id
    else model.after @props.item.id

  leaveTask: (event) ->
    text = event.currentTarget.value.trimLeft()
    if text.length is 0
      model.remove @props.item.id

  toggle: (event) ->
    model.toggle @props.item.id

  switchKeys: (event) ->
    event.stopPropagation()
    switch event.keyCode
      when 13 then @insertTask event
      when 27 then @blurFromTarget event

  dragItem: (event) ->
    event.dataTransfer.setDragImage event.target, 0, 0
    @props.onDragStart @props.item.id

  releaseDrag: (event) ->
    @props.onDragEnd @props.item.id

  onDragEnter: (event) ->
    @props.onDragEnter @props.item.id

  render: ->
    isDragging = @props.dragging is @props.item.id
    itemClass = if isDragging then 'item dragging' else 'item'

    $.div
      draggable: yes,
      className: itemClass
      onDragStart: @dragItem, onDragEnd: @releaseDrag, onDragEnter: @onDragEnter
      $.span className: 'toggler', onClick: @toggle,
        '✓'
      $.input
        ref: 'input', className: 'text', value: @props.item.text
        onChange: @editTask, onBlur: @leaveTask, onKeyDown: @switchKeys