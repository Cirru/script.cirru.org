
var
  React $ require :react
  classnames $ require :classnames

var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :tabs

  :propTypes $ object
    :tabs T.array.isRequired
    :select T.string.isRequired
    :onSelect T.func.isRequired

  :onClick $ \ (tab)
    this.props.onSelect tab

  :render $ \ ()
    return $ div (object (:className :tabs))
      this.props.tabs.map $ \\ (tab)
        var className $ classnames :tab
          object (:is-selected (is this.props.select tab))
        var onClick $ \\ ()
          this.onClick tab
        return $ div
          object (:className className) (:onClick onClick) (:key tab)
          , tab
