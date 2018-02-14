
(ns app.comp.task
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros :refer [action-> defcomp div span input <>]]
            [respo.comp.space :refer [=<]]
            [clojure.string :as string]
            [keycode.core :as keycode]))

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
   :padding "0 8px",
   :transition-duration "300ms",
   :transition-property "top",
   :align-items :center,
   :transform-origin "8% 50%"})

(def style-text
  {:width 600,
   :background-color :transparent,
   :color (hsl 0 0 20),
   :font-size 16,
   :font-family "Hind",
   :font-weight 300,
   :padding "0 4px",
   :line-height "48px",
   :height 48})

(defcomp
 comp-task
 (task idx focused? dragging-id)
 (div
  {:style (merge
           ui/row
           style-task
           {:top (str (* idx 48) "px")}
           (if (:done? task) {:opacity 0.3})
           (if (= dragging-id (:id task)) {:opacity 0.3})),
   :draggable true,
   :on-dragstart (fn [e d! m!]
     (let [event (:event e)]
       (-> event .-dataTransfer (.setData "text" (:id task)))
       (d! :mark/dragging (:id task)))),
   :on-dragend (action-> :mark/dragging nil),
   :on-dragover (fn [e d! m!] (-> e :event (.preventDefault))),
   :on-dragenter (fn [e d! m!]
     (if (not= dragging-id (:id task)) (do (d! :task/swap [dragging-id (:id task)]))))}
  (div
   {:style (merge style-done (if (:done? task) {:transform "scale(0.7)"})),
    :on-click (action-> :task/toggle (:id task))})
  (=< 8 nil)
  (input
   {:value (:text task),
    :placeholder "Task content",
    :id (str "input-" idx),
    :style (merge ui/input style-text),
    :on-input (action-> :task/edit [(:id task) (:value %e)]),
    :on-keydown (on-keydown (:id task) (:text task) idx),
    :on-click (action-> :pointer/touch idx)})
  (<> (:sort-id task) {:color (hsl 0 0 80)})))
