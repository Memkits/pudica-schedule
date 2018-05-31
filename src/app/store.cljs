
(ns app.store (:require [cljs.reader :refer [read-string]] [app.schema :as schema]))

(defonce *store
  (atom
   (let [old-data (if (and (exists? js/window) (exists? js/window.localStorage))
                    (.getItem js/window.localStorage (:storage schema/configs)))]
     (println "Old store:" old-data)
     (merge schema/store (when (some? old-data) (read-string old-data))))))
