
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros :refer [defcomp action-> <> div span button a]]
            [respo.comp.space :refer [=<]]
            [app.comp.todolist :refer [comp-todolist]]
            [respo.comp.inspect :refer [comp-inspect]]
            [app.schema :refer [dev?]]
            [app.style :as style]))

(defcomp
 comp-transparent
 ()
 (span
  {:class-name "transparent",
   :style {:width 1, :height 1, :background-color "red", :display :inline-block}}))

(defcomp
 comp-container
 (store)
 (div
  {:style (merge
           ui/global
           ui/fullscreen
           {:background-position "left top",
            :color :white,
            :overflow :auto,
            :padding "160px 200px"})}
  (comp-todolist (:tasks store) (:pointer store) (:dragging-id store) (:dropping-id store))
  (div
   {:style {:position :fixed, :bottom 0, :left 16}}
   (a
    {:inner-text "Relax", :style (merge style/link), :on-click (action-> :task/relax nil)})
   (=< 8 nil)
   (a
    {:inner-text "Review",
     :style (merge style/link),
     :on-click (fn [e d! m!]
       (let [w (.open js/window)]
         (.. w
             -document
             (write (str "<pre style=\"white-space: pre-line\">" (pr-str store) "</pre>")))))}))
  (comp-transparent)
  (when dev? (comp-inspect "Store" store nil))))

(defn on-clear [e dispatch!] (dispatch! :task/clear nil))
