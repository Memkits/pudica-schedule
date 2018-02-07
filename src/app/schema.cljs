
(ns app.schema (:require [bisection-key.core :refer [mid-id]]))

(def task {:id nil, :text "", :done? false, :sort-id nil})

(def store
  {:tasks {"root" (merge task {:id "root", :text "", :sort-id mid-id})},
   :pointer 0,
   :states {}})
