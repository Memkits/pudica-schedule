
(ns client.comp.task
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [clojure.string :as string]))

(defn on-input [idx] (fn [e dispatch!] (dispatch! :task/edit [idx (:value e)])))

(def style-task
  {:position :absolute,
   :background-color (hsl 0 0 0 0.8),
   :padding "8px",
   :transition-duration "300ms"})

(defn on-pick [task-id] (fn [e dispatch!] (println "Task id:" task-id)))

(defn on-release [task-id] (fn [e dispatch!] (println "Release:" task-id)))

(def style-done
  {:width 32, :height 32, :background-color (hsl 120 80 60), :cursor :pointer})

(defn on-toggle [idx] (fn [e dispatch!] (dispatch! :task/toggle idx)))

(defn on-blur [cleared? idx] (fn [e dispatch!] (if cleared? (dispatch! :task/delete idx))))

(def style-text {:width 320})

(defn on-keydown [idx]
  (fn [e dispatch!]
    (if (= 13 (:key-code e))
      (let [event (:original-event e)]
        (if (.-shiftKey event)
          (dispatch! :task/add-before idx)
          (dispatch! :task/add-after idx))))))

(def comp-task
  (create-comp
   :task
   (fn [task idx]
     (fn [state mutate!]
       (println "Task" task)
       (div
        {:style (merge
                 ui/row
                 style-task
                 {:top (str (+ 8 (* idx 48)) "px")}
                 (if (:done? task) {:margin-left 32})),
         :event {:pointerdown (on-pick (:id task)), :pointerup (on-release (:id task))}}
        (div
         {:style (merge style-done (if (:done? task) {:background-color (hsl 120 80 30)})),
          :event {:click (on-toggle idx)}})
        (comp-space 8 nil)
        (input
         {:style (merge ui/input style-text),
          :attrs {:value (:text task), :placeholder "Task content"},
          :event {:input (on-input idx),
                  :blur (on-blur (string/blank? (:text task)) idx),
                  :keydown (on-keydown idx)}}))))))
