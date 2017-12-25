
(ns app.main
  (:require [respo.core :refer [render! clear-cache! realize-ssr!]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.updater.core :refer [updater]]
            [app.schema :as schema]
            [app.manager :refer [listen-wheel!]]
            [app.store :refer [*store]]))

(defn dispatch! [op op-data]
  (comment println "Dispatch:" op op-data)
  (let [new-store (updater @*store op op-data (.now js/Date))]
    (comment println "New store:" new-store)
    (reset! *store new-store)))

(defn adjust-focus! []
  (js/setTimeout
   (fn []
     (let [pointer (:pointer @*store)
           maybe-input (.getElementById js/document (str "input-" pointer))]
       (comment println "Focus to:" pointer maybe-input)
       (if (and (some? maybe-input) (not= maybe-input (.-activeElement js/document)))
         (.focus maybe-input))))))

(def mount-target (.querySelector js/document ".app"))

(defn render-app! [renderer]
  (renderer mount-target (comp-container @*store) #(dispatch! %1 %2)))

(defn reload! [] (clear-cache!) (render-app! render!) (println "Code updated."))

(defn save-store! []
  (let [raw (pr-str @*store)] (.setItem js/window.localStorage "pudica-schedule" raw)))

(def ssr? (some? (.querySelector js/document "meta#server-rendered")))

(defn main! []
  (if ssr? (render-app! realize-ssr!))
  (render-app! render!)
  (add-watch *store :changes (fn [] (render-app! render!)))
  (add-watch *store :focus adjust-focus!)
  (listen-wheel!)
  (println "App started!"))

(set! (.-onload js/window) main!)

(set! (.-onbeforeunload js/window) save-store!)
