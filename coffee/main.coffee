
dom = require 'coffee-react-dom'

store = require './store'

ListItem = React.createClass
  displayName: 'ListItem'

  edit: (event) ->
    id = @props.item.id
    text = event.target.value
    store.edit id, text

  getInitialState: ->
    @props

  componentDidMount: ->
    @refs.input.getDOMNode().focus()

  render: ->
    view = @
    props = @props
    item = props.item
    dom -> @div
      className:
        if props.dragging is item.id
          'list-item dragging'
        else
          'list-item'
      draggable: yes
      onDragStart: (event) -> view.onDragStart event, item
      onDragEnd: (event) -> view.onDragEnd event, item
      onDragEnter: (event) -> view.onDragEnter event, item
      @span
        className: 'item-done'
        onClick: (event) -> view.onClick event, item
      @input
        ref: 'input'
        className: 'item-text'
        onChange: (event) -> view.onChange event, item
        onBlur: (event) -> view.onBlur event, item
        onKeyDown: (event) -> view.onKeyDown event, item
        value: item.text

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
    if event.keyCode is 13
      event.preventDefault()
      store.after item.id
  onClick: (event, item) ->
    store.toggle item.id

DeadItem = React.createClass
  displayName: 'DeadItem'
  render: ->
    view = @
    props = @props
    item = props.item
    dom -> @div className: 'dead-item',
      @span
        className: 'item-done'
        onClick: (event) -> view.onClick event, item
      @input
        className: 'item-text'
        type: 'text'
        value: item.text
        readOnly: yes

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
    view = @
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

    dom -> @div id: 'paper',
      itemsList
      @div id: 'add-wrap',
        @div
          id: 'add'
          onClick: view.add
          'add'
        @div
          id: 'reset'
          onClick: view.reset
          'reset'
      deadList

  add: ->
    store.add()
  reset: ->
    store.reset()

React.renderComponent (App {}),
  document.querySelector '#app'