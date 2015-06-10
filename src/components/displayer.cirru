
var
  React $ require :react

var
  div $ React.createFactory :div
  span $ React.createFactory :span
  textarea $ React.createFactory :textarea

var T $ React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :displayer

  :propTypes $ object
    :code T.string.isRequired
    :name T.string.isRequired

  :render $ \ ()
    return $ div (object (:className :displayer))
      div (object (:className :name)) this.props.name
      div (object (:className :compiler))
        textarea (object (:className :source))
        div (object (:className :result))
          div (:object (:className :kind))
            div (:object (:className :tag)) ":Cirru AST"
            div (:object (:className :tag)) ":ES6 AST"
            div (:object (:className :tag)) ":JavaScript"
          textarea (object (:className :result))
