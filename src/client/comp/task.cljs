
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
   :padding "0 8px",
   :transition-duration "400ms",
   :align-items :center,
   :transform-origin "12% 50%"})

(defn on-touch [idx] (fn [e dispatch!] (dispatch! :pointer/touch idx)))

(def style-done
  {:width 16,
   :height 16,
   :background-color (hsl 200 90 80 0.8),
   :cursor :pointer,
   :transition-duration "300ms",
   :border-radius "50%",
   :box-shadow (str "0 0 4px " (hsl 0 0 0 0.3))})

(defn on-toggle [idx] (fn [e dispatch!] (dispatch! :task/toggle idx)))

(defn on-blur [cleared? idx] (fn [e dispatch!] (if cleared? (dispatch! :task/delete idx))))

(def style-text
  {:width 480,
   :background-color :transparent,
   :color :white,
   :font-size 16,
   :font-family "Hind",
   :font-weight 300,
   :padding "0 4px",
   :line-height "16px"})

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
   (fn [task idx focused?]
     (fn [state mutate!]
       (div
        {:style (merge
                 ui/row
                 style-task
                 {:top (str (+ 8 (* idx 48)) "px")}
                 (if (:done? task) {:margin-left 32, :opacity 0.5})
                 (if focused? {:transform "scale(1.1)"})),
         :event {}}
        (div
         {:style (merge style-done (if (:done? task) {:transform "scale(0.8)"})),
          :event {:click (on-toggle idx)}})
        (comp-space 8 nil)
        (input
         {:style (merge ui/input style-text),
          :attrs {:value (:text task), :placeholder "Task content", :id (str "input-" idx)},
          :event {:input (on-input idx),
                  :blur (on-blur (string/blank? (:text task)) idx),
                  :keydown (on-keydown idx),
                  :click (on-touch idx)}}))))))
