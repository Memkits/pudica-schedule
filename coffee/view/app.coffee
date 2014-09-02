
React = require 'react'

$ = React.DOM
$$ = require '../utils/extend'

model = require '../model'
mixins = require '../utils/mixins'

Item = require './item'
DoneItem = require './done-item'

module.exports = React.createClass
  displayName: 'App'
  mixins: [mixins.listenTo]

  getInitialState: ->
    schedule: model.get()
    dragging: null

  componentDidMount: ->
    @listenTo model, @_onChange

  _onChange: ->
    @setState schedule: model.get()

  clearTask: ->
    model.clear()

  swapItems: (itemId) ->
    model.swap @state.dragging, itemId

  dragItem: (itemId) ->
    @setState dragging: itemId

  releaseDrag: ->
    @setState dragging: null

  render: ->
    isListRich = @state.schedule.length > 0

    itemsList = @state.schedule
    .filter (item) => not item.done
    .map (item) =>
      dragging = @state.dragging is item.id
      Item
        key: item.id, item: item
        isDragging: dragging, onDragStart: @dragItem
        onDragEnd: @releaseDrag, onDragEnter: @swapItems

    deadList = @state.schedule
    .filter (item) => item.done
    .map (item) =>
      DoneItem key: item.id, item: item

    $$.if isListRich,
      => $.div id: 'paper',
        itemsList
        $.div id: 'space'
        deadList
        $.div id: 'add-wrap',
          $.div id: 'clear', onClick: @clearTask,
            'clear'
      => $.div id: 'start-guide',
        "Press Enter to start..."
