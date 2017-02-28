
(ns client.comp.task
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [clojure.string :as string]))

(def style-done {:width 32, :height 32, :background-color (hsl 120 80 60)})

(defn on-input [idx] (fn [e dispatch!] (dispatch! :task/edit [idx (:value e)])))

(def style-task {:position :absolute, :background-color (hsl 0 0 0 0.8), :padding "8px"})

(defn on-blur [cleared? idx] (fn [e dispatch!] (if cleared? (dispatch! :task/delete idx))))

(defn on-pick [task-id] (fn [e dispatch!] (println "Task id:" task-id)))

(defn on-release [task-id] (fn [e dispatch!] (println "Release:" task-id)))

(def comp-task
  (create-comp
   :task
   (fn [task idx]
     (fn [state mutate!]
       (div
        {:style (merge ui/row style-task {:top (str (+ 8 (* idx 48)) "px")}),
         :event {:pointerdown (on-pick (:id task)), :pointerup (on-release (:id task))}}
        (div {:style style-done})
        (comp-space 8 nil)
        (input
         {:style ui/input,
          :attrs {:value (:text task), :placeholder "Task content"},
          :event {:input (on-input idx), :blur (on-blur (string/blank? (:text task)) idx)}}))))))
