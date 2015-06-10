
var
  React $ require :react

var
  exampleAssignment $ require :../examples/assignment.cr

var
  Displayer $ React.createFactory $ require :./displayer

var
  div $ React.createFactory :div

console.log

= module.exports $ React.createClass $ object
  :displayName :page

  :render $ \ ()
    return $ div (object (:className :page))
      div (object (:className :header))
        , ":CirruScript"
      div (object (:className :description))
      div (object (:className :body))
        div (object (:className :section))
          div (object (:className :title))
          Displayer $ object
            :code exampleAssignment
            :name :Assignment
        div (object (:className :section))
          div (object (:className :title))
        div (object (:className :section))
          div (object (:className :title))
      div (object (:className :footer))