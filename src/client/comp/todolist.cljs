
(ns client.comp.todolist
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span input button]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]
            [client.comp.task :refer [comp-task]]
            [clojure.string :as string]))

(def style-container {:min-height 100, :min-width 400, :padding 16})

(defn on-input [mutate!] (fn [e dispatch!] (mutate! :draft (:value e))))

(defn init-state [& args] {:draft ""})

(defn update-state [state op op-data] (assoc state op op-data))

(defn on-add [draft mutate!]
  (fn [e dispatch!]
    (if (not (string/blank? draft)) (dispatch! :task/add draft))
    (mutate! :draft "")))

(def style-list {:position :relative})

(def comp-todolist
  (create-comp
   :todolist
   init-state
   update-state
   (fn [tasks]
     (fn [state mutate!]
       (div
        {:style style-container}
        (div
         {:style (merge ui/row)}
         (input
          {:style ui/input,
           :attrs {:value (:draft state), :placeholder "Add task here..."},
           :event {:input (on-input mutate!)}})
         (div {} (comp-text (:draft state) nil))
         (button
          {:style ui/button,
           :attrs {:inner-text "Add"},
           :event {:click (on-add (:draft state) mutate!)}}))
        (div
         {:style (merge style-list {:height (str (+ 8 (* 40 (count tasks))) "px")})}
         (->> tasks (map-indexed (fn [idx task] [(:id task) (comp-task task idx)])))))))))
