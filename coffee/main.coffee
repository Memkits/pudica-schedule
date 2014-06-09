
store = require './store'

$ = React.DOM

$.if = (cond, trueExpr, falseExpr) ->
  if cond then trueExpr else falseExpr

ListItem = React.createClass
  displayName: 'ListItem'

  edit: (event) ->
    id = @props.item.id
    text = event.target.value
    store.edit id, text

  getInitialState: ->
    @props

  componentDidMount: ->
    el = @refs.input.getDOMNode()
    if el.value.length is 0
      el.focus()

  render: ->
    isDragging = @props.dragging is @props.item.id
    $.div
      className:
        $.if isDragging,
          'list-item dragging'
          'list-item'
      draggable: yes
      onDragStart: (event) => @onDragStart event, @props.item
      onDragEnd: (event) => @onDragEnd event, @props.item
      onDragEnter: (event) => @onDragEnter event, @props.item
      $.span
        className: 'item-done'
        onClick: (event) => @onClick event, @props.item
        $.span {}, '✓'
      $.input
        ref: 'input'
        className: 'item-text'
        onChange: (event) => @onChange event, @props.item
        onBlur: (event) => @onBlur event, @props.item
        onKeyDown: (event) => @onKeyDown event, @props.item
        value: @props.item.text

  onDragStart: (event, item) ->
    event.dataTransfer.setDragImage event.target, 0, 0
    store.setDragging item.id
  onDragEnd: (event, item) -> store.unsetDragging()
  onDragEnter: (event, item) -> store.swap item.id
  onChange: (event, item) ->
    text = event.currentTarget.value.trimLeft()
    store.edit item.id, text
  onBlur: (event, item) ->
    text = event.currentTarget.value.trimLeft()
    if text.length is 0
      store.remove item.id
  onKeyDown: (event, item) ->
    event.stopPropagation()
    switch event.keyCode
      when 13
        event.preventDefault()
        if event.shiftKey
          store.before item.id
        else
          store.after item.id
      when 27
        event.currentTarget.blur()
  onClick: (event, item) ->
    store.toggle item.id

DeadItem = React.createClass
  displayName: 'DeadItem'
  render: ->
    $.div className: 'dead-item',
      $.span
        className: 'item-done'
        onClick: (event) => @onClick event,  @props.item
        '×'
      $.div
        className: 'item-text'
        type: 'text'
        @props.item.text

  onClick: (event, item) ->
    store.toggle item.id

App = React.createClass
  displayName: 'App'

  getInitialState: ->
    store.get()

  componentDidMount: ->
    store.on 'change', =>
      @setState store.get()

  render: ->
    itemsList = @state.list
    .filter (item) =>
      not item.done
    .map (item) =>
      ListItem key: item.id, item: item, dragging: @state.dragging

    deadList = @state.list
    .filter (item) =>
      item.done
    .map (item) =>
      DeadItem key: item.id, item: item

    isListRich = @state.list.length > 0

    $.if isListRich,
      $.div id: 'paper',
        itemsList
        $.div id: 'space'
        deadList
        $.div id: 'add-wrap',
          $.div
            id: 'clear'
            onClick: @clear
            'clear'
      $.div id: 'start-guide',
        "Press Enter to start..."

  clear: ->
    store.clear()

React.renderComponent (App {}),
  document.querySelector '#app'

document.body.addEventListener 'keydown', (event) ->
  if event.keyCode is 13 and event.currentTarget is @
    store.add()