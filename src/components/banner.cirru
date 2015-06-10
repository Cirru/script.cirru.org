
var
  React $ require :react

var
  div $ React.createFactory :div

= module.exports $ React.createClass $ object
  :displayName :banner

  :render $ \ ()
    return $ div (object (:className :banner))
      div (object (:className :scopes))
        div (object (:className :scope)) :Scirpus
        div (object (:className :scope)) :Babel
      div (object (:className :stages))
        div (object (:className :stage)) :Cirru
        div (object (:className :stage)) ":Cirru AST"
        div (object (:className :stage)) ":ES6 AST"
        div (object (:className :stage)) ":ES5 AST"
        div (object (:className :stage)) ":JavaScript"
      div (object (:className :arrow))
        div (object (:className :arrow-body))
        div (object (:className :arrow-head))
