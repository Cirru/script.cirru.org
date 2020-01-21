
var
  React $ require :react
  ReactDOM $ require :react-dom

require :../style/main.css

import :./components/page Page

ReactDOM.render (React.createElement Page) (document.querySelector ":#app")
