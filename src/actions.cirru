
var
  shortid $ require :shortid
  recorder $ require :actions-recorder

= exports.insert $ \ (id atBefore)
  recorder.dispatch :insert $ {}
    :id id
    :atBefore atBefore
    :newId (shortid.generate)

= exports.update $ \ (id text)
  recorder.dispatch :update $ {}
    :id id
    :text text

= exports.delete $ \ (id)
  recorder.dispatch :delete $ {}
    :id id

= exports.toggle $ \ (id)
  recorder.dispatch :toggle $ {}
    :id id

= exports.reset $ \ ()
  recorder.dispatch :reset $ {}

= exports.swap $ \ (id1 id2)
  recorder.dispatch :swap $ {}
    :id1 id1
    :id2 id2

= exports.internalCommit $ \ ()
  recorder.dispatch :actions-recorder/commit

= exports.internalReset $ \ ()
  recorder.dispatch :actions-recorder/reset

= exports.internalPeek $ \ (position)
  recorder.dispatch :actions-recorder/peek position

= exports.internalRun $ \ ()
  recorder.dispatch :actions-recorder/run

= exports.internalMergeBefore $ \ ()
  recorder.dispatch :actions-recorder/merge-before

= exports.internalClearAfter $ \ ()
  recorder.dispatch :actions-recorder/clear-after
