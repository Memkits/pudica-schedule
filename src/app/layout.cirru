
var
  React $ require :react
  AppList $ React.createFactory $ require :./list

var actions $ require :../actions

var div $ React.createFactory :div
var span $ React.createFactory :span

var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-layout

  :propTypes $ object
    :tasks T.object.isRequired

  :onClick $ \ ()
    actions.reset

  :render $ \ ()

    return $ div (object (:className :app-layout))
      div
        object (:className :title)
        span
          object (:onClick this.onClick) (:className :reset)
          , :Tasks:
      AppList $ object (:tasks this.props.tasks)
