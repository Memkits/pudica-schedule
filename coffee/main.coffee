
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
      contentEditable: 'true'
      onDragStart: (event) -> view.onDragStart event, item
      onDragEnd: (event) -> view.onDragEnd event, item
      onDragEnter: (event) -> view.onDragEnter event, item
      ref: 'input'
      item.text

  onDragStart: (event, item) ->
    store.setDragging item.id

  onDragEnd: (event, item) ->
    store.unsetDragging()

  onDragEnter: (event, item) ->
    store.swap item.id

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
    itemsList = @state.list.map (item) =>
      ListItem key: item.id, item: item, dragging: @state.dragging
    dom -> @div id: 'paper',
      itemsList
      @div {},
        @button
          id: 'add'
          onClick: view.add
          'Add'

React.renderComponent (App {}),
  document.querySelector '#app'