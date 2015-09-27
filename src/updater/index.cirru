
var
  todo $ require :./todo

= module.exports $ \ (store actionType actionData)
  case actionType
    :insert $ todo.insert store actionData
    :update $ todo.update store actionData
    :delete $ todo.delete store actionData
    :toggle $ todo.toggle store actionData
    :reset $ todo.reset store actionData
    :swap $ todo.swap store actionData
    else store
