
var
  fs $ require :fs

= module.exports $ object
  :entry $ object
    :main $ array
      , :webpack-dev-server/client?http://0.0.0.0:8080
      , :webpack/hot/dev-server
      , :./src/main

  :output $ object
    :path :build/
    :filename :[name].js
    :publicPath :http://localhost:8080/build/

  :resolve $ object
    :extensions $ array :.js :.cirru :.coffee :

  :module $ object
    :loaders $ array
      object (:test /\.cirru$) (:loader :cirru-script) (:ignore /node_modules)
