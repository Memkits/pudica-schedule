
(ns app.main
  (:require [respo.core :refer [render! clear-cache! realize-ssr!]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.updater :refer [updater]]
            [app.schema :as schema]
            [app.store :refer [*store]]
            ["shortid" :as shortid]))

(defn adjust-focus! []
  (js/setTimeout
   (fn []
     (let [pointer (:pointer @*store)
           maybe-input (.getElementById js/document (str "input-" pointer))]
       (comment println "Focus to:" pointer maybe-input)
       (if (and (some? maybe-input) (not= maybe-input (.-activeElement js/document)))
         (.focus maybe-input))))))

(defn dispatch! [op op-data]
  (comment println "Dispatch:" op (pr-str op-data))
  (let [new-store (updater @*store op op-data (.generate shortid) (.now js/Date))]
    (comment println "New store:" new-store)
    (reset! *store new-store)))

(def mount-target (.querySelector js/document ".app"))

(defn render-app! [renderer]
  (comment println "render app:" @*store)
  (renderer mount-target (comp-container @*store) #(dispatch! %1 %2)))

(def ssr? (some? (.querySelector js/document "meta#server-rendered")))

(defn main! []
  (if ssr? (render-app! realize-ssr!))
  (render-app! render!)
  (add-watch *store :changes (fn [] (render-app! render!)))
  (add-watch *store :focus adjust-focus!)
  (println "App started!"))

(defn reload! [] (clear-cache!) (render-app! render!) (println "Code updated."))

(defn save-store! []
  (let [raw (pr-str @*store)] (.setItem js/window.localStorage "pudica-schedule" raw)))

(set! (.-onload js/window) main!)

(set! (.-onbeforeunload js/window) save-store!)
