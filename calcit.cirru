
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |bisection-key/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'LocationOriginHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait LocationOriginHost (:origin 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'WindowOpenHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait WindowOpenHost
            .open! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/WindowOpenHost 'String
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :open! |open
          :schema $ :: 'Trait
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ assert-type (&map:get reel :store) 'app.schema/Store
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen
                  :style $ merge $ {} (:background-position "|left top") (:overflow :auto) (:padding "|160px 200px") (; :color :white)
                comp-todolist (:tasks store) (:pointer store) (:dragging-id store) (:dropping-id store)
                div
                  {} $ :style $ {} (:position :fixed) (:bottom 0) (:left 16)
                  a $ {} (:inner-text |Ease)
                    :class-name $ str-spaced css/link css/font-fancy
                    :on-click $ fn (e d!)
                      d! $ :: :task/relax
                  =< 8 &unit
                  a $ {} (:inner-text |Review)
                    :class-name $ str-spaced css/link css/font-fancy
                    :on-click $ fn (e d!) (open-reviewer! store)
                comp-transparent
                when config/dev? $ comp-inspect |Store store &unit
                when config/dev? $ comp-reel (&map:get reel :states) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'T
            :generics $ [] 'T
        'comp-transparent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-transparent ()
            span $ {} (:class-name |transparent)
              :style $ {} (:width 1) (:height 1) (:background-color |red) (:display :inline-block)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'open-reviewer! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn open-reviewer! (store)
            let
                host-window $ unsafe-coerce js/window WindowOpenHost
                location $ unsafe-coerce js/location LocationOriginHost
                url $ if config/dev? |http://localhost:3000 $ str (.-origin location) |/Memkits/pudica-schedule-viewer/
              browser/storage-set! |pudica-schedule-viewer $ format-cirru-edn store
              host-window .open! url
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Store
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp action-> <> div span button a
            respo.comp.space :refer $ =<
            js-ffi.browser :as browser
            app.comp.todolist :refer $ comp-todolist
            respo.comp.inspect :refer $ comp-inspect
            app.style :as style
            app.config :as config
            reel.comp.reel :refer $ comp-reel
    'app.comp.task $ %{} 'FileEntry
      :defs $ {}
        'DataTransferHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DataTransferHost
            .set-data! $ :: 'Fn $ {}
              :args $ [] 'app.comp.task/DataTransferHost 'String 'String
              :return 'Unit
            .set-drag-image! $ :: 'Fn $ {}
              :args $ [] 'app.comp.task/DataTransferHost 'app.comp.task/ElementHost 'Number 'Number
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:set-data! |setData) (:set-drag-image! |setDragImage)
          :schema $ :: 'Trait
        'ElementHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ElementHost (:style 'app.comp.task/StyleHost) (:parent-node 'app.comp.task/ElementHost)
            .clone-node $ :: 'Fn $ {}
              :args $ [] 'app.comp.task/ElementHost 'Bool
              :return 'app.comp.task/ElementHost
            .append-child! $ :: 'Fn $ {}
              :args $ [] 'app.comp.task/ElementHost 'app.comp.task/ElementHost
              :return 'app.comp.task/ElementHost
            .remove! $ :: 'Fn $ {}
              :args $ [] 'app.comp.task/ElementHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:append-child! |appendChild) (:clone-node |cloneNode) (:parent-node |parentNode) (:remove! |remove)
          :schema $ :: 'Trait
        'InteractionEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait InteractionEventHost (:shift-key? 'Bool) (:ctrl-key? 'Bool) (:meta-key? 'Bool) (:data-transfer 'app.comp.task/DataTransferHost)
            .prevent-default! $ :: 'Fn $ {}
              :args $ [] 'app.comp.task/InteractionEventHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:ctrl-key? |ctrlKey) (:data-transfer |dataTransfer) (:meta-key? |metaKey) (:prevent-default! |preventDefault) (:shift-key? |shiftKey)
          :schema $ :: 'Trait
        'KeyInfo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct KeyInfo (:shift? 'Bool) (:ctrl? 'Bool) (:meta? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'StyleHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StyleHost (:opacity 'Number) (:transform 'String) (:z-index 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :z-index |zIndex
            :writable $ #{} :opacity :transform :z-index
          :schema $ :: 'Trait
        'begin-drag! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn begin-drag! (e task-id)
            let
                event $ event-host e
                data-transfer $ .-data-transfer event
              data-transfer .set-data! |text task-id
              set-transparent-drag-image! data-transfer
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.schema/RespoEvent 'String
            :features $ #{} :js-ffi
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (task idx focused? dragging-id dropping-id)
            []
              effect-in $ :done? task
              div
                {}
                  :class-name $ str-spaced css/row css-task
                  :style $ merge
                    assert-type
                      {} $ :top $ str (* idx 49) |px
                      :: 'Map 'Tag 'Dynamic
                    assert-type
                      if (:done? task)
                        {} $ :opacity 0.5
                        {}
                      :: 'Map 'Tag 'Dynamic
                    assert-type
                      if
                        = dropping-id $ :id task
                        {} (:opacity 0.8) (:transform "|translate(2px,4px)") (:z-index 900)
                          :outline $ str "|2px solid " $ hsl 0 0 86
                        {}
                      :: 'Map 'Tag 'Dynamic
                    assert-type
                      if
                        = dragging-id $ :id task
                        {} (:z-index 999) (:opacity 0.5) (:transform "|translate(-2px,-4px)")
                        {}
                      :: 'Map 'Tag 'Dynamic
                  :draggable true
                  :on $ {}
                    :dragstart $ fn (e d!)
                      begin-drag! e $ :id task
                      d! :mark/dragging $ :id task
                    :dragend $ fn (e d!) (d! :mark/dragging |) (d! :mark/dropping |)
                    :dragenter $ fn (e d!)
                      d! :mark/dropping $ :id task
                    :dragover $ fn (e d!) (prevent-default! e)
                    :drop $ fn (e d!)
                      if
                        not= dragging-id $ :id task
                        do $ d! $ :: :task/move dragging-id (:id task)
                div $ {} (:class-name css-done)
                  :style $ if (:done? task)
                    {} $ :transform "|scale(0.7)"
                  :on-click $ fn (e d!)
                    d! :task/toggle $ :id task
                =< 8 &unit
                input $ {}
                  :value $ :text task
                  :placeholder |task...
                  :id $ str |input- idx
                  :spellcheck false
                  :class-name $ str-spaced css/input css-text
                  :style $ let
                      text-width $ get-width (:text task) |Hind 16
                    {} $ :width $ + 16 text-width
                  :on-input $ fn (e d!)
                    d! $ :: :task/edit (:id task) (&map:get e :value)
                  :on-keydown $ on-keydown (:id task) (:text task) idx
                  :on-click $ fn (e d!) (d! :pointer/touch idx)
                <> (:sort-id task)
                  merge
                    assert-type
                      {} $ :color $ hsl 0 0 40 (%some 0.1)
                      :: 'Map 'Tag 'Dynamic
                    assert-type
                      if demo?
                        {}
                          :color $ hsl 0 0 0 $ %some 0.4
                          :font-size 16
                          :font-family ui/font-code
                        {}
                      :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Task 'Number 'Bool 'String 'String
        'css-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-done
            {} $ |$0 $ {} (:width 20) (:height 20)
              :background-color $ hsl 240 90 88 $ %some 0.3
              :cursor :pointer
              :transition-duration |300ms
              :border-radius |50%
          :examples $ []
          :schema $ :: 'String
        'css-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-task
            {}
              |$0 $ {} (:position :absolute) (:padding "|0 16px") (:transition-duration |300ms) (:transition-property |top,transform,outline,opacity,box-shadow) (:align-items :center) (:transform-origin "|8% 50%")
                :background-color $ hsl 0 0 100
                :min-width 720
                :cursor :move
                :border-radius |2px
                :box-shadow $ str "|0 0 2px " $ hsl 0 0 80 (%some 0.1)
                :cursor :move
              |$0:hover $ {}
                :box-shadow $ str "|2px 2px 8px " $ hsl 0 0 40 (%some 0.2)
                :z-index 999
          :examples $ []
          :schema $ :: 'String
        'css-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-text
            {}
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
        'effect-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-in (done?) (action el at-place?)
            case-default action &unit
              :mount $ let
                  element $ unsafe-coerce el ElementHost
                  style $ .-style element
                set! (.-opacity style) 0
                set! (.-transform style) "|translate(8px,0px)"
                browser/set-timeout!
                  fn () $ let
                      next-style $ .-style element
                    set! (.-opacity next-style) (if done? 0.5 1)
                    set! (.-transform next-style) "|translate(0px,0px)"
                    , &unit
                  , 10
                , &unit
              :unmount $ let
                  element $ unsafe-coerce el ElementHost
                  e2 $ element .clone-node true
                  p $ .-parent-node element
                p .append-child! e2
                browser/set-timeout!
                  fn () $ let
                      style $ .-style e2
                    set! (.-opacity style) 0
                    set! (.-transform style) "|translate(8px,0px)"
                    set! (.-z-index style) -1
                    , &unit
                  , 10
                browser/set-timeout!
                  fn () (e2 .remove!) &unit
                  , 300
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'Bool
            :features $ #{} :js-ffi
        'event-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-host (e)
            unsafe-coerce (:original-event e) InteractionEventHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.task/InteractionEventHost)
            :args $ [] 'respo.schema/RespoEvent
            :features $ #{} :js-ffi
        'event-key-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-key-info (e)
            let
                event $ event-host e
              %{} KeyInfo
                :shift? $ .-shift-key? event
                :ctrl? $ .-ctrl-key? event
                :meta? $ .-meta-key? event
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.task/KeyInfo)
            :args $ [] 'respo.schema/RespoEvent
            :features $ #{} :js-ffi
        'on-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-keydown (task-id text idx)
            fn (e dispatch!)
              let
                  key-info $ event-key-info e
                  shift? $ :shift? key-info
                  ctrl? $ :ctrl? key-info
                  meta? $ :meta? key-info
                  code $ &map:get e :key-code
                cond
                    and shift? $ = 13 code
                    if
                      not $ blank? text
                      dispatch! :task/add-before task-id
                  (and (blank? text) (and (or shift? meta?) (= 8 code)))
                    dispatch! $ :: :task/delete task-id idx
                  (and (not shift?) (= 13 code))
                    if
                      not $ blank? text
                      dispatch! :task/add-after task-id
                  (and meta? ctrl? (= 38 code))
                    do (dispatch! :task/move-up task-id) (prevent-default! e)
                  (and (= 38 code))
                    do
                      dispatch! $ :: :pointer/before
                      prevent-default! e
                  (and meta? ctrl? (= 40 code))
                    do (dispatch! :task/move-down task-id) (prevent-default! e)
                  (and (= 40 code))
                    do
                      dispatch! $ :: :pointer/after
                      prevent-default! e
                  (and shift? (= 9 code))
                    do (prevent-default! e)
                      dispatch! $ :: :pointer/before
                  (and (not shift?) (= 9 code))
                    do (prevent-default! e)
                      dispatch! $ :: :pointer/after
                  true &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String 'String 'Number
            :features $ #{} :js-ffi
        'prevent-default! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prevent-default! (e)
            let
                event $ event-host e
              event .prevent-default!
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.schema/RespoEvent
            :features $ #{} :js-ffi
        'set-transparent-drag-image! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn set-transparent-drag-image! (data-transfer)
            match (browser/query-selector |.transparent)
              (:none) &unit
              (:some transparent)
                data-transfer .set-drag-image! (unsafe-coerce transparent ElementHost) 0 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.comp.task/DataTransferHost
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.task
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp div span input <> defeffect
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
            js-ffi.browser :as browser
            app.util.dom :refer $ get-width
            app.config :refer $ demo?
    'app.comp.todolist $ %{} 'FileEntry
      :defs $ {}
        'comp-todolist $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-todolist (tasks pointer dragging-id dropping-id)
            div
              {} $ :style $ {} (:position :relative)
                :height $ * 40 $ count tasks
              div
                {} $ :style $ {} (:position :relative)
                  :height $ str
                    + 8 $ * 40 $ count tasks
                    , |px
                list-> ({})
                  -> tasks (&map:to-list)
                    sort $ fn (a b)
                      &compare
                        &map:get
                          option:unwrap $ last a
                          , :sort-id
                        &map:get
                          option:unwrap $ last b
                          , :sort-id
                    map-indexed $ fn (idx pair)
                      let[] (task-id task) pair $ [] task-id $ let
                          pointed? $ = pointer idx
                        comp-task task idx pointed? dragging-id dropping-id
                    sort $ fn (a b)
                      &compare
                        option:unwrap $ first a
                        option:unwrap $ first b
                div $ {} (:class-name css-cursor)
                  :style $ {} $ :top
                    str
                      + 2 $ * 49 pointer
                      , |px
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'String 'app.schema/Task) 'Number 'String 'String
        'css-cursor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-cursor
            {} $ |$0 $ {} (:left -20) (:width 8) (:height 40)
              :background-color $ hsl 30 90 80
              :position :absolute
              :transition |600ms
              :border-radius |4px
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.todolist
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp div button list->
            respo.css :refer $ defstyle
            [] respo.comp.space :refer $ [] =<
            [] app.comp.task :refer $ [] comp-task
            [] clojure.string :as string
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'demo? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def demo?
            = |true $ option:unwrap-or (get-env |demo) |false
          :examples $ []
          :schema $ :: 'Bool
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:title |Pudica) (:icon |http://cdn.tiye.me/logo/pudica.png) (:storage-key |pudica-schedule)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'adjust-focus! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn adjust-focus! () (browser/set-timeout! adjust-focus-now! 0) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'adjust-focus-now! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn adjust-focus-now! ()
            let
                store $ assert-type (&map:get @*reel :store) 'app.schema/Store
                pointer $ :pointer store
              match
                browser/query-selector $ str |#input- pointer
                (:none) &unit
                (:some input) (browser/element-focus! input)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            add-watch *reel :focus $ fn (r p) (adjust-focus!)
            listen-devtools! |k dispatch!
            browser/set-before-unload! persist-on-unload!
            browser/set-interval! persist-storage! 60000
            browser/add-event-listener! |visibilitychange persist-when-hidden!
            match
              browser/storage-get $ &map:get config/site :storage-key
              (:none) &unit
              (:some raw)
                dispatch! $ :: :hydrate-storage $ parse-store raw
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (query-mount-target)
          :examples $ []
          :schema $ :: 'JsNullish 'respo.dom/DomElement
        'parse-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-store (raw)
            unsafe-coerce (parse-cirru-edn raw) 'app.schema/Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'persist-on-unload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-on-unload! (_event) (persist-storage!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'js-ffi.browser/EventHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! (& e)
            browser/storage-set! (&map:get config/site :storage-key)
              format-cirru-edn $ &map:get @*reel :store
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
            :rest $ :: 'JsNullish 'JsObject
        'persist-when-hidden! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-when-hidden! (_event)
            match (browser/visibility-state)
              (:visible) &unit
              _ $ persist-storage!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'js-ffi.browser/EventHost
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ assert-type (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.main :refer $ [] query-mount-target
            js-ffi.browser :as browser
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :task/add-before 'String
            :task/add-after 'String
            :task/edit 'String 'String
            :task/toggle 'String
            :task/relax
            :task/delete 'String 'Number
            :task/move 'String 'String
            :task/move-up 'String
            :task/move-down 'String
            :task/swap 'String 'String 'Number
            :pointer/touch 'Number
            :pointer/before
            :pointer/after
            :mark/dragging 'String
            :mark/dropping 'String
            :hydrate-storage 'app.schema/Store
          :examples $ []
          :schema $ :: 'Enum
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :tasks $ :: 'Map 'String 'app.schema/Task
            :pointer 'Number
            :dragging-id 'String
            :dropping-id 'String
            :states $ :: 'Map 'Tag 'Dynamic
            :archives $ :: 'Map 'String 'app.schema/Task
          :examples $ []
          :schema $ :: 'StructDef
        'Task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Task (:id 'String) (:text 'String) (:done? 'Bool) (:sort-id 'String) (:created-time 'Number)
            :done-time $ :: 'Option 'Number
            :archived-time $ :: 'Option 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            %{} Store
              :tasks $ {} $ |root
                -> task (assoc :id |root) (assoc :sort-id mid-id)
              :pointer 0
              :dragging-id |
              :dropping-id |
              :states $ {}
              :archives $ {}
          :examples $ []
          :schema $ :: 'app.schema/Store
        'task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def task
            %{} Task (:id |) (:text |) (:done? false) (:sort-id mid-id) (:created-time 0)
              :done-time $ %none
              :archived-time $ %none
          :examples $ []
          :schema $ :: 'app.schema/Task
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ [] bisection-key.core :refer $ [] mid-id
    'app.style $ %{} 'FileEntry
      :defs $ {} $ 'link
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            merge ui/link $ {} $ :margin "|0 8px"
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require $ [] respo-ui.core :as ui
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'add-after $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-after (store task-id op-id op-time)
            let
                tasks $ :tasks store
                base-task $ assert-type (&map:get tasks task-id) 'app.schema/Task
                base-sort-id $ :sort-id base-task
                all-sort-ids $ -> tasks (vals) (&set:to-list)
                  map $ fn (task)
                    :sort-id $ assert-type task 'app.schema/Task
                  sort &compare
                sort-id-after $ option:unwrap-or
                  first $ filter all-sort-ids $ fn (x)
                    > (&compare x base-sort-id) 0
                  , max-id
                new-sort-id $ bisect base-sort-id sort-id-after
                new-task $ -> schema/task (assoc :id op-id) (assoc :sort-id new-sort-id) (assoc :created-time op-time)
                next-tasks $ assoc tasks op-id new-task
              -> store (assoc :tasks next-tasks)
                assoc :pointer $ inc $ :pointer store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String 'String 'Number
        'add-before $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-before (store task-id op-id op-time)
            let
                tasks $ :tasks store
                base-task $ assert-type (&map:get tasks task-id) 'app.schema/Task
                base-sort-id $ :sort-id base-task
                all-sort-ids $ -> tasks (vals) (&set:to-list)
                  map $ fn (task)
                    :sort-id $ assert-type task 'app.schema/Task
                  sort &compare
                sort-id-before $ option:unwrap-or
                  last $ filter all-sort-ids $ fn (x)
                    < (&compare x base-sort-id) 0
                  , min-id
                new-sort-id $ bisect sort-id-before base-sort-id
                new-task $ -> schema/task (assoc :id op-id) (assoc :sort-id new-sort-id) (assoc :created-time op-time)
                next-tasks $ assoc tasks op-id new-task
              assoc store :tasks next-tasks
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String 'String 'Number
        'delete-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn delete-task (store task-id idx)
            if
              = 1 $ count $ :tasks store
              , store $ let
                  next-pointer $ if (= 0 idx) 0 $ dec (:pointer store)
                  next-tasks $ dissoc (:tasks store) task-id
                -> store (assoc :tasks next-tasks) (assoc :pointer next-pointer)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String 'Number
        'move-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-task (store from-id to-id)
            let-sugar
                tasks $ :tasks store
                from-task $ assert-type (&map:get tasks from-id) 'app.schema/Task
                to-task $ assert-type (&map:get tasks to-id) 'app.schema/Task
                from-sort-id $ :sort-id from-task
                base-sort-id $ :sort-id to-task
                before? $ > (&compare from-sort-id base-sort-id) 0
                all-sort-ids $ -> tasks (vals) (&set:to-list)
                  map $ fn (task)
                    :sort-id $ assert-type task 'app.schema/Task
                smaller-sort-ids $ -> all-sort-ids
                  filter $ fn (x)
                    < (&compare x base-sort-id) 0
                  sort &compare
                greater-sort-ids $ -> all-sort-ids
                  filter $ fn (x)
                    > (&compare x base-sort-id) 0
                  sort &compare
                new-sort-id $ if before?
                  bisect
                    option:unwrap-or (last smaller-sort-ids) min-id
                    , base-sort-id
                  bisect base-sort-id $ option:unwrap-or (first greater-sort-ids) max-id
                new-pointer $ option:unwrap $ index-of
                  -> all-sort-ids
                    filter $ fn (x) (not= x from-sort-id)
                    conj new-sort-id
                    sort &compare
                  , new-sort-id
                next-task $ assoc from-task :sort-id new-sort-id
                next-tasks $ assoc tasks from-id next-task
              -> store (assoc :tasks next-tasks) (assoc :pointer new-pointer)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String 'String
        'move-task-down $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-task-down (store from-id)
            let-sugar
                tasks $ :tasks store
                from-task $ assert-type (&map:get tasks from-id) 'app.schema/Task
                sorted-pairs $ -> tasks (vals) (&set:to-list)
                  map $ fn (task)
                    let
                        typed-task $ assert-type task 'app.schema/Task
                      [] (:sort-id typed-task) (:id typed-task)
                  sort $ fn (a b)
                    &compare
                      assert-type (&list:nth a 0) 'String
                      assert-type (&list:nth b 0) 'String
                current-index $ :pointer store
              if
                = (inc current-index) (count tasks)
                , store $ let
                    target-pair $ option:unwrap $ nth sorted-pairs (inc current-index)
                    new-sort-id $ assert-type (&list:nth target-pair 0) 'String
                    target-id $ assert-type (&list:nth target-pair 1) 'String
                    target-task $ assert-type (&map:get tasks target-id) 'app.schema/Task
                    next-tasks $ -> tasks
                      assoc from-id $ assoc from-task :sort-id new-sort-id
                      assoc target-id $ assoc target-task :sort-id $ :sort-id from-task
                  -> store (assoc :tasks next-tasks)
                    assoc :pointer $ inc current-index
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String
        'move-task-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-task-up (store from-id)
            let-sugar
                tasks $ :tasks store
                from-task $ assert-type (&map:get tasks from-id) 'app.schema/Task
                sorted-pairs $ -> tasks (vals) (&set:to-list)
                  map $ fn (task)
                    let
                        typed-task $ assert-type task 'app.schema/Task
                      [] (:sort-id typed-task) (:id typed-task)
                  sort $ fn (a b)
                    &compare
                      assert-type (&list:nth a 0) 'String
                      assert-type (&list:nth b 0) 'String
                current-index $ :pointer store
              if (= 0 current-index) store $ let
                  target-pair $ option:unwrap $ nth sorted-pairs (dec current-index)
                  new-sort-id $ assert-type (&list:nth target-pair 0) 'String
                  target-id $ assert-type (&list:nth target-pair 1) 'String
                  target-task $ assert-type (&map:get tasks target-id) 'app.schema/Task
                  next-tasks $ -> tasks
                    assoc from-id $ assoc from-task :sort-id new-sort-id
                    assoc target-id $ assoc target-task :sort-id $ :sort-id from-task
                -> store (assoc :tasks next-tasks)
                  assoc :pointer $ dec current-index
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String
        'relax-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn relax-tasks (store op-id op-time)
            let
                tasks $ :tasks store
                done-tasks $ assert-type
                  -> tasks
                    filter $ fn (pair)
                      let
                          task $ assert-type (&list:nth pair 1) 'app.schema/Task
                        and (:done? task)
                          not $ blank? $ :text task
                    map $ fn (pair)
                      let
                          task-id $ assert-type (&list:nth pair 0) 'String
                          task $ assert-type (&list:nth pair 1) 'app.schema/Task
                          archived-task $ %{} schema/Task
                            :id $ :id task
                            :text $ :text task
                            :done? $ :done? task
                            :sort-id $ :sort-id task
                            :created-time $ :created-time task
                            :done-time $ :done-time task
                            :archived-time $ %some op-time
                        [] task-id archived-task
                  :: 'Map 'String 'app.schema/Task
                next-tasks $ assert-type
                  filter tasks $ fn (pair)
                    let
                        task $ assert-type (&list:nth pair 1) 'app.schema/Task
                      not $ :done? task
                  :: 'Map 'String 'app.schema/Task
                ensured-tasks $ if (empty? next-tasks)
                  assoc ({}) op-id $ -> schema/task (assoc :id op-id) (assoc :created-time op-time) (assoc :sort-id mid-id)
                  , next-tasks
              -> store (assoc :tasks ensured-tasks)
                assoc :archives $ merge (:archives store) done-tasks
                assoc :pointer 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String 'Number
        'swap-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn swap-tasks (store from-id to-id new-pointer)
            let
                tasks $ :tasks store
                from-task $ assert-type (&map:get tasks from-id) 'app.schema/Task
                to-task $ assert-type (&map:get tasks to-id) 'app.schema/Task
                next-tasks $ -> tasks
                  assoc from-id $ assoc from-task :sort-id $ :sort-id to-task
                  assoc to-id $ assoc to-task :sort-id $ :sort-id from-task
              -> store (assoc :tasks next-tasks) (assoc :pointer new-pointer)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'String 'String 'Number
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assert-type (update-states store cursor s) 'app.schema/Store
              (:task/add-before data) (add-before store data op-id op-time)
              (:task/add-after data) (add-after store data op-id op-time)
              (:task/edit task-id text)
                let
                    tasks $ :tasks store
                    task $ assert-type (&map:get tasks task-id) 'app.schema/Task
                  assoc store :tasks $ assoc tasks task-id $ assoc task :text text
              (:task/toggle task-id)
                let
                    tasks $ :tasks store
                    task $ assert-type (&map:get tasks task-id) 'app.schema/Task
                    next-task $ if (:done? task) (assoc task :done? false)
                      %{} schema/Task
                        :id $ :id task
                        :text $ :text task
                        :done? true
                        :sort-id $ :sort-id task
                        :created-time $ :created-time task
                        :done-time $ %some op-time
                        :archived-time $ :archived-time task
                  assoc store :tasks $ assoc tasks task-id next-task
              (:task/relax) (relax-tasks store op-id op-time)
              (:task/delete task-id idx) (delete-task store task-id idx)
              (:task/move from-id to-id) (move-task store from-id to-id)
              (:task/move-up id) (move-task-up store id)
              (:task/move-down id) (move-task-down store id)
              (:task/swap from-id to-id new-pointer) (swap-tasks store from-id to-id new-pointer)
              (:pointer/touch id) (assoc store :pointer id)
              (:pointer/before)
                if
                  = 0 $ :pointer store
                  , store $ assoc store :pointer $ dec (:pointer store)
              (:pointer/after)
                if
                  = (:pointer store)
                    dec $ count $ :tasks store
                  , store $ assoc store :pointer $ inc (:pointer store)
              (:mark/dragging data) (assoc store :dragging-id data)
              (:mark/dropping data) (assoc store :dropping-id data)
              (:hydrate-storage data) data
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.schema :as schema)
            respo.cursor :refer $ [] update-states
            bisection-key.core :refer $ [] bisect max-id min-id mid-id
    'app.util.dom $ %{} 'FileEntry
      :defs $ {}
        '*canvas-element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *canvas-element (create-canvas)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.util.dom/CanvasHost
        'CanvasContextHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CanvasContextHost (:font 'String)
            .measure-text $ :: 'Fn $ {}
              :args $ [] 'app.util.dom/CanvasContextHost 'String
              :return 'app.util.dom/TextMetricsHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :measure-text |measureText
            :writable $ #{} :font
          :schema $ :: 'Trait
        'CanvasHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CanvasHost
            .get-context $ :: 'Fn $ {}
              :args $ [] 'app.util.dom/CanvasHost 'String
              :return 'app.util.dom/CanvasContextHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :get-context |getContext
          :schema $ :: 'Trait
        'TextMetricsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait TextMetricsHost (:width 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'create-canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-canvas ()
            if (browser/document-available?)
              %some $ unsafe-coerce (browser/create-element |canvas) CanvasHost
              %none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'Option 'app.util.dom/CanvasHost
        'get-width $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-width (text font-family font-size)
            match @*canvas-element
              (:none) 0
              (:some canvas)
                let
                    ctx $ canvas .get-context |2d
                  set! (.-font ctx) (str font-size "|px " font-family)
                  .-width $ ctx .measure-text text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'String 'String 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util.dom
          :require $ js-ffi.browser :as browser
