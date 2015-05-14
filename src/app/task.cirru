
var
  React $ require :react
  keycode $ require :keycode
  classnames $ require :classnames
  assign $ require :object-assign

var actions $ require :../actions
var config $ require :../config

var
  div $ React.createFactory :div
  span $ React.createFactory :span
  input $ React.createFactory :input

var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-task

  :propTypes $ object
    :task T.object.isRequired
    :index T.number.isRequired
    :onDragStart T.func.isRequired
    :onDragEnter T.func.isRequired

  :getInitialState $ \ ()
    return $ object

  :componentDidMount $ \ ()
    var text $ this.props.task.get :text
    if (is text :) $ do
      var el $ this.refs.text.getDOMNode
      el.focus

  :getId $ \ ()
    return $ this.props.task.get :id

  :onChange $ \ (event)
    actions.update (this.getId) event.target.value

  :onToggle $ \ ()
    actions.toggle (this.getId)

  :onKeyDown $ \ (event)
    switch (keycode event.keyCode)
      :enter
        actions.insert (this.getId) event.shiftKey

  :onDragStart $ \ (event)
    this.props.onDragStart (this.props.task.get :id)

  :onDragEnter $ \ (event)
    this.props.onDragEnter (this.props.task.get :id)

  :onBlur $ \ (event)
    if (is event.target.value :)
      do
        actions.delete (this.props.task.get :id)

  :render $ \ ()
    var task this.props.task

    return $ div
      object
        :className $ classnames :app-task
          cond (task.get :done) :is-done undefined
        :key (task.get :id)
        :draggable true
        :onDragStart this.onDragStart
        :onDragEnter this.onDragEnter
        :style $ object
          :top $ * this.props.index config.height
      span
        object (:className :status) (:onClick this.onToggle)
        cond (task.get :done) :↺ :✓
      input $ object
        :ref :text
        :className :text
        :value (task.get :text)
        :onChange this.onChange
        :onKeyDown this.onKeyDown
        :onBlur this.onBlur
