
var
  React $ require :react
  ReactDOM $ require :react-dom

require :../style/main.css

import :./container Container

ReactDOM.render (React.createElement Container) (document.querySelector ":#app")
