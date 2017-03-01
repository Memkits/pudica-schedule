
(ns client.comp.todolist
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span input button]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [client.comp.task :refer [comp-task]]
            [clojure.string :as string]))

(def style-container {:min-height 100, :min-width 400, :padding 16})

(def style-list {:position :relative})

(def comp-todolist
  (create-comp
   :todolist
   (fn [tasks]
     (fn [state mutate!]
       (div
        {:style style-container}
        (div
         {:style (merge style-list {:height (str (+ 8 (* 40 (count tasks))) "px")})}
         (->> tasks
              (map-indexed (fn [idx task] [(:id task) (comp-task task idx)]))
              (sort-by first))))))))
