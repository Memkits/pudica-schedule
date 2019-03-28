
(ns app.comp.todolist
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp div button list->]]
            [respo.comp.space :refer [=<]]
            [app.comp.task :refer [comp-task]]
            [clojure.string :as string]))

(defcomp
 comp-todolist
 (tasks pointer dragging-id dropping-id)
 (div
  {:style {:position :relative, :height (* 40 (count tasks))}}
  (div
   {:style {:position :relative, :height (str (+ 8 (* 40 (count tasks))) "px")}}
   (list->
    :div
    {}
    (->> tasks
         (sort-by (fn [[task-id task]] (:sort-id task)))
         (map-indexed
          (fn [idx [task-id task]]
            [task-id
             (let [pointed? (= pointer idx)]
               (comp-task task idx pointed? dragging-id dropping-id))]))
         (sort-by first)))
   (div
    {:style {:top (str (+ 8 (* 48 pointer)) "px"),
             :left -20,
             :width 6,
             :height 32,
             :background-color (hsl 0 90 80),
             :position :absolute,
             :transition "600ms"}}))))
