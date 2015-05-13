
var dispatcher $ require :./dispatcher

= exports.insert $ \ (id atBefore)
  dispatcher.dispatch $ object
    :type :insert
    :id id
    :atBefore atBefore

= exports.update $ \ (id text)
  dispatcher.dispatch $ object
    :type :update
    :id id
    :text text

= exports.delete $ \ (id)
  dispatcher.dispatch $ object
    :type :delete
    :id id

= exports.toggle $ \ (id)
  dispatcher.dispatch $ object
    :type :toggle
    :id id

= exports.clear $ \ ()
  dispatcher.dispatch $ object
    :type :clear
