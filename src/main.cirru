
var
  React $ require :react
  recorder $ require :actions-recorder
  Immutable $ require :immutable

var
  Layout $ React.createFactory $ require :./app/layout
  schema $ require :./schema
  updater $ require :./updater

try
  do
    var raw $ localStorage.getItem :pudica
    var data $ JSON.parse (or raw :[])
    = _store $ immutable.fromJS data
  err

= window.onbeforeunload $ \ ()
  var raw $ JSON.stringify $ _store.toJS
  localStorage.setItem :pudica raw

recorder.setup $ {}
  :initial schema.store
  :records (Immutable.List)
  :updater updater

var render $ \ (store recorder)
  React.render
    Layout $ {} (:tasks store) (:recorder recorder)
    , document.body

recorder.request render
recorder.subscribe render
