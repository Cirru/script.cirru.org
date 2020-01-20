
import :./tabs Tabs

var
  React $ require :react
  cirru $ require :cirru-parser
  scirpus $ require :scirpus
  generator $ require :@babel/generator
  indent $ require :textarea-indent

var
  div $ React.createFactory :div
  span $ React.createFactory :span
  textarea $ React.createFactory :textarea

var tabs $ [] ":Cirru AST" ":ES6 AST" ":JavaScript"

let Displayer $ \ (props)

  var
    ([]~ selected setSelected) $ React.useState :JavaScript
  var
    ([]~ source setSource) $ React.useState props.code

  let sourceNodeRef $ React.useRef

  React.useEffect
    \ ()
      sourceNodeRef.current.addEventListener :keydown indent.newlineHandler
      \ ()
        sourceNodeRef.current.removeEventListener :keydown indent.newlineHandler
    []

  let compileCodeAs $ \ (code format)
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
        var res $ generator.default res ({})
        return res.code
    return undefined

  let tryCompile $ \ (code format)
    try
      do
        var res $ compileCodeAs code format
        return res
      err
        return err
    return undefined

  let onSelect $ \ (tab)
    setSelected tab

  div ({} (:className :displayer))
    div ({} (:className :name)) props.name
    div ({} (:className :compiler))
      textarea $ {} (:className :source)
        :value source
        :onChange $ \ (event)
          setSource event.target.value
        :ref sourceNodeRef
      div ({} (:className :result))
        React.createElement Tabs $ {}
          :tabs tabs
          :select selected
          :onSelect onSelect
        textarea $ {} (:className :compiled)
          :value $ tryCompile source selected
          :onChange $ \ ()

export default Displayer
