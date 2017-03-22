
(ns client.store (:require [cljs.reader :refer [read-string]] [client.schema :as schema]))

(defonce ref-store
  (atom
   (let [old-data (.getItem js/localStorage "pudica-schedule")]
     (.log js/console "Old data:" old-data)
     (if (some? old-data) (read-string old-data) schema/store))))
