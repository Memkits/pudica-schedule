
var
  React $ require :react
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

  :onClick $ \ ()
    actions.reset

  :onCommit $ \ ()
    actions.internalCommit

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

  :render $ \ ()

    div (object (:className :app-layout))
      div
        object (:className :title)
        span
          object (:onClick this.onClick) (:className :reset)
          , :Tasks:
      AppList $ object (:tasks this.props.tasks)
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
