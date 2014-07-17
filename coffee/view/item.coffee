
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

  render: ->
    isDragging = @props.dragging is @props.item.id
    $.div
      className:
        if @props.isDragging then 'list-item dragging'
        else 'list-item'
      draggable: yes
      onDragStart: (event) =>
        event.dataTransfer.setDragImage event.target, 0, 0
        @props.onDragStart @props.item.id
      onDragEnd: (event) =>
        @props.onDragEnd @props.item.id
      onDragEnter: (event) =>
        @props.onDragEnter @props.item.id
      $.span
        className: 'item-done'
        onClick: (event) =>
          model.toggle @props.item.id
        $.span {}, '✓'
      $.input
        ref: 'input'
        className: 'item-text'
        onChange: (event) =>
          text = event.currentTarget.value.trimLeft()
          model.edit @props.item.id, text
        onBlur: (event) =>
          text = event.currentTarget.value.trimLeft()
          if text.length is 0
            model.remove @props.item.id
        onKeyDown: (event) =>
          event.stopPropagation()
          switch event.keyCode
            when 13
              event.preventDefault()
              if event.shiftKey then model.before @props.item.id
              else model.after @props.item.id
            when 27
              event.currentTarget.blur()
        value: @props.item.text