
(ns client.main
  (:require [respo.core
             :refer
             [render! clear-cache! falsify-stage! render-element gc-states!]]
            [client.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [client.updater.core :refer [updater]]
            [client.schema :as schema]
            [client.manager :refer [listen-wheel!]]
            [cljs.reader :refer [read-string]]))

(defonce store-ref
  (atom
   (let [old-data (.getItem js/localStorage "pudica-schedule")]
     (.log js/console "Old data:" old-data)
     (if (some? old-data) (read-string old-data) schema/store))))

(defn dispatch! [op op-data]
  (println "Dispatch:" op op-data)
  (let [new-store (updater @store-ref op op-data (.now js/Date))]
    (comment println "New store:" new-store)
    (reset! store-ref new-store)))

(defn adjust-focus! []
  (js/setTimeout
   (fn []
     (let [pointer (:pointer @store-ref)
           maybe-input (.getElementById js/document (str "input-" pointer))]
       (comment println "Focus to:" pointer maybe-input)
       (if (and (some? maybe-input) (not= maybe-input (.-activeElement js/document)))
         (.focus maybe-input))))))

(defonce states-ref (atom {}))

(defn render-app! []
  (let [target (.querySelector js/document "#app")]
    (render! (comp-container @store-ref) target dispatch! states-ref)
    (comment println "Finished rerendering!")))

(def ssr-stages
  (let [ssr-element (.querySelector js/document "#ssr-stages")
        ssr-markup (.getAttribute ssr-element "content")]
    (read-string ssr-markup)))

(defn -main! []
  (enable-console-print!)
  (if (not (empty? ssr-stages))
    (let [target (.querySelector js/document "#app")]
      (falsify-stage!
       target
       (render-element (comp-container schema/store ssr-stages) states-ref)
       dispatch!)))
  (render-app!)
  (add-watch store-ref :gc (fn [] (gc-states! states-ref)))
  (add-watch store-ref :changes render-app!)
  (add-watch store-ref :focus adjust-focus!)
  (add-watch states-ref :changes render-app!)
  (listen-wheel!)
  (println "App started!"))

(defn save-store! []
  (let [raw (pr-str @store-ref)] (.setItem js/localStorage "pudica-schedule" raw)))

(defn on-jsload! [] (clear-cache!) (render-app!) (println "Code updated."))

(set! (.-onload js/window) -main!)

(set! (.-onbeforeunload js/window) save-store!)
