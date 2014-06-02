
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
      @input
        ref: 'input'
        className: 'item-text'
        onChange: (event) -> view.onEdit event, item
        onBlur: (event) -> view.onBlur event, item
        onKeyDown: (event) -> view.onKeyDown event, item
        value: item.text
      @input
        type: 'checkbox'
        checked: item.done
        onChange: (event) -> view.onChange event, item
      @span
        onClick: -> view.remove item.id
        'rm'

  onDragStart: (event, item) ->
    event.dataTransfer.setDragImage event.target, 0, 0
    store.setDragging item.id
  onDragEnd: (event, item) -> store.unsetDragging()
  onDragEnter: (event, item) -> store.swap item.id
  onEdit: (event, item) ->
    text = event.currentTarget.value.trim()
    store.edit item.id, text
  onBlur: (event, item) ->
    text = event.currentTarget.value.trim()
    if text.length is 0
      store.remove item.id
  onKeyDown: (event, item) ->
    if event.keyCode is 13
      event.preventDefault()
      store.after item.id
  onChange: (event, item) ->
    store.toggle item.id
  remove: (id) ->
    store.remove id

DeadItem = React.createClass
  displayName: 'DeadItem'
  render: ->
    view = @
    props = @props
    item = props.item
    dom -> @div className: 'dead-item',
      @input
        type: 'text'
        value: item.text
        readOnly: yes
      @input
        type: 'checkbox'
        checked: item.done
        onChange: (event) -> view.onChange event, item

  onChange: (event, item) ->
    store.toggle item.id

App = React.createClass
  displayName: 'App'
  add: ->
    store.add()

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
      @div {},
        @button
          id: 'add'
          onClick: view.add
          'Add'
      deadList

React.renderComponent (App {}),
  document.querySelector '#app'