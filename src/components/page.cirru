
var
  React $ require :react

var
  div $ React.createFactory :div

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
        div (object (:className :section))
          div (object (:className :title))
        div (object (:className :section))
          div (object (:className :title))
      div (object (:className :footer))