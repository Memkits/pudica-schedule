
var
  React $ require :react
  AppList $ React.createFactory $ require :./list

var div $ React.createFactory :div
var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-layout

  :propTypes $ object
    :tasks T.object.isRequired

  :render $ \ ()

    return $ div (object (:className :app-layout))
      div (object (:className :title)) :Tasks:
      AppList $ object (:tasks this.props.tasks)
