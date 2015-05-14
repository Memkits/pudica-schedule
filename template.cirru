
var
  stir $ require :stir-template
  (object~ html head title meta script body link div) stir

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null ":Pudica Schedule"
        link $ object (:rel :icon) (:href :images/icon.png)
        link $ object (:rel :stylesheet) (:href :style/main.css)
        meta $ object (:charset :utf-8)
        script $ object (:src data.main) (:defer true)
      body null
        div null :loading
