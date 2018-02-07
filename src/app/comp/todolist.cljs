
(ns app.comp.todolist
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros :refer [defcomp div button list->]]
            [respo.comp.space :refer [=<]]
            [app.comp.task :refer [comp-task]]
            [clojure.string :as string]))

(def style-container {:min-height 100, :min-width 400, :position :relative})

(def style-list {:position :relative, :margin-top 120, :margin-left 240})

(defcomp
 comp-todolist
 (tasks pointer)
 (div
  {:style style-container}
  (div
   {:style (merge style-list {:height (str (+ 8 (* 40 (count tasks))) "px")})}
   (list->
    :div
    {}
    (->> tasks
         (sort-by (fn [[task-id task]] (:sort-id task)))
         (map-indexed
          (fn [idx [task-id task]]
            [task-id (let [pointed? (= pointer idx)] (comp-task task idx pointed?))]))
         (sort-by first)))
   (div
    {:style {:top (str (+ 2 (* 44 pointer)) "px"),
             :left -20,
             :width 6,
             :height 30,
             :background-color (hsl 0 90 80),
             :position :absolute,
             :transition "600ms"}}))))
