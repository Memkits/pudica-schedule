
(ns client.manager
  (:require [cljs.core.async :refer [chan timeout >! <! alts!]])
  (:require-macros [cljs.core.async.macros :refer [go go-loop]]))

(defonce chan-wheel (chan))

(defn do-wheel! [dy dispatch!] (go (>! chan-wheel [dy dispatch!])))

(defn listen-wheel! []
  (go-loop
   [st nil last-dy 0 last-dispatch! nil]
   (if (nil? st)
     (let [[dy dispatch!] (<! chan-wheel)] (recur (timeout 400) (+ last-dy dy) dispatch!))
     (let [step 40, [v c] (alts! [st chan-wheel])]
       (cond
         (= c st) (recur nil 0 last-dispatch!)
         (= c chan-wheel)
           (let [[dy dispatch!] v]
             (cond
               (> last-dy step)
                 (do (last-dispatch! :task/up nil) (recur st (- last-dy step) dispatch!))
               (< last-dy (- 0 step))
                 (do (last-dispatch! :task/down nil) (recur st (+ last-dy step) dispatch!))
               :else (recur st (+ last-dy dy) dispatch!))))))))
