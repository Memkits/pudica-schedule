
(ns client.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [client.comp.todolist :refer [comp-todolist]]))

(def style-container
  {:background-image "url(\"sky.jpg\")",
   :background-size :cover,
   :background-position "left top",
   :color :white,
   :overflow :hidden})

(def comp-container
  (create-comp
   :container
   (fn [store]
     (fn [state mutate!]
       (div
        {:style (merge ui/global ui/fullscreen style-container)}
        (comp-todolist (:tasks store) (:pointer store)))))))
