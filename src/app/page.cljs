
(ns app.page
  (:require [respo.render.html :refer [make-string]]
            [shell-page.core :refer [make-page spit slurp]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.schema :as schema]))

(def base-info
  (merge
   (select-keys schema/configs [:title :icon])
   {:ssr nil, :inline-html nil, :inline-styles [(slurp "./entry/main.css")]}))

(defn dev-page []
  (make-page
   ""
   (merge base-info {:styles [(:dev-ui schema/configs)], :scripts ["/client.js"]})))

(def preview? (= "preview" js/process.env.prod))

(defn prod-page []
  (let [html-content (make-string (comp-container schema/store))
        assets (read-string (slurp "dist/assets.edn"))
        cdn (if preview? "" (:cdn schema/configs))
        prefix-cdn (fn [x] (str cdn x))]
    (make-page
     html-content
     (merge
      base-info
      {:styles [(:release-ui schema/configs)],
       :scripts (map #(-> % :output-name prefix-cdn) assets)}))))

(defn main! []
  (if (= js/process.env.env "dev")
    (spit "target/index.html" (dev-page))
    (spit "dist/index.html" (prod-page))))

(main!)
