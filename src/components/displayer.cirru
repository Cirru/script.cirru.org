
var
  React $ require :react/addons
  cirru $ require :cirru-parser
  scirpus $ require :scirpus
  babel $ require :babel-core/browser

var
  Tabs $ React.createFactory $ require :./tabs

var
  div $ React.createFactory :div
  span $ React.createFactory :span
  textarea $ React.createFactory :textarea

var T React.PropTypes
var tabs $ array ":Cirru AST" ":ES6 AST" ":JavaScript"

= module.exports $ React.createClass $ object
  :displayName :displayer
  :mixins $ array React.addons.LinkedStateMixin

  :propTypes $ object
    :code T.string.isRequired
    :name T.string.isRequired

  :getInitialState $ \ ()
    var select ":JavaScript"
    return $ object
      :source this.props.code
      :select select

  :compileCodeAs $ \ (code format)
    switch format
      ":Cirru AST"
        var res $ cirru.pare code
        return $ JSON.stringify res null 2
      ":ES6 AST"
        var res $ cirru.pare code
        var res $ scirpus.transform res
        return $ JSON.stringify res null 2
      ":JavaScript"
        var res $ cirru.pare code
        var res $ scirpus.transform res
        var res $ babel.fromAst res null (object)
        return res.code

  :tryCompile $ \ (code format)
    try
      do
        var res $ this.compileCodeAs code format
        return res
      err
        return err

  :onSelect $ \ (tab)
    this.setState $ object
      :select tab

  :render $ \ ()
    return $ div (object (:className :displayer))
      div (object (:className :name)) this.props.name
      div (object (:className :compiler))
        textarea $ object (:className :source)
          :valueLink $ this.linkState :source
        div (object (:className :result))
          Tabs $ object
            :tabs tabs
            :select this.state.select
            :onSelect this.onSelect
          textarea $ object (:className :compiled)
            :value $ this.tryCompile this.state.source this.state.select
            :onChange $ \ ()
