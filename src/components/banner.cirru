
import :react React

var
  div $ React.createFactory :div

let Banner $ \ ()
  div ({} (:className :banner))
    div ({} (:className :scopes))
      div ({} (:className :scope)) :Scirpus
      div ({} (:className :scope)) :Babel
    div ({} (:className :stages))
      div ({} (:className :stage)) :Cirru
      div ({} (:className :stage)) ":Cirru AST"
      div ({} (:className :stage)) ":ES6 AST"
      div ({} (:className :stage)) ":ES5 AST"
      div ({} (:className :stage)) ":JavaScript"
    div ({} (:className :arrow))
      div ({} (:className :arrow-body))
      div ({} (:className :arrow-head))

export default Banner
