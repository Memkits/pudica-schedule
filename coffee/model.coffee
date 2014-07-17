
Dispatcher = require './utils/dispatcher'
uid = require './utils/uid'
oop = require './utils/oop'

schedule = []

module.exports = model = new Dispatcher

oop.mixin model,

  get: ->
    schedule

  add: ->
    item =
      id: uid.make()
      text: ''
      done: no
    schedule.push item
    @emit()

  edit: (id, text) ->
    for item in schedule
      if id is item.id
        item.text = text
        break
    @emit()

  swap: (a, b) ->
    if a isnt b
      draggingIndex = @locateById b
      itemIndex = @locateById a
      tmp = schedule[draggingIndex]
      schedule[draggingIndex] = schedule[itemIndex]
      schedule[itemIndex] = tmp
      @emit()

  locateById: (id) ->
    for one, index in schedule
      if one.id is id
        return index
    -1

  remove: (id) ->
    itemIndex = @locateById id
    schedule.splice itemIndex, 1
    @emit()

  edit: (id, text) ->
    itemIndex = @locateById id
    schedule[itemIndex].text = text
    @emit()

  after: (id) ->
    itemIndex = @locateById id
    item =
      id: uid.make()
      text: ''
      done: no
    schedule.splice (itemIndex + 1), 0, item
    @emit()

  before: (id) ->
    itemIndex = @locateById id
    item =
      id: uid.make()
      text: ''
      done: no
    schedule.splice itemIndex, 0, item
    @emit()

  toggle: (id) ->
    itemIndex = @locateById id
    item = schedule[itemIndex]
    item.done = not item.done
    @emit()

  clear: ->
    schedule = []
    @emit()

  reset: (data) ->
    schedule = data