
(ns app.util.dom )

(defonce canvas-element
  (if (exists? js/document) (.createElement js/document "canvas") nil))

(defn get-width [text font-family font-size]
  (if (exists? js/document)
    (let [ctx (.getContext canvas-element "2d")]
      (set! ^js (.-font ctx) (str font-size "px " font-family))
      (.-width (.measureText ctx text)))
    0))
