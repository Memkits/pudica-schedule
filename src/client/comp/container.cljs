
(ns client.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span button]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [client.comp.todolist :refer [comp-todolist]]))

(def style-container
  {:background-image "url(\"sky.jpg\")",
   :background-size :cover,
   :background-position "left top",
   :color :white,
   :overflow :hidden})

(def style-clear
  {:position :fixed,
   :bottom 0,
   :left 0,
   :background-color :transparent,
   :color (hsl 0 0 100 0.2)})

(defn on-clear [e dispatch!] (dispatch! :task/clear nil))

(def comp-container
  (create-comp
   :container
   (fn [store]
     (fn [cursor]
       (div
        {:style (merge ui/global ui/fullscreen style-container)}
        (comp-todolist (:tasks store) (:pointer store) (:shift store))
        (button
         {:style (merge ui/button style-clear),
          :attrs {:inner-text "Clear"},
          :event {:click on-clear}}))))))
