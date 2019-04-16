
(ns app.schema (:require [bisection-key.core :refer [mid-id]]))

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
