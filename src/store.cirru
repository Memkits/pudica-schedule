
var
  events $ require :events
  immutable $ require :immutable
  assign $ require :object-assign
  shortid $ require :shortid

var dispatcher $ require :./dispatcher

var List immutable.List
var EventEmitter events.EventEmitter

var store $ new EventEmitter
var _store $ List
  immutable.Map $ object
    :id $ shortid.generate
    :done false
    :text :

= store.get $ \ ()
  _store

try
  do
    var raw $ localStorage.getItem :pudica
    var data $ JSON.parse raw
  err

= window.onbeforeunload $ \ ()
  var raw $ JSON.stringify $ _store.toJS
  localStorage.setItem :pudica raw

assign store $ object
  :emitChange $ \ ()
    this.emit :change

  :addChangeListener $ \ (cb)
    this.on :change cb

  :removeChangeListener $ \ (cb)
    this.removeListener :change cb

  :get $ \ ()
    return _store

= store.dispatchToken $ dispatcher.register $ \ (action)
  switch action.type
    :insert
      var newItem $ immutable.Map $ object
        :done false
        :text :
      var emptyList $ List (array)
      var piled $ _store.map $ \ (item)
        if (is (item.get :id) action.id)
          do $ if action.atBefore
            do $ return $ List newItem item
            do $ return $ List item newItem
          do $ return $ List item
      = _store $ emptyList.concat (... piled)
      store.emitChange
    :update
      = _store $ _store.map $ \ (item)
        if (is (item.get :id) action.id)
          do
            var newState $ immutable.Map $ object
              :text action.text
            return $ item.merge newState
      store.emitChange
    :delete
      = _store $ _store.filter $ \ (item)
        return $ isnt (item.get :id) action.id
      store.emitChange
    :toggle
      = _store $ _store.map $ \ (item)
        if (is (item.get :id) action.id)
          do
            var newState $ immutable.Map $ object
              :done $ not $ item.get :done
            return $ item.merge newState
          do
            return item
      store.emitChange
    :clear
      = _store $ List (array)
      store.emitChange

= module.exports store
