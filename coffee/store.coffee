
events = require 'events'
store = new events.EventEmitter
module.exports = store

store._data = []
store._dragging = undefined

id =
  _date: (new Date).getTime()
  _count: 0
  make: ->
    @_count += 1
    "_id-#{@_date}-#{@_count}"

store.get = ->
  list: @_data
  dragging: @_dragging

store.add = ->
  item =
    id: id.make()
    title: ''
    done: no
  @_data.push item
  @emit 'change'

store.edit = (id, text) ->
  for item in @_data
    if id is item.id
      item.text = text
      break
  store.emit 'change'

store.setDragging = (id) ->
  @_dragging = id
  store.emit 'change'

store.unsetDragging = ->
  @_dragging = undefined
  store.emit 'change'

store.swap = (id) ->
  if id isnt @_dragging
    draggingIndex = store.locateById @_dragging
    itemIndex = store.locateById id
    tmp = @_data[draggingIndex]
    @_data[draggingIndex] = @_data[itemIndex]
    @_data[itemIndex] = tmp
  store.emit 'change'

store.locateById = (id) ->
  for one, index in @_data
    if one.id is id
      return index
  -1