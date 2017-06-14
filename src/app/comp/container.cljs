
(ns app.comp.container
  (:require-macros (respo.macros :refer (defcomp)))
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [div span button]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [app.comp.todolist :refer [comp-todolist]]))

(def style-container {:background-position "left top", :color :white, :overflow :hidden})

(def style-clear
  {:position :fixed,
   :bottom 0,
   :left 0,
   :background-color :transparent,
   :color (hsl 0 0 100 0.2)})

(defn on-clear [e dispatch!] (dispatch! :task/clear nil))

(defcomp
 comp-container
 (store)
 (div
  {:style (merge ui/global ui/fullscreen style-container)}
  (comp-todolist (:tasks store) (:pointer store) (:shift store))
  (button
   {:inner-text "Clear", :style (merge ui/button style-clear), :event {:click on-clear}})))
