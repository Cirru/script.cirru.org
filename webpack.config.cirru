
var
  fs $ require :fs
  webpack $ require :webpack

= module.exports $ object
  :entry $ object
    :vendor $ array
      , :webpack-dev-server/client?http://0.0.0.0:8080
      , :webpack/hot/dev-server
      , :react :cirru-script :scirpus :babel-core/browser :textarea-indent
    :main $ array :./src/main

  :output $ object
    :path :build/
    :filename :[name].js
    :publicPath :http://localhost:8080/build/

  :resolve $ object
    :extensions $ array :.js :.cirru :

  :module $ object
    :loaders $ array
      object (:test /\.cirru$) (:loader :cirru-script) (:ignore /node_modules)
      object (:test /\.cr$) (:loader :raw)
      object (:test /\.css$) (:loader :style!css?importLoaders=1!autoprefixer)

  :plugins $ array
    new webpack.optimize.CommonsChunkPlugin :vendor :vendor.js
