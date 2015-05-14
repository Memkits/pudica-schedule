
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

= exports.reset $ \ ()
  dispatcher.dispatch $ object
    :type :reset

= exports.swap $ \ (id1 id2)
  dispatcher.dispatch $ object
    :type :swap
    :id1 id1
    :id2 id2
