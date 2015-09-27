
var
  Color $ require :color
  React $ require :react
  keycode $ require :keycode
  Immutable $ require :immutable

var
  AppList $ React.createFactory $ require :./list
  Controller $ React.createFactory $ require :actions-recorder/lib/panel/controller

var actions $ require :../actions

var
  ({}~ div span) React.DOM

var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app-layout

  :propTypes $ object
    :tasks $ . (T.instanceOf Immutable.List) :isRequired
    :core T.object.isRequired

  :getInitialState $ \ ()
    {} (:showRecorder false)

  :componentDidMount $ \ ()
    window.addEventListener :keydown @onWindowKeydown

  :componentWillUnmount $ \ ()
    window.removeEventListener :keydown @onWindowKeydown

  :onWindowKeydown $ \ (event)
    if
      and
        is (keycode event.keyCode) :a
        and event.shiftKey $ or event.altKey event.ctrlKey event.metaKey
      do
        @setState $ {}
          :showRecorder $ not @state.showRecorder
    , undefined

  :onClick $ \ ()
    actions.reset

  :onCommit $ \ ()
    actions.internalCommit

  :onTodoReset $ \ ()
    actions.reset

  :onReset $ \ ()
    actions.internalReset

  :onPeek $ \ (position)
    actions.internalPeek position

  :onRun $ \ ()
    actions.internalRun

  :onMergeBefore $ \ ()
    actions.internalMergeBefore

  :onClearAfter $ \ ()
    actions.internalClearAfter

  :styleControl $ \ ()
    {}
      :color :white
      :display :flex
      :justifyContent :flex-end
      :width 600

  :styleClear $ \ ()
    {}
      :color :white
      :background $ ... (Color) (hsl 0 40 30 0.5) (hslString)
      :padding ":0px 14px"
      :lineHeight ":40px"
      :cursor :pointer

  :renderRecorder $ \ ()
    Controller $ {}
      :initial @props.core.initial
      :pointer @props.core.pointer
      :updater @props.core.updater
      :records @props.core.records
      :isTravelling @props.core.isTravelling
      :onCommit @onCommit
      :onReset @onReset
      :onPeek @onPeek
      :onMergeBefore @onMergeBefore
      :onClearAfter @onClearAfter
      :onRun @onRun

  :render $ \ ()

    div ({} (:className :app-layout))
      AppList $ {} (:tasks this.props.tasks)
      cond (> @props.tasks.size 1)
        div ({} (:style $ @styleControl))
          div ({} (:style $ @styleClear) (:onClick @onTodoReset)) :clear
        , undefined
      cond @state.showRecorder
        this.renderRecorder
        , undefined
