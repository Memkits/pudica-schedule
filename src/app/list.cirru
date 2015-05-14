
var
  React $ require :react
  Task $ React.createFactory $ require :./task

var actions $ require :../actions
var config $ require :../config

var div $ React.createFactory :div
var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-list

  :propTypes $ object
    :tasks T.object.isRequired

  :onDragStart $ \ (id)
    = this._draggingId id

  :onDragEnter $ \ (id)
    if (isnt id this._draggingId)
      do
        actions.swap id this._draggingId

  :renderTasks $ \ ()
    var self this
    var components $ this.props.tasks.map $ \\ (task index)
      return $ Task $ object (:task task) (:index index)
        :key (task.get :id)
        :onDragStart self.onDragStart
        :onDragEnter self.onDragEnter
    return $ components.sortBy $ \ (item)
      return item.key

  :render $ \ ()
    return $ div
      object (:className :app-list)
        :style $ object
          :height (* this.props.tasks.size config.height)
      this.renderTasks
