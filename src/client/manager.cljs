
(ns client.manager
  (:require [cljs.core.async :refer [chan timeout >! <! alts!]])
  (:require-macros [cljs.core.async.macros :refer [go go-loop]]))

(defonce chan-wheel (chan))

(defn do-wheel! [dy dispatch!] (go (>! chan-wheel [dy dispatch!])))

(defn listen-wheel! []
  (go-loop
   [st nil last-dy nil last-dispatch! nil]
   (if (nil? st)
     (let [[dy dispatch!] (<! chan-wheel)] (recur (timeout 240) dy dispatch!))
     (let [[v c] (alts! [st chan-wheel])]
       (cond
         (= c st)
           (do
            (cond
              (> last-dy 1) (last-dispatch! :task/up nil)
              (< last-dy -1) (last-dispatch! :task/down nil)
              :else nil)
            (recur nil nil nil))
         (= c chan-wheel) (let [[dy dispatch!] v] (recur st dy dispatch!)))))))
