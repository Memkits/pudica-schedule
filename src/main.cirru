
var
  React $ require :react
  recorder $ require :actions-recorder
  Immutable $ require :immutable

var
  Layout $ React.createFactory $ require :./app/layout
  schema $ require :./schema
  updater $ require :./updater

require :../style/main.css
require :actions-recorder/style/actions-recorder.css

var initialStore schema.store

try
  do
    var raw $ localStorage.getItem :pudica
    var data $ JSON.parse (or raw :[])
    = initialStore $ Immutable.fromJS (or data ([]))
  err

= window.onbeforeunload $ \ ()
  var raw $ JSON.stringify (recorder.getState)
  -- localStorage.setItem :pudica raw

recorder.setup $ {}
  :initial $ cond (is initialStore.size 0)
    schema.store.push schema.task
    , initialStore
  :records (Immutable.List)
  :updater updater

var render $ \ (store core)
  React.render
    Layout $ {} (:tasks store) (:core core)
    , document.body

recorder.request render
recorder.subscribe render
