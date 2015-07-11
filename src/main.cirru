
var
  React $ require :react

require :../style/main.css

var Page $ React.createFactory $ require :./components/page

React.render (Page) document.body
