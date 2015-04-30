
date = (new Date).getTime()
count = 0

exports.make = ->
  count += 1
  "_id-#{date}-#{count}"
