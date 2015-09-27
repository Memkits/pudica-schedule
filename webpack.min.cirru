
var
  webpack $ require :webpack
  config $ require :./webpack.config
  fs $ require :fs
  ExtractTextPlugin $ require :extract-text-webpack-plugin

= module.exports $ object
  :entry $ object
    :main $ array :./src/main
    :vendor $ array

  :output $ object
    :path :build/
    :filename :[name].[chunkhash:8].js
    :publicPath :./build/

  :resolve config.resolve
  :module $ {}
    :loaders $ []
      {} (:test /\.cirru$) (:loader :cirru-script) (:ignore /node_modules)
      {} (:test "/\.(png|jpg)$") (:loader :url-loader)
      {} (:test /\.css$) $ :loader
        ExtractTextPlugin.extract :style-loader :css!autoprefixer

  :plugins $ array
    new webpack.optimize.CommonsChunkPlugin :vendor :vendor.[chunkhash:8].js
    new ExtractTextPlugin :style.[chunkhash:8].css
    new webpack.optimize.UglifyJsPlugin $ object (:sourceMap false)
    \ ()
      this.plugin :done $ \ (stats)
        var
          json $ stats.toJson
          content $ JSON.stringify json.assetsByChunkName null 2
        return $ fs.writeFileSync :build/assets.json content
