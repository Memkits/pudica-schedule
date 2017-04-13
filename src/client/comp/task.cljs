
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
   :transform-origin "8% 50%"})

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

(defn on-keydown [text idx]
  (fn [e dispatch!]
    (let [event (:original-event e), shift? (.-shiftKey event)]
      (cond
        (and shift? (= 13 (:key-code e)))
          (if (not (string/blank? text)) (dispatch! :task/add-before idx))
        (and (not shift?) (= 13 (:key-code e)))
          (if (not (string/blank? text)) (dispatch! :task/add-after idx))
        (and shift? (= 9 (:key-code e)))
          (do (.preventDefault event) (dispatch! :pointer/before nil))
        (and (not shift?) (= 9 (:key-code e)))
          (do (.preventDefault event) (dispatch! :pointer/after nil))))))

(def comp-task
  (create-comp
   :task
   (fn [task idx focused? shift]
     (fn [state mutate!]
       (div
        {:style (merge
                 ui/row
                 style-task
                 {:top (str (- (* idx 44) shift) "px")}
                 (if (:done? task) {:margin-left 32, :opacity 0.5})
                 (if focused? {:transform "scale(1.1)"})
                 (if (and focused? (not (zero? shift))) {:transition-duration "0ms"})),
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
                  :keydown (on-keydown (:text task) idx),
                  :click (on-touch idx)}}))))))
