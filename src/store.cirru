
var
  events $ require :events
  immutable $ require :immutable
  assign $ require :object-assign
  shortid $ require :shortid

var dispatcher $ require :./dispatcher
var prelude $ require :./util/prelude

var List immutable.List
var EventEmitter events.EventEmitter

var store $ new EventEmitter
var _store $ List

var firstTask $ immutable.Map $ object
  :id $ shortid.generate
  :done false
  :text :
= _store $ _store.push firstTask

= store.get $ \ ()
  _store

try
  do
    var raw $ localStorage.getItem :pudica
    var data $ JSON.parse raw
    = _store $ immutable.fromJS data
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
  console.info :action: action
  switch action.type
    :insert
      = _store $ prelude.insert _store action.id action.atBefore
      store.emitChange
    :update
      = _store $ _store.map $ \ (item)
        if (is (item.get :id) action.id)
          do
            var newState $ immutable.Map $ object
              :text action.text
            return $ item.merge newState
          do
            return item
      store.emitChange
    :delete
      if (> _store.size 1) $ do
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
    :reset
      = _store $ List (array firstTask)
      store.emitChange

    :swap
      var item1 $ _store.find $ \ (item)
        return $ is (item.get :id) action.id1
      var item2 $ _store.find $ \ (item)
        return $ is (item.get :id) action.id2
      = _store $ _store.map $ \ (item)
        switch item
          item1
            return item2
          item2
            return item1
          else
            return item
      console.log (_store.toJS)
      store.emitChange

= module.exports store
