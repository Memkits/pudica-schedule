
require './utils/extend'

model = require './model'

App = require './view/app'

React.renderComponent (App {}), document.body

try
  raw = localStorage.getItem 'pudica'
  data = (JSON.parse raw) or []
  model.reset data

window.onbeforeunload = ->
  raw = JSON.stringify model.get()
  localStorage.setItem 'pudica', raw

document.body.addEventListener 'keydown', (event) ->
  if event.keyCode is 13 and event.currentTarget is @
    model.add()