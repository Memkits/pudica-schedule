
(ns app.comp.todolist
  (:require-macros [respo.macros :refer [defcomp div button]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.core :refer [create-comp]]
            [respo.comp.space :refer [=<]]
            [app.comp.task :refer [comp-task]]
            [clojure.string :as string]
            [app.manager :refer [do-wheel!]]))

(def style-container {:min-height 100, :min-width 400})

(def style-list {:position :relative, :margin-top 120, :margin-left 240})

(defn on-scroll [e dispatch!]
  (let [event (:original-event e)]
    (.preventDefault event)
    (do-wheel! (.-deltaY event) dispatch!)))

(defcomp
 comp-todolist
 (tasks pointer shift)
 (div
  {:style style-container}
  (div
   {:style (merge style-list {:height (str (+ 8 (* 40 (count tasks))) "px")}),
    :on {:wheel on-scroll}}
   (->> tasks
        (map-indexed
         (fn [idx task]
           [(:id task)
            (let [pointed? (= pointer idx)]
              (comp-task task idx pointed? (if pointed? shift 0)))]))
        (sort-by first)))))