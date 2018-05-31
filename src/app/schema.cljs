
(ns app.schema (:require [bisection-key.core :refer [mid-id]]))

(def configs
  {:storage "pudica-schedule",
   :cdn "http://cdn.tiye.me/pudica-schedule/",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :dev-ui "http://localhost:8100/main.css",
   :icon "http://cdn.tiye.me/logo/pudica.png",
   :title "Pudica"})

(def dev? js/goog.DEBUG)

(def task
  {:id nil,
   :text "",
   :done? false,
   :sort-id nil,
   :created-time nil,
   :done-time nil,
   :archived-time nil})

(def store
  {:tasks {"root" (merge task {:id "root", :text "", :sort-id mid-id})},
   :pointer 0,
   :dragging-id nil,
   :dropping-id nil,
   :states {},
   :archives {}})
