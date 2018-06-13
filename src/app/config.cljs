
(ns app.config )

(def dev? (if (exists? js/window) (do ^boolean js/goog.DEBUG) true))
