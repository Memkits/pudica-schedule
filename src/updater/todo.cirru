
var
  schema $ require :../schema
  Immutable $ require :immutable

var
  bind $ \ (v k) (k v)

var helperInsert $ \ (before after id newItem atBefore)
  cond (is after.size 0) before
    cond
      is
        ... (after.first) (get :id)
        , id
      before.concat
        Immutable.List $ cond atBefore
          [] newItem (after.first)
          [] (after.first) newItem
        after.rest
      helperInsert
        before.push (after.first)
        after.rest
        , id newItem atBefore

= exports.insert $ \ (store actionData)
  helperInsert schema.store store
    actionData.get :id
    schema.task.set :id (actionData.get :newId)
    actionData.get :atBefore

= exports.update $ \ (store actionData)
  store.map $ \ (item)
    cond (is (item.get :id) (actionData.get :id))
      item.merge actionData
      , item

= exports.delete $ \ (store actionData)
  bind
    store.filterNot $ \ (item)
      is (item.get :id) (actionData.get :id)
    \ (newStore)
      cond (is newStore.size 0)
        schema.store.push store.task
        , newStore

= exports.toggle $ \ (store actionData)
  store.map $ \ (item)
    cond (is (item.get :id) (actionData.get :id))
      item.update :done $ \ (status)
        not status
      , item

= exports.reset $ \ (store actionData)
  schema.store.push schema.task

= exports.swap $ \ (store actionData)
  var
    item1 $ store.find $ \ (item)
      is (item.get :id) (actionData.get :id1)
    item2 $ store.find $ \ (item)
      is (item.get :id) (actionData.get :id2)
  store.map $ \ (item)
    case item
      item1 item2
      item2 item1
      else item
