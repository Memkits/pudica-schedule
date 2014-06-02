
dom = require 'coffee-react-dom'

store = require './store'

ListItem = React.createClass
  displayName: 'ListItem'
  render: ->
    view = @
    dom ->
      @div className: 'list-item', 'item'

App = React.createClass
  displayName: 'App'
  add: ->
    store.emit 'add'

  getInitialState: ->
    store.get()

  componentDidMount: ->
    store.on 'change', =>
      @setState store.get()

  render: ->
    view = @
    itemsList = @state.list.map (item) ->
      ListItem key: item.id, item: item
    dom -> @div id: 'paper',
      itemsList
      @span
        onClick: view.add
        'Add'

React.renderComponent (App {}),
  document.querySelector '#app'