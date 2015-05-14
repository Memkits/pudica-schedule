
var
  React $ require :react
  Task $ React.createFactory $ require :./task

var div $ React.createFactory :div
var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-list

  :propTypes $ object
    :tasks T.object.isRequired

  :renderTasks $ \ ()
    return $ this.props.tasks.map $ \ (task index)
      return $ Task $ object (:task task) (:index index) (:key (task.get :id))

  :render $ \ ()
    return $ div
      object (:className :app-list)
      this.renderTasks
