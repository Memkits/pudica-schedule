
(ns client.main
  (:require [respo.core
             :refer
             [render! clear-cache! falsify-stage! render-element gc-states!]]
            [client.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [client.updater.core :refer [updater]]
            [client.schema :as schema]
            [client.manager :refer [listen-wheel!]]))

(defonce store-ref
  (atom (assoc schema/store :tasks [(merge schema/task {:id (.now js/Date), :text ""})])))

(defn dispatch! [op op-data]
  (println "Dispatch:" op op-data)
  (let [new-store (updater @store-ref op op-data (.now js/Date))]
    (comment println "New store:" new-store)
    (reset! store-ref new-store)))

(defonce states-ref (atom {}))

(defn render-app! []
  (let [target (.querySelector js/document "#app")]
    (render! (comp-container @store-ref) target dispatch! states-ref)
    (comment println "Finished rerendering!")))

(def ssr-stages
  (let [ssr-element (.querySelector js/document "#ssr-stages")
        ssr-markup (.getAttribute ssr-element "content")]
    (read-string ssr-markup)))

(defn adjust-focus! []
  (js/setTimeout
   (fn []
     (let [pointer (:pointer @store-ref)
           maybe-input (.getElementById js/document (str "input-" pointer))]
       (comment println "Focus to:" pointer maybe-input)
       (if (and (some? maybe-input) (not= maybe-input (.-activeElement js/document)))
         (.focus maybe-input))))))

(defn -main! []
  (enable-console-print!)
  (if (not (empty? ssr-stages))
    (let [target (.querySelector js/document "#app")]
      (falsify-stage!
       target
       (render-element (comp-container @store-ref ssr-stages) states-ref)
       dispatch!)))
  (render-app!)
  (add-watch store-ref :gc (fn [] (gc-states! states-ref)))
  (add-watch store-ref :changes render-app!)
  (add-watch store-ref :focus adjust-focus!)
  (add-watch states-ref :changes render-app!)
  (listen-wheel!)
  (println "App started!"))

(defn on-jsload! [] (clear-cache!) (render-app!) (println "Code updated."))

(set! (.-onload js/window) -main!)
