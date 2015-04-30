
var
  gulp $ require :gulp
  sequence $ require :run-sequence
  exec $ . (require :child_process) :exec
  env $ object
    :dev true
    :main :http://localhost:8080/build/main.js

gulp.task :rsync $ \ (cb)
  var
    wrapper $ require :rsyncwrapper
  wrapper.rsync
    object
      :ssh true
      :src $ array :index.html :build
      :recursive true
      :args $ array :--verbose
      :dest :tiye:~/repo/workflow/
      :deleteAll true
    \ (error stdout stderr cmd)
      if (? error)
        do $ throw error
      console.error stderr
      console.log cmd
      cb

gulp.task :html $ \ (cb)
  var
    html $ require :./template
    fs $ require :fs
    assets
  if (not env.dev) $ do
    = assets $ require :./build/assets.json
    = env.main $ + :./build/ assets.main
  fs.writeFile :index.html (html env) cb

gulp.task :del $ \ (cb)
  var
    del $ require :del
  del (array :build) cb

gulp.task :webpack $ \ (cb)
  var
    command $ cond env.dev :webpack ":webpack --config webpack.min.cirru"
  exec command $ \ (err stdout stderr)
    console.log stdout
    console.log stderr
    cb err

gulp.task :build $ \ (cb)
  = env.dev false
  sequence :del :webpack :html cb
