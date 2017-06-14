
(ns app.main
  (:require [respo.core :refer [render! clear-cache! falsify-stage! render-element]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.updater.core :refer [updater]]
            [app.schema :as schema]
            [app.manager :refer [listen-wheel!]]
            [app.store :refer [ref-store]]))

(defn dispatch! [op op-data]
  (comment println "Dispatch:" op op-data)
  (let [new-store (updater @ref-store op op-data (.now js/Date))]
    (comment println "New store:" new-store)
    (reset! ref-store new-store)))

(def server-rendered? (some? (.querySelector js/document "meta#server-rendered")))

(defn adjust-focus! []
  (js/setTimeout
   (fn []
     (let [pointer (:pointer @ref-store)
           maybe-input (.getElementById js/document (str "input-" pointer))]
       (comment println "Focus to:" pointer maybe-input)
       (if (and (some? maybe-input) (not= maybe-input (.-activeElement js/document)))
         (.focus maybe-input))))))

(def mount-target (.querySelector js/document "#app"))

(defn render-app! [] (render! (comp-container @ref-store) mount-target dispatch!))

(defn -main! []
  (comment enable-console-print!)
  (if server-rendered?
    (falsify-stage! mount-target (render-element (comp-container schema/store)) dispatch!))
  (render-app!)
  (add-watch ref-store :changes render-app!)
  (add-watch ref-store :focus adjust-focus!)
  (listen-wheel!)
  (println "App started!"))

(defn reload! [] (clear-cache!) (render-app!) (println "Code updated."))

(defn save-store! []
  (let [raw (pr-str @ref-store)] (.setItem js/localStorage "pudica-schedule" raw)))

(set! (.-onload js/window) -main!)

(set! (.-onbeforeunload js/window) save-store!)
