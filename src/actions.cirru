
var
  shortid $ require :shortid
  recorder $ require :actions-recorder

= exports.insert $ \ (id atBefore)
  actions.dispatch $ {}
    :type :insert
    :data $ {}
      :id id
      :atBefore atBefore
      :newId (shortid.generate)

= exports.update $ \ (id text)
  actions.dispatch $ {}
    :type :update
    :data $ {}
      :id id
      :text text

= exports.delete $ \ (id)
  actions.dispatch $ {}
    :type :delete
    :data $ {}
      :id id

= exports.toggle $ \ (id)
  actions.dispatch $ {}
    :type :toggle
    :data $ {}
      :id id

= exports.reset $ \ ()
  actions.dispatch $ {}
    :type :reset

= exports.swap $ \ (id1 id2)
  actions.dispatch $ {}
    :type :swap
    :data $ {}
      :id1 id1
      :id2 id2
