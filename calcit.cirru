
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |bisection-key/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    |app.comp.container $ %{} 'FileEntry
      :defs $ {}
        |comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ &map:get reel :store
                div
                  {}
                    :class-name $ str-spaced css/global css/fullscreen
                    :style $ merge
                      {} (:background-position "|left top") (:overflow :auto) (:padding "|160px 200px") (; :color :white)
                  comp-todolist (&map:get store :tasks) (&map:get store :pointer) (&map:get store :dragging-id) (&map:get store :dropping-id)
                  div
                    {} $ :style
                      {} (:position :fixed) (:bottom 0) (:left 16)
                    a $ {} (:inner-text |Ease)
                      :class-name $ str-spaced css/link css/font-fancy
                      :on-click $ fn (e d!)
                        d! $ :: :task/relax
                    =< 8 nil
                    a $ {} (:inner-text |Review)
                      :class-name $ str-spaced css/link css/font-fancy
                      :on-click $ fn (e d!)
                        let
                            raw $ format-cirru-edn store
                          js/localStorage.setItem |pudica-schedule-viewer raw
                          js/window.open $ if config/dev? |http://localhost:3000 (str js/location.origin |/Memkits/pudica-schedule-viewer/)
                  comp-transparent
                  when config/dev? $ comp-inspect |Store store nil
                  when config/dev? $ comp-reel (&map:get reel :states) reel ({})
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'T
              :generics $ [] 'T
        |comp-transparent $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-transparent () $ span
              {} (:class-name |transparent)
                :style $ {} (:width 1) (:height 1) (:background-color |red) (:display :inline-block)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ []
        |on-clear $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-clear (e dispatch!) (dispatch! :task/clear nil)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'respo.schema/RespoEvent 'Fn
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp action-> <> div span button a
            respo.comp.space :refer $ =<
            app.comp.todolist :refer $ comp-todolist
            respo.comp.inspect :refer $ comp-inspect
            app.style :as style
            app.config :as config
            reel.comp.reel :refer $ comp-reel
    |app.comp.task $ %{} 'FileEntry
      :defs $ {}
        |comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (task idx focused? dragging-id dropping-id)
              []
                effect-in $ &map:get task :done?
                div
                  {}
                    :class-name $ str-spaced css/row css-task
                    :style $ merge
                      {} $ :top
                        str (* idx 49) |px
                      if (&map:get task :done?)
                        {} $ :opacity 0.5
                      if
                        = dropping-id $ &map:get task :id
                        {} (:opacity 0.8) (:transform "|translate(2px,4px)") (:z-index 900)
                          :outline $ str "|2px solid " (hsl 0 0 86)
                      if
                        = dragging-id $ &map:get task :id
                        {} (:z-index 999) (:opacity 0.5) (:transform "|translate(-2px,-4px)")
                    :draggable true
                    :on $ {}
                      :dragstart $ fn (e d!)
                        let
                            event $ unsafe-coerce (&map:get e :original-event) JsObject
                            data-transfer $ unsafe-coerce (.-dataTransfer event) JsObject
                          .!setData data-transfer |text $ &map:get task :id
                          .!setDragImage data-transfer (js/document.querySelector |.transparent) 0 0
                          d! :mark/dragging $ &map:get task :id
                      :dragend $ fn (e d!)
                        d! $ :: :mark/dragging
                        d! $ :: :mark/dropping
                      :dragenter $ fn (e d!)
                        d! :mark/dropping $ &map:get task :id
                      :dragover $ fn (e d!)
                        ->
                          unsafe-coerce (&map:get e :original-event) JsObject
                          .!preventDefault
                      :drop $ fn (e d!)
                        if
                          not= dragging-id $ &map:get task :id
                          do $ d! :task/move
                            [] dragging-id $ &map:get task :id
                  div $ {} (:class-name css-done)
                    :style $ if (&map:get task :done?)
                      {} $ :transform "|scale(0.7)"
                    :on-click $ fn (e d!)
                      d! :task/toggle $ &map:get task :id
                  =< 8 nil
                  input $ {}
                    :value $ &map:get task :text
                    :placeholder |task...
                    :id $ str |input- idx
                    :spellcheck false
                    :class-name $ str-spaced css/input css-text
                    :style $ let
                        text-width $ get-width (&map:get task :text) |Hind 16
                      {} $ :width (+ 16 text-width)
                    :on-input $ fn (e d!)
                      d! $ :: :task/edit (&map:get task :id) (&map:get e :value)
                    :on-keydown $ on-keydown (&map:get task :id) (&map:get task :text) idx
                    :on-click $ fn (e d!) (d! :pointer/touch idx)
                  <> (&map:get task :sort-id)
                    merge
                      {} $ :color (hsl 0 0 40 0.1)
                      if demo? $ {}
                        :color $ hsl 0 0 0 0.4
                        :font-size 16
                        :font-family ui/font-code
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'Number 'Bool 'String 'String
              :features $ #{} :js-ffi
        |css-done $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-done $ {}
              |$0 $ {} (:width 20) (:height 20)
                :background-color $ hsl 240 90 88 0.3
                :cursor :pointer
                :transition-duration |300ms
                :border-radius |50%
          :examples $ []
          :schema $ :: 'String
        |css-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-task $ {}
              |$0 $ {} (:position :absolute) (:padding "|0 16px") (:transition-duration |300ms) (:transition-property |top,transform,outline,opacity,box-shadow) (:align-items :center) (:transform-origin "|8% 50%")
                :background-color $ hsl 0 0 100
                :min-width 720
                :cursor :move
                :border-radius |2px
                :box-shadow $ str "|0 0 2px " (hsl 0 0 80 0.1)
                :cursor :move
              |$0:hover $ {}
                :box-shadow $ str "|2px 2px 8px " (hsl 0 0 40 0.2)
                :z-index 999
          :examples $ []
          :schema $ :: 'String
        |css-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-text $ {}
              |$0 $ {} (:width 600) (:background-color :transparent)
                :color $ hsl 0 0 20
                :font-size 16
                :font-family |Hind
                :font-weight 300
                :padding "|0 4px"
                :line-height |48px
                :height 48
                :min-width 48
                :border :none
              |$0:focus $ {} (:box-shadow :none) (:border :none)
          :examples $ []
          :schema $ :: 'String
        |effect-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-in (done?) (action el at-place?)
              case-default action nil
                :mount $ let
                    element $ unsafe-coerce el JsObject
                    style $ unsafe-coerce (.-style element) JsObject
                  set! (.-opacity style) 0
                  set! (.-transform style) "|translate(8px,0px)"
                  js/setTimeout
                    fn () $ let
                        style $ unsafe-coerce (.-style element) JsObject
                      set! (.-opacity style) (if done? 0.5 1)
                      set! (.-transform style) "|translate(0px,0px)"
                    , 10
                :unmount $ let
                    element $ unsafe-coerce el JsObject
                    e2 $ unsafe-coerce (.!cloneNode element true) JsObject
                    p $ unsafe-coerce (.-parentNode element) JsObject
                  .!appendChild p $ unsafe-coerce e2 JsObject
                  js/setTimeout
                    fn () $ let
                        style $ unsafe-coerce (.-style e2) JsObject
                      set! (.-opacity style) 0
                      set! (.-transform style) "|translate(8px,0px)"
                      set! (.-zIndex style) -1
                    , 10
                  js/setTimeout
                    fn () $ .!remove (unsafe-coerce e2 JsObject)
                    , 300
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'Bool
              :features $ #{} :js-ffi
        |on-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-keydown (task-id text idx)
              fn (e dispatch!)
                let
                    event $ unsafe-coerce (&map:get e :original-event) JsObject
                    shift? $ unsafe-coerce (.-shiftKey event) Bool
                    ctrl? $ unsafe-coerce (.-ctrlKey event) Bool
                    meta? $ unsafe-coerce (.-metaKey event) Bool
                    code $ &map:get e :key-code
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
                    (and meta? ctrl? (= 38 code))
                      do (dispatch! :task/move-up task-id) (.!preventDefault event)
                    (and (= 38 code))
                      do
                        dispatch! $ :: :pointer/before
                        .!preventDefault event
                    (and meta? ctrl? (= 40 code))
                      do (dispatch! :task/move-down task-id) (.!preventDefault event)
                    (and (= 40 code))
                      do
                        dispatch! $ :: :pointer/after
                        .!preventDefault event
                    (and shift? (= 9 code))
                      do (.preventDefault event)
                        dispatch! $ :: :pointer/before
                    (and (not shift?) (= 9 code))
                      do (.preventDefault event)
                        dispatch! $ :: :pointer/after
                    true nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/EventHandler)
              :args $ [] 'String 'String 'Number
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.task $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp div span input <> defeffect
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
            app.util.dom :refer $ get-width
            app.config :refer $ demo?
    |app.comp.todolist $ %{} 'FileEntry
      :defs $ {}
        |comp-todolist $ %{} 'CodeEntry (:doc |)
          :code $ quote
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
                        let[] (task-id task) pair $ &map:get task :sort-id
                      map-indexed $ fn (idx pair)
                        let[] (task-id task) pair $ [] task-id
                          let
                              pointed? $ = pointer idx
                            comp-task task idx pointed? dragging-id dropping-id
                      .sort-by first
                  div $ {} (:class-name css-cursor)
                    :style $ {}
                      :top $ str
                        + 2 $ * 49 pointer
                        , |px
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ []
                :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                , 'Number 'String 'String
        |css-cursor $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-cursor $ {}
              |$0 $ {} (:left -20) (:width 8) (:height 40)
                :background-color $ hsl 30 90 80
                :position :absolute
                :transition |600ms
                :border-radius |4px
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.todolist $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp div button list->
            respo.css :refer $ defstyle
            [] respo.comp.space :refer $ [] =<
            [] app.comp.task :refer $ [] comp-task
            [] clojure.string :as string
    |app.config $ %{} 'FileEntry
      :defs $ {}
        |demo? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def demo? $ = |true
              option:unwrap-or (get-env |demo) |false
          :examples $ []
          :schema $ :: 'Bool
        |dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        |site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:title |Pudica) (:icon |http://cdn.tiye.me/logo/pudica.png) (:storage-key |pudica-schedule)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} 'FileEntry
      :defs $ {}
        |*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref
        |adjust-focus! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn adjust-focus! () $ do
              js/setTimeout $ fn ()
                let
                    pointer $ &map:get (&map:get @*reel :store) :pointer
                    maybe-input $ js/document.getElementById (str |input- pointer)
                  ; println "|Focus to:" pointer maybe-input
                  if
                    and (js-present? maybe-input)
                      not $ identical? maybe-input
                        unsafe-coerce
                          .-activeElement $ unsafe-coerce js/document JsObject
                          , JsObject
                    .!focus $ unsafe-coerce maybe-input JsObject
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ println |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              add-watch *reel :changes $ fn (r p) (render-app!)
              add-watch *reel :focus $ fn (r p) (adjust-focus!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload persist-storage!
              flipped js/setInterval 60000 persist-storage!
              js/window.addEventListener |visibilitychange $ fn (_)
                if (not= |visible js/document.visibilityState) (persist-storage!)
              let
                  raw $ js/localStorage.getItem (&map:get config/site :storage-key)
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw String
              println "|App started."
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        |mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'JsNullish 'JsObject
        |persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! (& e)
              do
                println "|Saved to storage:" $ .!toISOString (new js/Date)
                js/localStorage.setItem (&map:get config/site :storage-key)
                  format-cirru-edn $ &map:get @*reel :store
                ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
              :rest $ :: 'JsNullish 'JsObject
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    |app.schema $ %{} 'FileEntry
      :defs $ {}
        |Op $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum Op (:states 'Dynamic 'Dynamic) (:task/add-before 'String) (:task/add-after 'String) (:task/edit 'String 'String) (:task/toggle 'String) (:task/relax)
              :task/delete $ :: 'List 'Dynamic
              :task/move $ :: 'List 'String
              :task/move-up 'String
              :task/move-down 'String
              :task/swap $ :: 'List 'Dynamic
              :pointer/touch 'Number
              :pointer/before
              :pointer/after
              :mark/dragging 'String
              :mark/dropping 'String
              :hydrate-storage 'Dynamic
          :examples $ []
          :schema $ :: 'Enum
        |store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :tasks $ {}
                |root $ merge task
                  {} (:id |root) (:text |) (:sort-id mid-id)
              :pointer 0
              :dragging-id |
              :dropping-id |
              :states $ {}
              :archives $ {}
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        |task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def task $ {} (:id nil) (:text |) (:done? false) (:sort-id nil) (:created-time nil) (:done-time nil) (:archived-time nil)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.schema $ :require
            [] bisection-key.core :refer $ [] mid-id
    |app.style $ %{} 'FileEntry
      :defs $ {}
        |link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def link $ merge ui/link
              {} $ :margin "|0 8px"
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require ([] respo-ui.core :as ui)
    |app.updater $ %{} 'FileEntry
      :defs $ {}
        |add-after $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn add-after (store task-id op-id op-time)
              let
                  base-task $ get-in store ([] :tasks task-id)
                  base-sort-id $ &map:get (option:unwrap base-task) :sort-id
                  all-sort-ids $ -> (&map:get store :tasks) (.to-list)
                    map $ fn (pair)
                      &map:get
                        option:unwrap $ last pair
                        , :sort-id
                    sort &compare
                  sort-id-after $ option:unwrap-or
                    first $ filter all-sort-ids
                      fn (x) (> x base-sort-id)
                    , max-id
                  new-sort-id $ bisect (or base-sort-id mid-id) sort-id-after
                  new-task $ merge schema/task
                    {} (:id op-id) (:sort-id new-sort-id) (:created-time op-time)
                -> store
                  assoc-in ([] :tasks op-id) new-task
                  update :pointer inc
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
              :return $ :: 'Map 'Tag 'Dynamic
        |add-before $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn add-before (store task-id op-id op-time)
              let
                  base-task $ get-in store ([] :tasks task-id)
                  base-sort-id $ &map:get (option:unwrap base-task) :sort-id
                  all-sort-ids $ -> (&map:get store :tasks) (.to-list)
                    map $ fn (pair)
                      &map:get
                        option:unwrap $ last pair
                        , :sort-id
                    sort &compare
                  sort-id-before $ option:unwrap-or
                    last $ filter all-sort-ids
                      fn (x) (< x base-sort-id)
                    , min-id
                  new-sort-id $ bisect sort-id-before base-sort-id
                  new-task $ merge schema/task
                    {} (:id op-id) (:sort-id new-sort-id) (:created-time op-time)
                -> store $ assoc-in ([] :tasks op-id) new-task
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
              :return $ :: 'Map 'Tag 'Dynamic
        |delete-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn delete-task (store op-data)
              let-sugar
                    [] task-id idx
                    , op-data
                if
                  = 1 $ count (&map:get store :tasks)
                  , store $ -> store
                    update :tasks $ fn (tasks) (dissoc tasks task-id)
                    update :pointer $ fn (pointer)
                      if (= 0 idx) 0 $ dec pointer
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'List 'String)
              :return $ :: 'Map 'Tag 'Dynamic
        |move-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn move-task (store op-data)
              let-sugar
                    [] from-id to-id
                    , op-data
                  tasks $ &map:get store :tasks
                  before? $ >
                    &map:get
                      option:unwrap $ get tasks from-id
                      , :sort-id
                    &map:get
                      option:unwrap $ get tasks to-id
                      , :sort-id
                  from-task $ get tasks from-id
                  to-task $ get tasks to-id
                  base-sort-id $ &map:get (option:unwrap to-task) :sort-id
                  all-sort-ids $ -> (&map:get store :tasks) (vals)
                    map $ fn (x) (&map:get x :sort-id)
                  smaller-sort-ids $ -> all-sort-ids (.to-list)
                    filter $ fn (x) (< x base-sort-id)
                    sort &compare
                  greater-sort-ids $ -> all-sort-ids (.to-list)
                    filter $ fn (x) (> x base-sort-id)
                    sort &compare
                  new-sort-id $ if before?
                    bisect
                      option:unwrap-or (last smaller-sort-ids) min-id
                      , base-sort-id
                    bisect base-sort-id $ option:unwrap-or (first greater-sort-ids) max-id
                  new-pointer $ option:unwrap
                    ->
                      &exclude all-sort-ids $ &map:get (option:unwrap from-task) :sort-id
                      .to-list
                      conj new-sort-id
                      sort &compare
                      .index-of new-sort-id
                -> store
                  assoc-in ([] :tasks from-id :sort-id) new-sort-id
                  assoc :pointer new-pointer
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'List 'String)
              :return $ :: 'Map 'Tag 'Dynamic
        |move-task-down $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn move-task-down (store op-data)
              let-sugar
                  from-id op-data
                  tasks $ &map:get store :tasks
                  from-task $ get tasks from-id
                  sorted-pairs $ -> (&map:get store :tasks) (vals)
                    map $ fn (x)
                      [] (&map:get x :sort-id) (&map:get x :id)
                    .to-list
                    .sort $ fn (a b)
                      &compare
                        option:unwrap $ first a
                        option:unwrap $ first b
                  current-index $ &map:get store :pointer
                  at-bottom? $ = (inc current-index) (count tasks)
                if at-bottom? store $ let
                    target-pair $ nth sorted-pairs (inc current-index)
                    new-sort-id $ option:unwrap
                      first $ option:unwrap target-pair
                  -> store
                    assoc-in ([] :tasks from-id :sort-id) new-sort-id
                    assoc-in
                      [] :tasks
                        option:unwrap $ last (option:unwrap target-pair)
                        , :sort-id
                      &map:get (option:unwrap from-task) :sort-id
                    update :pointer inc
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'String
              :return $ :: 'Map 'Tag 'Dynamic
        |move-task-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn move-task-up (store op-data)
              let-sugar
                  from-id op-data
                  tasks $ &map:get store :tasks
                  from-task $ get tasks from-id
                  sorted-pairs $ -> (&map:get store :tasks) (vals)
                    map $ fn (x)
                      [] (&map:get x :sort-id) (&map:get x :id)
                    .to-list
                    .sort $ fn (a b)
                      &compare
                        option:unwrap $ first a
                        option:unwrap $ first b
                  current-index $ &map:get store :pointer
                  at-head? $ = 0 current-index
                if at-head? store $ let
                    target-pair $ nth sorted-pairs (dec current-index)
                    new-sort-id $ option:unwrap
                      first $ option:unwrap target-pair
                  -> store
                    assoc-in ([] :tasks from-id :sort-id) new-sort-id
                    assoc-in
                      [] :tasks
                        option:unwrap $ last (option:unwrap target-pair)
                        , :sort-id
                      &map:get (option:unwrap from-task) :sort-id
                    update :pointer dec
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'String
              :return $ :: 'Map 'Tag 'Dynamic
        |relax-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn relax-tasks (store op-id op-time)
              let
                  done-tasks $ -> (&map:get store :tasks)
                    filter $ fn (pair)
                      let[] (task-id task) pair $ and (&map:get task :done?)
                        not $ .blank? (&map:get task :text)
                    map $ fn (pair)
                      let[] (task-id task) pair $ [] task-id (assoc task :archived-time op-time)
                -> store
                  update :tasks $ fn (tasks)
                    let
                        next-tasks $ -> tasks
                          filter $ fn (pair)
                            not $ &map:get
                              option:unwrap $ last pair
                              , :done?
                      if (empty? next-tasks)
                        assoc ({}) op-id $ merge schema/task
                          {} (:id op-id) (:created-time op-time) (:sort-id mid-id)
                        , next-tasks
                  update :archives $ fn (archives) (merge archives done-tasks)
                  assoc :pointer 0
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'Number
              :return $ :: 'Map 'Tag 'Dynamic
        |swap-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn swap-tasks (store op-data)
              let-sugar
                    [] from-id to-id new-pointer
                    , op-data
                -> store (assoc :pointer new-pointer)
                  update :tasks $ fn (tasks)
                    -> tasks
                      assoc-in ([] from-id :sort-id)
                        &map:get
                          option:unwrap $ get tasks to-id
                          , :sort-id
                      assoc-in ([] to-id :sort-id)
                        &map:get
                          option:unwrap $ get tasks from-id
                          , :sort-id
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'List 'String)
              :return $ :: 'Map 'Tag 'Dynamic
        |updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:task/add-before data) (add-before store data op-id op-time)
                (:task/add-after data) (add-after store data op-id op-time)
                (:task/edit task-id text)
                  assoc-in store ([] :tasks task-id :text) text
                (:task/toggle id)
                  update-in store ([] :tasks id)
                    fn (task)
                      if
                        &map:get (option:unwrap task) :done?
                        assoc (option:unwrap task) :done? false
                        -> (option:unwrap task) (assoc :done? true) (assoc :done-time op-time)
                (:task/relax) (relax-tasks store op-id op-time)
                (:task/delete data) (delete-task store data)
                (:task/move id) (move-task store id)
                (:task/move-up id) (move-task-up store id)
                (:task/move-down id) (move-task-down store id)
                (:task/swap data) (swap-tasks store data)
                (:pointer/touch id) (assoc store :pointer id)
                (:pointer/before)
                  if
                    = 0 $ &map:get store :pointer
                    , store $ update store :pointer dec
                (:pointer/after)
                  if
                    = (&map:get store :pointer)
                      dec $ count (&map:get store :tasks)
                    , store $ update store :pointer inc
                (:mark/dragging data) (assoc store :dragging-id data)
                (:mark/dropping data) (assoc store :dropping-id data)
                (:hydrate-storage data) data
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require (app.schema :as schema)
            respo.cursor :refer $ [] update-states
            bisection-key.core :refer $ [] bisect max-id min-id mid-id
    |app.util.dom $ %{} 'FileEntry
      :defs $ {}
        |*canvas-element $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *canvas-element $ if (exists? js/document) (js/document.createElement |canvas) nil
          :examples $ []
          :schema $ :: 'Ref (:: 'JsNullish 'JsObject)
        |get-width $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-width (text font-family font-size)
              if (exists? js/document)
                let
                    canvas $ unsafe-coerce @*canvas-element JsObject
                    ctx $ unsafe-coerce (.!getContext canvas |2d) JsObject
                  set!
                    .-font $ unsafe-coerce ctx JsObject
                    str font-size "|px " font-family
                  unsafe-coerce
                    .-width $ unsafe-coerce (.!measureText ctx text) JsObject
                    , Number
                , 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'String 'String 'Number
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.util.dom)
