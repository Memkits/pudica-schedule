
(ns client.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-text]]))

(def comp-container
  (create-comp
   :container
   (fn [store]
     (fn [state mutate!]
       (div
        {:style (merge ui/global)}
        (comp-space "8px" nil)
        (div {:style ui/button} (comp-text "Demo" nil)))))))
