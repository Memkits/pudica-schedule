
var
  React $ require :react
  store $ require :./store
  Layout $ React.createFactory $ require :./app/layout

var render $ \ ()
  React.render
    Layout $ object
      :tasks (store.get)
    , document.body

render
store.on :change render
