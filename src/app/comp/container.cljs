
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros :refer [defcomp <> div span button]]
            [respo.comp.space :refer [=<]]
            [app.comp.todolist :refer [comp-todolist]]
            [respo.comp.inspect :refer [comp-inspect]]))

(defn on-clear [e dispatch!] (dispatch! :task/clear nil))

(def style-clear
  {:position :fixed,
   :bottom 0,
   :left 0,
   :background-color :transparent,
   :color (hsl 0 0 10 0.2)})

(def style-container {:background-position "left top", :color :white, :overflow :hidden})

(defcomp
 comp-container
 (store)
 (div
  {:style (merge ui/global ui/fullscreen style-container)}
  (comp-todolist (:tasks store) (:pointer store))
  (button {:inner-text "Clear", :style (merge ui/button style-clear), :on-click on-clear})
  (button
   {:inner-text "Shorten",
    :style (merge ui/button style-clear {:left 60}),
    :on-click (fn [e d! m!] (d! :task/shorten nil))})
  (comp-inspect "tasks" (:tasks store) nil)))
