
import :react React

var
  classnames $ require :classnames

var
  div $ React.createFactory :div

let Tabs $ \ (props)

  let onClick $ \ (tab)
    props.onSelect tab

  div ({} (:className :tabs))
    props.tabs.map $ \ (tab)
      var className $ classnames :tab
        {} (:is-selected (is props.select tab))

      div
        {} (:className className)
          :key tab
          :onClick $ \ () (onClick tab)
        , tab

export default Tabs
