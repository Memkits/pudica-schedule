
(ns app.comp.task
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros :refer [action-> defcomp div span input <>]]
            [respo.comp.space :refer [=<]]
            [clojure.string :as string]
            [keycode.core :as keycode]
            [app.util.dom :refer [get-width]]))

(defn on-keydown [task-id text idx]
  (fn [e dispatch! mutate!]
    (let [event (:event e)
          shift? (.-shiftKey event)
          meta? (.-metaKey event)
          code (:keycode e)]
      (cond
        (and shift? (= keycode/return code))
          (if (not (string/blank? text)) (dispatch! :task/add-before task-id))
        (and (string/blank? text) (and (or shift? meta?) (= keycode/back-space code)))
          (dispatch! :task/delete [task-id idx])
        (and (not shift?) (= keycode/return code))
          (if (not (string/blank? text)) (dispatch! :task/add-after task-id))
        (and (= keycode/up code)) (do (dispatch! :pointer/before) (.preventDefault event))
        (and (= keycode/down code)) (do (dispatch! :pointer/after) (.preventDefault event))
        (and shift? (= keycode/tab code))
          (do (.preventDefault event) (dispatch! :pointer/before nil))
        (and (not shift?) (= keycode/tab code))
          (do (.preventDefault event) (dispatch! :pointer/after nil))))))

(def style-done
  {:width 16,
   :height 16,
   :background-color (hsl 240 90 88 0.3),
   :cursor :pointer,
   :transition-duration "300ms"})

(def style-task
  {:position :absolute,
   :padding "0 16px",
   :transition-duration "300ms",
   :transition-property "top",
   :align-items :center,
   :transform-origin "8% 50%",
   :background-color (hsl 0 0 94),
   :min-width 600,
   :cursor :move})

(def style-text
  {:width 600,
   :background-color :transparent,
   :color (hsl 0 0 20),
   :font-size 16,
   :font-family "Hind",
   :font-weight 300,
   :padding "0 4px",
   :line-height "48px",
   :height 48,
   :min-width 48})

(defcomp
 comp-task
 (task idx focused? dragging-id dropping-id)
 (div
  {:style (merge
           ui/row
           style-task
           {:top (str (* idx 48) "px"), :cursor :move}
           (if (:done? task) {:opacity 0.4})
           (if (= dropping-id (:id task)) {:opacity 0.7})
           (if (= dragging-id (:id task)) {:z-index 999, :opacity 0.4})),
   :draggable true,
   :on-dragstart (fn [e d! m!]
     (let [event (:event e)]
       (-> event .-dataTransfer (.setData "text" (:id task)))
       (-> event
           .-dataTransfer
           (.setDragImage (.querySelector js/document ".transparent") 0 0))
       (d! :mark/dragging (:id task)))),
   :on-dragend (fn [e d! m!] (d! :mark/dragging nil) (d! :mark/dropping nil)),
   :on-dragenter (action-> :mark/dropping (:id task)),
   :on-dragover (fn [e d! m!] (-> e :event (.preventDefault))),
   :on-drop (fn [e d! m!]
     (let [event (:event e)]
       (if (not= dragging-id (:id task)) (do (d! :task/move [dragging-id (:id task)])))))}
  (div
   {:style (merge style-done (if (:done? task) {:transform "scale(0.7)"})),
    :on-click (action-> :task/toggle (:id task))})
  (=< 8 nil)
  (input
   {:value (:text task),
    :placeholder "task...",
    :id (str "input-" idx),
    :style (merge
            ui/input
            style-text
            (let [text-width (get-width (:text task) "Hind" 16)] {:width (+ 16 text-width)})),
    :on-input (action-> :task/edit [(:id task) (:value %e)]),
    :on-keydown (on-keydown (:id task) (:text task) idx),
    :on-click (action-> :pointer/touch idx)})))
