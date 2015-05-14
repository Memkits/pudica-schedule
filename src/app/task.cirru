
var
  React $ require :react

var div $ React.createFactory :div
var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-task

  :propTypes $ object
    :task T.object.isRequired

  :render $ \ ()
    var task this.props.task

    return $ div
      object (:className :app-task) (:key (task.get :id))
      div null (String (task.get :done))
      div null (task.get :text)
