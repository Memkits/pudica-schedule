
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |bisection-key/
    :version |0.0.1
  :entries $ {}
  :files $ {}
    |app.comp.task $ {}
      :ns $ quote
        ns app.comp.task $ :require
          respo-ui.core :refer $ hsl
          respo-ui.core :as ui
          respo.core :refer $ defcomp div span input <> defeffect
          respo.comp.space :refer $ =<
          clojure.string :as string
          app.util.dom :refer $ get-width
          app.config :refer $ demo?
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (task idx focused? dragging-id dropping-id)
            [] (effect-in)
              div
                {}
                  :style $ merge ui/row style-task
                    {}
                      :top $ str (* idx 49) |px
                      :cursor :move
                    if (:done? task)
                      {} $ :opacity 0.5
                    if
                      = dropping-id $ :id task
                      {} (:opacity 0.5) (:transform "\"translate(2px,4px)") (:z-index 900)
                        :outline $ str "\"2px solid " (hsl 0 0 86)
                    if
                      = dragging-id $ :id task
                      {} (:z-index 999) (:opacity 0.1) (:transform "\"translate(-2px,-4px)")
                  :draggable true
                  :on-dragstart $ fn (e d!)
                    let
                        event $ :event e
                      -> event .-dataTransfer $ .!setData |text (:id task)
                      -> event .-dataTransfer $ .!setDragImage (js/document.querySelector |.transparent) 0 0
                      d! :mark/dragging $ :id task
                  :on-dragend $ fn (e d!) (d! :mark/dragging nil) (d! :mark/dropping nil)
                  :on-dragenter $ fn (e d!)
                    d! :mark/dropping $ :id task
                  :on-dragover $ fn (e d!)
                    -> e :event $ .!preventDefault
                  :on-drop $ fn (e d!)
                    let
                        event $ :event e
                      if
                        not= dragging-id $ :id task
                        do $ d! :task/move
                          [] dragging-id $ :id task
                div $ {}
                  :style $ merge style-done
                    if (:done? task)
                      {} $ :transform "|scale(0.7)"
                  :on-click $ fn (e d!)
                    d! :task/toggle $ :id task
                =< 8 nil
                input $ {}
                  :value $ :text task
                  :placeholder |task...
                  :id $ str |input- idx
                  :style $ merge ui/input style-text
                    let
                        text-width $ get-width (:text task) |Hind 16
                      {} $ :width (+ 16 text-width)
                  :on-input $ fn (e d!)
                    d! :task/edit $ [] (:id task) (:value e)
                  :on-keydown $ on-keydown (:id task) (:text task) idx
                  :on-click $ fn (e d!) (d! :pointer/touch idx)
                <> (:sort-id task)
                  merge
                    {} $ :color (hsl 0 0 40 0.1)
                    if demo? $ {}
                      :color $ hsl 0 0 0 0.4
                      :font-size 16
                      :font-family ui/font-code
        |on-keydown $ quote
          defn on-keydown (task-id text idx)
            fn (e dispatch!)
              let
                  event $ :event e
                  shift? $ .-shiftKey event
                  meta? $ .-metaKey event
                  code $ :keycode e
                cond
                    and shift? $ = 13 code
                    if
                      not $ .blank? text
                      dispatch! :task/add-before task-id
                  (and (.blank? text) (and (or shift? meta?) (= 8 code)))
                    dispatch! :task/delete $ [] task-id idx
                  (and (not shift?) (= 13 code))
                    if
                      not $ .blank? text
                      dispatch! :task/add-after task-id
                  (and (= 38 code))
                    do (dispatch! :pointer/before) (.preventDefault event)
                  (and (= 40 code))
                    do (dispatch! :pointer/after) (.preventDefault event)
                  (and shift? (= 9 code))
                    do (.preventDefault event) (dispatch! :pointer/before nil)
                  (and (not shift?) (= 9 code))
                    do (.preventDefault event) (dispatch! :pointer/after nil)
        |style-done $ quote
          def style-done $ {} (:width 20) (:height 20)
            :background-color $ hsl 240 90 88 0.3
            :cursor :pointer
            :transition-duration |300ms
            :border-radius "\"50%"
        |style-task $ quote
          def style-task $ {} (:position :absolute) (:padding "|0 16px") (:transition-duration |300ms) (:transition-property |top,transform,outline) (:align-items :center) (:transform-origin "|8% 50%")
            :background-color $ hsl 0 0 100
            :min-width 720
            :cursor :move
            :border-radius "\"6px"
            :box-shadow $ str "\"0 0 2px " (hsl 0 0 80 0.1)
        |style-text $ quote
          def style-text $ {} (:width 600) (:background-color :transparent)
            :color $ hsl 0 0 20
            :font-size 16
            :font-family |Hind
            :font-weight 300
            :padding "|0 4px"
            :line-height |48px
            :height 48
            :min-width 48
            :border :none
        |effect-in $ quote
          defeffect effect-in () (action el at-place?)
            when (= :mount action)
              -> el .-style .-opacity $ set! 0
              -> el .-style .-transform $ set! "\"translate(8px,0px)"
              js/setTimeout
                fn ()
                  -> el .-style .-opacity $ set! 1
                  -> el .-style .-transform $ set! "\"translate(0px,0px)"
                , 10
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp action-> <> div span button a
          [] respo.comp.space :refer $ [] =<
          [] app.comp.todolist :refer $ [] comp-todolist
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] app.style :as style
          [] app.config :as config
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
              div
                {} $ :style
                  merge ui/global ui/fullscreen $ {} (:background-position "|left top") (:color :white) (:overflow :auto) (:padding "|160px 200px")
                comp-todolist (:tasks store) (:pointer store) (:dragging-id store) (:dropping-id store)
                div
                  {} $ :style
                    {} (:position :fixed) (:bottom 0) (:left 16)
                  a $ {} (:inner-text |Relax)
                    :style $ merge style/link
                    :on-click $ fn (e d!) (d! :task/relax nil)
                  =< 8 nil
                  a $ {} (:inner-text |Review)
                    :style $ merge style/link
                    :on-click $ fn (e d!)
                      let
                          w $ js/window.open
                            if config/dev? "\"http://localhost:3000" $ str js/location.origin "\"/Memkits/pudica-schedule-viewer/"
                        js/setTimeout
                          fn () $ .!postMessage w (format-cirru-edn store) "\"*"
                          , 800
                comp-transparent
                when config/dev? $ comp-inspect "\"Store" store nil
        |on-clear $ quote
          defn on-clear (e dispatch!) (dispatch! :task/clear nil)
        |comp-transparent $ quote
          defcomp comp-transparent () $ span
            {} (:class-name |transparent)
              :style $ {} (:width 1) (:height 1) (:background-color |red) (:display :inline-block)
    |app.schema $ {}
      :ns $ quote
        ns app.schema $ :require
          [] bisection-key.core :refer $ [] mid-id
      :defs $ {}
        |task $ quote
          def task $ {} (:id nil) (:text |) (:done? false) (:sort-id nil) (:created-time nil) (:done-time nil) (:archived-time nil)
        |store $ quote
          def store $ {}
            :tasks $ {}
              "\"root" $ merge task
                {} (:id |root) (:text |) (:sort-id mid-id)
            :pointer 0
            :dragging-id nil
            :dropping-id nil
            :states $ {}
            :archives $ {}
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require ([] app.schema :as schema)
          [] respo.cursor :refer $ [] update-states
          [] bisection-key.core :refer $ [] bisect max-id min-id mid-id
      :defs $ {}
        |relax-tasks $ quote
          defn relax-tasks (store op-id op-time)
            let
                done-tasks $ -> (:tasks store)
                  filter $ fn (pair)
                    let[] (task-id task) pair $ and (:done? task)
                      not $ .blank? (:text task)
                  map $ fn (pair)
                    let[] (task-id task) pair $ [] task-id (assoc task :archived-time op-time)
              -> store
                update :tasks $ fn (tasks)
                  let
                      next-tasks $ -> tasks
                        filter $ fn (pair)
                          not $ :done? (last pair)
                    if (empty? next-tasks)
                      assoc ({}) op-id $ merge schema/task
                        {} (:id op-id) (:created-time op-time) (:sort-id mid-id)
                      , next-tasks
                update :archives $ fn (archives) (merge archives done-tasks)
                assoc :pointer 0
        |delete-task $ quote
          defn delete-task (store op-data)
            let-sugar
                  [] task-id idx
                  , op-data
              if
                = 1 $ count (:tasks store)
                , store $ -> store
                  update :tasks $ fn (tasks) (dissoc tasks task-id)
                  update :pointer $ fn (pointer)
                    if (= 0 idx) 0 $ dec pointer
        |add-after $ quote
          defn add-after (store task-id op-id op-time)
            let
                base-task $ get-in store ([] :tasks task-id)
                base-sort-id $ :sort-id base-task
                all-sort-ids $ -> (:tasks store) (.to-list) (map last)
                  map $ fn (x) (:sort-id x)
                  sort &compare
                sort-id-after $ first
                  filter all-sort-ids $ fn (x) (> x base-sort-id)
                new-sort-id $ bisect (or base-sort-id mid-id) (or sort-id-after max-id)
                new-task $ merge schema/task
                  {} (:id op-id) (:sort-id new-sort-id) (:created-time op-time)
              -> store
                assoc-in ([] :tasks op-id) new-task
                update :pointer inc
        |swap-tasks $ quote
          defn swap-tasks (store op-data)
            let-sugar
                  [] from-id to-id new-pointer
                  , op-data
              -> store (assoc :pointer new-pointer)
                update :tasks $ fn (tasks)
                  -> tasks
                    assoc-in ([] from-id :sort-id)
                      get-in tasks $ [] to-id :sort-id
                    assoc-in ([] to-id :sort-id)
                      get-in tasks $ [] from-id :sort-id
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :task/add-before $ add-before store op-data op-id op-time
              :task/add-after $ add-after store op-data op-id op-time
              :task/edit $ let-sugar
                    [] task-id text
                    , op-data
                assoc-in store ([] :tasks task-id :text) text
              :task/toggle $ update-in store ([] :tasks op-data)
                fn (task)
                  if (:done? task) (assoc task :done? false)
                    -> task (assoc :done? true) (assoc :done-time op-time)
              :task/relax $ relax-tasks store op-id op-time
              :task/delete $ delete-task store op-data
              :task/move $ move-task store op-data
              :task/swap $ swap-tasks store op-data
              :pointer/touch $ assoc store :pointer op-data
              :pointer/before $ if
                = 0 $ :pointer store
                , store (update store :pointer dec)
              :pointer/after $ if
                = (:pointer store)
                  dec $ count (:tasks store)
                , store (update store :pointer inc)
              :mark/dragging $ assoc store :dragging-id op-data
              :mark/dropping $ assoc store :dropping-id op-data
              :hydrate-storage op-data
        |move-task $ quote
          defn move-task (store op-data)
            let-sugar
                  [] from-id to-id
                  , op-data
                tasks $ :tasks store
                before? $ >
                  get-in tasks $ [] from-id :sort-id
                  get-in tasks $ [] to-id :sort-id
                from-task $ get tasks from-id
                to-task $ get tasks to-id
                base-sort-id $ :sort-id to-task
                all-sort-ids $ -> (:tasks store) (vals)
                  map $ fn (x) (:sort-id x)
                new-sort-id $ if before?
                  bisect
                    or
                      -> all-sort-ids (.to-list)
                        filter $ fn (x) (< x base-sort-id)
                        sort &compare
                        last
                      , min-id
                    , base-sort-id
                  bisect base-sort-id $ or
                    -> all-sort-ids (.to-list)
                      filter $ fn (x) (> x base-sort-id)
                      sort &compare
                      first
                    , max-id
                new-pointer $ ->
                  &exclude all-sort-ids $ :sort-id from-task
                  .to-list
                  conj new-sort-id
                  sort &compare
                  .index-of new-sort-id
              -> store
                assoc-in ([] :tasks from-id :sort-id) new-sort-id
                assoc :pointer new-pointer
        |add-before $ quote
          defn add-before (store task-id op-id op-time)
            let
                base-task $ get-in store ([] :tasks task-id)
                base-sort-id $ :sort-id base-task
                all-sort-ids $ -> (:tasks store) (.to-list) (map last)
                  map $ fn (x) (:sort-id x)
                  sort &compare
                sort-id-before $ last
                  filter all-sort-ids $ fn (x) (< x base-sort-id)
                new-sort-id $ bisect (or sort-id-before min-id) base-sort-id
                new-task $ merge schema/task
                  {} (:id op-id) (:sort-id new-sort-id) (:created-time op-time)
              -> store $ assoc-in ([] :tasks op-id) new-task
    |app.comp.todolist $ {}
      :ns $ quote
        ns app.comp.todolist $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp div button list->
          [] respo.comp.space :refer $ [] =<
          [] app.comp.task :refer $ [] comp-task
          [] clojure.string :as string
      :defs $ {}
        |comp-todolist $ quote
          defcomp comp-todolist (tasks pointer dragging-id dropping-id)
            div
              {} $ :style
                {} (:position :relative)
                  :height $ * 40 (count tasks)
              div
                {} $ :style
                  {} (:position :relative)
                    :height $ str
                      + 8 $ * 40 (count tasks)
                      , |px
                list-> ({})
                  -> tasks (.to-list)
                    .sort-by $ fn (pair)
                      let[] (task-id task) pair $ :sort-id task
                    map-indexed $ fn (idx pair)
                      let[] (task-id task) pair $ [] task-id
                        let
                            pointed? $ = pointer idx
                          comp-task task idx pointed? dragging-id dropping-id
                    .sort-by first
                div $ {}
                  :style $ {}
                    :top $ str
                      + 2 $ * 49 pointer
                      , |px
                    :left -20
                    :width 8
                    :height 40
                    :background-color $ hsl 30 90 80
                    :position :absolute
                    :transition |600ms
                    :border-radius "\"4px"
    |app.style $ {}
      :ns $ quote
        ns app.style $ :require ([] respo-ui.core :as ui)
      :defs $ {}
        |link $ quote
          def link $ merge ui/link
            {} $ :margin "\"0 8px"
    |app.util.dom $ {}
      :ns $ quote (ns app.util.dom)
      :defs $ {}
        |get-width $ quote
          defn get-width (text font-family font-size)
            if (exists? js/document)
              let
                  ctx $ .!getContext @*canvas-element |2d
                set! (.-font ctx) (str font-size "|px " font-family)
                .-width $ .measureText ctx text
              , 0
        |*canvas-element $ quote
          defatom *canvas-element $ if (exists? js/document) (js/document.createElement |canvas) nil
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] cljs.reader :refer $ [] read-string
          [] app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! (? e)
            .setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            if config/dev? $ load-console-formatter!
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            add-watch *reel :focus $ fn (r p) (adjust-focus!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload persist-storage!
            repeat! 60 persist-storage!
            let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |adjust-focus! $ quote
          defn adjust-focus! () $ js/setTimeout
            fn () $ let
                pointer $ :pointer (:store @*reel)
                maybe-input $ js/document.getElementById (str |input- pointer)
              ; println "|Focus to:" pointer maybe-input
              if
                and (some? maybe-input)
                  not $ identical? maybe-input (.-activeElement js/document)
                .!focus maybe-input
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/pudica-schedule/") (:cdn-folder "\"tiye.me:cdn/pudica-schedule") (:title "\"Pudica") (:icon "\"http://cdn.tiye.me/logo/pudica.png") (:storage-key "\"pudica-schedule") (:upload-folder "\"tiye.me:repo/Memkits/pudica-schedule/")
        |demo? $ quote
          def demo? $ = "\"true" (get-env "\"demo")
