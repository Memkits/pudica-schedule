
(ns client.comp.task
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]))

(def style-done {:width 32, :height 32, :background-color (hsl 120 80 60)})

(def style-delete {:width 32, :height 32, :background-color (hsl 0 80 80)})

(defn on-input [idx] (fn [e dispatch!] (dispatch! :task/edit [idx (:value e)])))

(defn on-delete [idx] (fn [e dispatch!] (dispatch! :task/delete idx)))

(def style-task {:position :absolute})

(def comp-task
  (create-comp
   :task
   (fn [task idx]
     (fn [state mutate!]
       (div
        {:style (merge ui/row style-task {:top (str (+ 8 (* idx 40)) "px")})}
        (div {:style style-done})
        (comp-space 8 nil)
        (input
         {:style ui/input,
          :attrs {:value (:text task), :placeholder "Task content"},
          :event {:input (on-input idx)}})
        (comp-space 8 nil)
        (div {:style style-delete, :event {:click (on-delete idx)}}))))))
