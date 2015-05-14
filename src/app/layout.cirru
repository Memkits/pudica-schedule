
var
  React $ require :react
  AppList $ React.createFactory $ require :./list

var actions $ require :../actions

var div $ React.createFactory :div
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
          :onClick this.onClick
        , :Tasks:
      AppList $ object (:tasks this.props.tasks)
