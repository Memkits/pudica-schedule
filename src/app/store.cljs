
(ns app.store (:require [cljs.reader :refer [read-string]] [app.schema :as schema]))

(defonce ref-store
  (atom
   (let [old-data (if (exists? js/localStorage)
                    (.getItem js/localStorage "pudica-schedule"))]
     (println "Old store:" old-data)
     (if (some? old-data) (read-string old-data) schema/store))))
