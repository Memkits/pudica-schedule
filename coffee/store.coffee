
events = require 'events'
store = new events.EventEmitter
module.exports = store

store._data = []
store._dragging = undefined

uid =
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
    id: uid.make()
    text: ''
    done: no
  @_data.push item
  @emit 'change'

store.edit = (id, text) ->
  for item in @_data
    if id is item.id
      item.text = text
      break
  @emit 'change'

store.setDragging = (id) ->
  @_dragging = id
  @emit 'change'

store.unsetDragging = ->
  @_dragging = undefined
  @emit 'change'

store.swap = (id) ->
  if id isnt @_dragging
    draggingIndex = @locateById @_dragging
    itemIndex = @locateById id
    tmp = @_data[draggingIndex]
    @_data[draggingIndex] = @_data[itemIndex]
    @_data[itemIndex] = tmp
  @emit 'change'

store.locateById = (id) ->
  for one, index in @_data
    if one.id is id
      return index
  -1

store.remove = (id) ->
  itemIndex = @locateById id
  @_data.splice itemIndex, 1
  @emit 'change'

store.edit = (id, text) ->
  itemIndex = @locateById id
  @_data[itemIndex].text = text
  @emit 'change'

store.after = (id) ->
  itemIndex = @locateById id
  item =
    id: uid.make()
    text: ''
    done: no
  @_data.splice (itemIndex + 1), 0, item
  @emit 'change'

store.toggle = (id) ->
  itemIndex = @locateById id
  item = @_data[itemIndex]
  item.done = not item.done
  @emit 'change'

store.clear = ->
  @_data = []
  @emit 'change'

try
  raw = localStorage.getItem 'pudica'
  store._data = (JSON.parse raw) or []

window.onbeforeunload = ->
  raw = JSON.stringify store._data
  localStorage.setItem 'pudica', raw
