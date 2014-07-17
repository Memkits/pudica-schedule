# https://github.com/facebook/react/issues/1694

exports.listenTo =
  componentWillMount: ->
    @listeners = []

  listenTo: (store, fn) ->
    store.addChangeListener fn
    @listeners.push
      remove: =>
        store.removeChangeListener fn

  componentWillUnmount: ->
    @listeners.forEach (listener) =>
      listener.remove()