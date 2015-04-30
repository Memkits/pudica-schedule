
exports.mixin = (obj, proto) ->
  for key, value of proto
    obj[key] = value
  obj
