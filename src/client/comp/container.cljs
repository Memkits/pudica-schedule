
(ns client.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]))

(def style-container
  {:background-image "url(\"peach.jpg\")",
   :background-size :cover,
   :background-position :center})

(def comp-container
  (create-comp
   :container
   (fn [store]
     (fn [state mutate!] (div {:style (merge ui/global ui/fullscreen style-container)})))))
