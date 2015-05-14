
var
  immutable $ require :immutable
  shortid $ require :shortid

var List immutable.List

= exports.insert $ \ (data id atBefore)

  var newItem $ immutable.Map $ object
    :id $ shortid.generate
    :done false
    :text :

  var iter $ \ (before after)
    if (is after.size 0)
      do $ return before
      do
        var first $ after.first
        var rest $ after.rest
        if (is (first.get :id) id)
          do
            var piece $ List $ cond atBefore
              array newItem first
              array first newItem
            return $ before.concat piece rest
          do
            var piece $ List $ array first
            return $ iter (before.concat piece) rest

  var emptyList $ List (array)
  return $ iter emptyList data
