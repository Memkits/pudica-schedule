
events = require 'events'
store = new events.EventEmitter

store._data = []

id =
  _date: (new Date).getTime()
  _count: 0
  make: ->
    @_count += 1
    "_id-#{@_date}-#{@_count}"

store.get = ->
  list: @_data

store.on 'add', ->
  item =
    id: id.make()
    title: ''
    done: no
  @_data.unshift item
  @emit 'change'

module.exports = store