
var
  React $ require :react
  store $ require :./store
  App $ React.createFactory $ require :./component/app

React.render (App) document.body

