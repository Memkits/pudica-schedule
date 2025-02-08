
{} (:package |app)
  :configs $ {} (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |bisection-key/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553790232228) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1553790219433) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553790221906) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1553790222397) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553790222612) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553790223373) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1553790224586) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553790224152) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1553790229544) (:by |root) (:text |reel)
                  |T $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1659861864852) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659861868160) (:by |Qr5ffqtY) (:text |:class-name)
                              |b $ %{} :Expr (:at 1659861868690) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659861870405) (:by |Qr5ffqtY) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1659861876195) (:by |Qr5ffqtY) (:text |css/global)
                                  |h $ %{} :Leaf (:at 1659861882169) (:by |Qr5ffqtY) (:text |css/fullscreen)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |merge)
                                  |v $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:background-position)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text "||left top")
                                      |v $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:overflow)
                                          |j $ %{} :Leaf (:at 1518022143160) (:by |root) (:text |:auto)
                                      |x $ %{} :Expr (:at 1518022225758) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518022227607) (:by |root) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1518022694025) (:by |root) (:text "||160px 200px")
                                      |y $ %{} :Expr (:at 1665906395502) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665906395502) (:by |Qr5ffqtY) (:text |;)
                                          |b $ %{} :Leaf (:at 1665906395502) (:by |Qr5ffqtY) (:text |:color)
                                          |h $ %{} :Leaf (:at 1665906395502) (:by |Qr5ffqtY) (:text |:white)
                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-todolist)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1518169595891) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518169599432) (:by |root) (:text |:dragging-id)
                              |j $ %{} :Leaf (:at 1518169600590) (:by |root) (:text |store)
                          |x $ %{} :Expr (:at 1518169595891) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519749560154) (:by |root) (:text |:dropping-id)
                              |j $ %{} :Leaf (:at 1518169600590) (:by |root) (:text |store)
                      |x $ %{} :Expr (:at 1525626576832) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1525626577528) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1525626577710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525626578579) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1525626580551) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525626581968) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1525626582177) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525626582510) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1525626626404) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525626629423) (:by |root) (:text |:position)
                                          |j $ %{} :Leaf (:at 1525626631133) (:by |root) (:text |:fixed)
                                      |r $ %{} :Expr (:at 1525626632221) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525626633112) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1525626634072) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1525626636483) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525626639856) (:by |root) (:text |:left)
                                          |j $ %{} :Leaf (:at 1525626887670) (:by |root) (:text |16)
                          |T $ %{} :Expr (:at 1508857721923) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525626834564) (:by |root) (:text |a)
                              |j $ %{} :Expr (:at 1508857725461) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508857725923) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1508857726249) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508857728283) (:by |root) (:text |:inner-text)
                                      |j $ %{} :Leaf (:at 1670583141607) (:by |Qr5ffqtY) (:text ||Ease)
                                  |r $ %{} :Expr (:at 1508857747506) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1659861969124) (:by |Qr5ffqtY) (:text |:class-name)
                                      |j $ %{} :Expr (:at 1670583119299) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1670583120845) (:by |Qr5ffqtY) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1670583118417) (:by |Qr5ffqtY) (:text |css/link)
                                          |b $ %{} :Leaf (:at 1670583126749) (:by |Qr5ffqtY) (:text |css/font-fancy)
                                  |v $ %{} :Expr (:at 1508857783984) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1514170045981) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1629051747860) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629051748469) (:by |Qr5ffqtY) (:text |fn)
                                          |L $ %{} :Expr (:at 1629051748826) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629051749406) (:by |Qr5ffqtY) (:text |e)
                                              |j $ %{} :Leaf (:at 1629051750083) (:by |Qr5ffqtY) (:text |d!)
                                          |T $ %{} :Expr (:at 1508857794826) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629051747281) (:by |Qr5ffqtY) (:text |d!)
                                              |j $ %{} :Expr (:at 1739027135552) (:by |Qr5ffqtY)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1739027136270) (:by |Qr5ffqtY) (:text |::)
                                                  |T $ %{} :Leaf (:at 1527734621999) (:by |root) (:text |:task/relax)
                          |j $ %{} :Expr (:at 1525626644234) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525626644681) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1525626645454) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1525626645919) (:by |root) (:text |nil)
                          |r $ %{} :Expr (:at 1508857721923) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525626844862) (:by |root) (:text |a)
                              |j $ %{} :Expr (:at 1508857725461) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508857725923) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1508857726249) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508857728283) (:by |root) (:text |:inner-text)
                                      |j $ %{} :Leaf (:at 1525626892923) (:by |root) (:text ||Review)
                                  |r $ %{} :Expr (:at 1508857747506) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1659861923011) (:by |Qr5ffqtY) (:text |:class-name)
                                      |j $ %{} :Expr (:at 1670583132726) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1670583132726) (:by |Qr5ffqtY) (:text |str-spaced)
                                          |b $ %{} :Leaf (:at 1670583132726) (:by |Qr5ffqtY) (:text |css/link)
                                          |h $ %{} :Leaf (:at 1670583132726) (:by |Qr5ffqtY) (:text |css/font-fancy)
                                  |v $ %{} :Expr (:at 1508857783984) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1514170045981) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1525626662424) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525626663420) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1525626663717) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525626663959) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1525626664643) (:by |root) (:text |d!)
                                          |n $ %{} :Expr (:at 1645027784440) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text |let)
                                              |b $ %{} :Expr (:at 1645027784440) (:by |Qr5ffqtY)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1645027784440) (:by |Qr5ffqtY)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text |raw)
                                                      |b $ %{} :Expr (:at 1645027784440) (:by |Qr5ffqtY)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text |format-cirru-edn)
                                                          |b $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text |store)
                                              |h $ %{} :Expr (:at 1645027784440) (:by |Qr5ffqtY)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text |js/localStorage.setItem)
                                                  |b $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text "|\"pudica-schedule-viewer")
                                                  |h $ %{} :Leaf (:at 1645027784440) (:by |Qr5ffqtY) (:text |raw)
                                              |l $ %{} :Expr (:at 1645027790419) (:by |Qr5ffqtY)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text |js/window.open)
                                                  |b $ %{} :Expr (:at 1645027790419) (:by |Qr5ffqtY)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text |if)
                                                      |b $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text |config/dev?)
                                                      |h $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text "|\"http://localhost:3000")
                                                      |l $ %{} :Expr (:at 1645027790419) (:by |Qr5ffqtY)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text |str)
                                                          |b $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text |js/location.origin)
                                                          |h $ %{} :Leaf (:at 1645027790419) (:by |Qr5ffqtY) (:text "|\"/Memkits/pudica-schedule-viewer/")
                      |xT $ %{} :Expr (:at 1525625883663) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525625885339) (:by |root) (:text |comp-transparent)
                      |y $ %{} :Expr (:at 1525625865516) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1525625866351) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1574870876165) (:by |Qr5ffqtY) (:text |config/dev?)
                          |T $ %{} :Expr (:at 1518018965645) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518018968061) (:by |root) (:text |comp-inspect)
                              |j $ %{} :Leaf (:at 1553790252629) (:by |root) (:text "|\"Store")
                              |p $ %{} :Leaf (:at 1519746710559) (:by |root) (:text |store)
                              |v $ %{} :Leaf (:at 1518018979985) (:by |root) (:text |nil)
                      |z $ %{} :Expr (:at 1525625865516) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1525625866351) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1574870876165) (:by |Qr5ffqtY) (:text |config/dev?)
                          |T $ %{} :Expr (:at 1518018965645) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665906103983) (:by |Qr5ffqtY) (:text |comp-reel)
                              |m $ %{} :Expr (:at 1665906131594) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665906131153) (:by |Qr5ffqtY) (:text |:states)
                                  |b $ %{} :Leaf (:at 1665906132596) (:by |Qr5ffqtY) (:text |reel)
                              |p $ %{} :Leaf (:at 1665906124213) (:by |Qr5ffqtY) (:text |reel)
                              |v $ %{} :Expr (:at 1665906302100) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665906302509) (:by |Qr5ffqtY) (:text |{})
        |comp-transparent $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519748330160) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1525625881681) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1519748330160) (:by |root) (:text |comp-transparent)
              |n $ %{} :Expr (:at 1525625871652) (:by |root)
                :data $ {}
              |r $ %{} :Expr (:at 1519748099447) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519748100466) (:by |root) (:text |span)
                  |j $ %{} :Expr (:at 1519748101249) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519748101641) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1519748101845) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519748103509) (:by |root) (:text |:class-name)
                          |j $ %{} :Leaf (:at 1519748112228) (:by |root) (:text ||transparent)
                      |r $ %{} :Expr (:at 1519748287927) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519748289118) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519748289353) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519748289635) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1519748290444) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519748292353) (:by |root) (:text |:width)
                                  |j $ %{} :Leaf (:at 1519748292976) (:by |root) (:text |1)
                              |r $ %{} :Expr (:at 1519748293291) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519748294311) (:by |root) (:text |:height)
                                  |j $ %{} :Leaf (:at 1519748294608) (:by |root) (:text |1)
                              |v $ %{} :Expr (:at 1519748302119) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519748306984) (:by |root) (:text |:background-color)
                                  |j $ %{} :Leaf (:at 1519748309884) (:by |root) (:text ||red)
                              |x $ %{} :Expr (:at 1519748310336) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519748312451) (:by |root) (:text |:display)
                                  |j $ %{} :Leaf (:at 1519748316564) (:by |root) (:text |:inline-block)
        |on-clear $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |on-clear)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |e)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
              |v $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/clear)
                  |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500452996813) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1500452996813) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1659861900471) (:by |Qr5ffqtY) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518014652028) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ui)
                |t $ %{} :Expr (:at 1659861885698) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659861887926) (:by |Qr5ffqtY) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1659861888458) (:by |Qr5ffqtY) (:text |:as)
                    |h $ %{} :Leaf (:at 1659861889560) (:by |Qr5ffqtY) (:text |css)
                |v $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553789391022) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defcomp)
                        |X $ %{} :Leaf (:at 1525626361581) (:by |root) (:text |action->)
                        |b $ %{} :Leaf (:at 1500454524965) (:by |root) (:text |<>)
                        |j $ %{} :Leaf (:at 1500454520939) (:by |root) (:text |div)
                        |r $ %{} :Leaf (:at 1500454521496) (:by |root) (:text |span)
                        |v $ %{} :Leaf (:at 1500454522392) (:by |root) (:text |button)
                        |x $ %{} :Leaf (:at 1525626836783) (:by |root) (:text |a)
                |x $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500454541733) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.comp.todolist)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-todolist)
                |yj $ %{} :Expr (:at 1518018999691) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518019005934) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1518019006741) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518019006991) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518019010155) (:by |root) (:text |comp-inspect)
                |yv $ %{} :Expr (:at 1525626838911) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1525626840365) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1525626840954) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1525626841700) (:by |root) (:text |style)
                |yx $ %{} :Expr (:at 1528871401920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528871403449) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1528871473957) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528871405519) (:by |root) (:text |config)
                |z $ %{} :Expr (:at 1665906078109) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1665906233338) (:by |Qr5ffqtY) (:text |reel.comp.reel)
                    |b $ %{} :Leaf (:at 1665906086971) (:by |Qr5ffqtY) (:text |:refer)
                    |h $ %{} :Expr (:at 1665906087160) (:by |Qr5ffqtY)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1665906090197) (:by |Qr5ffqtY) (:text |comp-reel)
    |app.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-task)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                  |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |focused?)
                  |v $ %{} :Leaf (:at 1518620618638) (:by |root) (:text |dragging-id)
                  |x $ %{} :Leaf (:at 1519749533570) (:by |root) (:text |dropping-id)
              |v $ %{} :Expr (:at 1644772996025) (:by |Qr5ffqtY)
                :data $ {}
                  |D $ %{} :Leaf (:at 1644772998586) (:by |Qr5ffqtY) (:text |[])
                  |L $ %{} :Expr (:at 1644773225288) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1644773005008) (:by |Qr5ffqtY) (:text |effect-in)
                      |b $ %{} :Expr (:at 1659804738535) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1659804740235) (:by |Qr5ffqtY) (:text |:done?)
                          |b $ %{} :Leaf (:at 1659804740907) (:by |Qr5ffqtY) (:text |task)
                  |T $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1659862089913) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862093493) (:by |Qr5ffqtY) (:text |:class-name)
                              |b $ %{} :Expr (:at 1659862107214) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1659862109812) (:by |Qr5ffqtY) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1659862106552) (:by |Qr5ffqtY) (:text |css/row)
                                  |b $ %{} :Leaf (:at 1659862135437) (:by |Qr5ffqtY) (:text |css-task)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |merge)
                                  |v $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:top)
                                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |str)
                                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |*)
                                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                                                  |r $ %{} :Leaf (:at 1644387262450) (:by |Qr5ffqtY) (:text |49)
                                              |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||px)
                                  |w $ %{} :Expr (:at 1659803907471) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1659803907471) (:by |Qr5ffqtY) (:text |if)
                                      |b $ %{} :Expr (:at 1659803907471) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1659803907471) (:by |Qr5ffqtY) (:text |:done?)
                                          |b $ %{} :Leaf (:at 1659803907471) (:by |Qr5ffqtY) (:text |task)
                                      |h $ %{} :Expr (:at 1659803907471) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1659803907471) (:by |Qr5ffqtY) (:text |{})
                                          |b $ %{} :Expr (:at 1659803907471) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1659803907471) (:by |Qr5ffqtY) (:text |:opacity)
                                              |b $ %{} :Leaf (:at 1670583356648) (:by |Qr5ffqtY) (:text |0.5)
                                  |xL $ %{} :Expr (:at 1518169630165) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518169630555) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1518620626404) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518620625929) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1519749515996) (:by |root) (:text |dropping-id)
                                          |r $ %{} :Expr (:at 1518620628802) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518620629205) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1518620629776) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1518169632333) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518169632690) (:by |root) (:text |{})
                                          |r $ %{} :Expr (:at 1519748428375) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519748430385) (:by |root) (:text |:opacity)
                                              |j $ %{} :Leaf (:at 1670583045887) (:by |Qr5ffqtY) (:text |0.8)
                                          |v $ %{} :Expr (:at 1644386718904) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1644386732718) (:by |Qr5ffqtY) (:text |:transform)
                                              |j $ %{} :Leaf (:at 1644387285559) (:by |Qr5ffqtY) (:text "|\"translate(2px,4px)")
                                          |w $ %{} :Expr (:at 1644386859404) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1644386859404) (:by |Qr5ffqtY) (:text |:z-index)
                                              |j $ %{} :Leaf (:at 1644386859404) (:by |Qr5ffqtY) (:text |900)
                                          |x $ %{} :Expr (:at 1644386795729) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1644386800071) (:by |Qr5ffqtY) (:text |:outline)
                                              |j $ %{} :Expr (:at 1644386801161) (:by |Qr5ffqtY)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1644386801625) (:by |Qr5ffqtY) (:text |str)
                                                  |j $ %{} :Leaf (:at 1644386853979) (:by |Qr5ffqtY) (:text "|\"2px solid ")
                                                  |r $ %{} :Expr (:at 1644386805646) (:by |Qr5ffqtY)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1644386809074) (:by |Qr5ffqtY) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1644386809642) (:by |Qr5ffqtY) (:text |0)
                                                      |r $ %{} :Leaf (:at 1644386810034) (:by |Qr5ffqtY) (:text |0)
                                                      |v $ %{} :Leaf (:at 1644386855992) (:by |Qr5ffqtY) (:text |86)
                                  |yj $ %{} :Expr (:at 1518169630165) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518169630555) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1518620626404) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518620625929) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1518620628010) (:by |root) (:text |dragging-id)
                                          |r $ %{} :Expr (:at 1518620628802) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518620629205) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1518620629776) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1518169632333) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518169632690) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519747275669) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519747278418) (:by |root) (:text |:z-index)
                                              |j $ %{} :Leaf (:at 1519747279223) (:by |root) (:text |999)
                                          |r $ %{} :Expr (:at 1519748428375) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519748430385) (:by |root) (:text |:opacity)
                                              |j $ %{} :Leaf (:at 1670583024810) (:by |Qr5ffqtY) (:text |0.5)
                                          |v $ %{} :Expr (:at 1644387278367) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1644387278367) (:by |Qr5ffqtY) (:text |:transform)
                                              |j $ %{} :Leaf (:at 1644387283729) (:by |Qr5ffqtY) (:text "|\"translate(-2px,-4px)")
                          |p $ %{} :Expr (:at 1518015576637) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518015579443) (:by |root) (:text |:draggable)
                              |j $ %{} :Leaf (:at 1518015580631) (:by |root) (:text |true)
                          |v $ %{} :Expr (:at 1518015809684) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518015812073) (:by |root) (:text |:on-dragstart)
                              |j $ %{} :Expr (:at 1518015813155) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518015814070) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1518015814315) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518015814490) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1518015815400) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1518015816810) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518015817362) (:by |root) (:text |let)
                                      |j $ %{} :Expr (:at 1518015817663) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1518015817977) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518015818890) (:by |root) (:text |event)
                                              |j $ %{} :Expr (:at 1518015819706) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518015820361) (:by |root) (:text |:event)
                                                  |j $ %{} :Leaf (:at 1518015820593) (:by |root) (:text |e)
                                      |r $ %{} :Expr (:at 1518015834966) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518015835862) (:by |root) (:text |->)
                                          |j $ %{} :Leaf (:at 1518015836937) (:by |root) (:text |event)
                                          |r $ %{} :Leaf (:at 1518015841687) (:by |root) (:text |.-dataTransfer)
                                          |v $ %{} :Expr (:at 1518015848644) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629053173188) (:by |Qr5ffqtY) (:text |.!setData)
                                              |j $ %{} :Leaf (:at 1518015854166) (:by |root) (:text ||text)
                                              |r $ %{} :Expr (:at 1518015857778) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1518015859260) (:by |root) (:text |:id)
                                                  |T $ %{} :Leaf (:at 1518015855348) (:by |root) (:text |task)
                                      |t $ %{} :Expr (:at 1519748138479) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519748140064) (:by |root) (:text |->)
                                          |j $ %{} :Leaf (:at 1519748141445) (:by |root) (:text |event)
                                          |r $ %{} :Leaf (:at 1519748146197) (:by |root) (:text |.-dataTransfer)
                                          |v $ %{} :Expr (:at 1519748147055) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629053174684) (:by |Qr5ffqtY) (:text |.!setDragImage)
                                              |b $ %{} :Expr (:at 1519748157882) (:by |root)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1629053178392) (:by |Qr5ffqtY) (:text |js/document.querySelector)
                                                  |r $ %{} :Leaf (:at 1519748171970) (:by |root) (:text ||.transparent)
                                              |j $ %{} :Leaf (:at 1519748155367) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1519748155590) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1518169503021) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518169504937) (:by |root) (:text |d!)
                                          |j $ %{} :Leaf (:at 1518169516011) (:by |root) (:text |:mark/dragging)
                                          |r $ %{} :Expr (:at 1518169520345) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518169518786) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1518169521191) (:by |root) (:text |task)
                          |w $ %{} :Expr (:at 1518169526254) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518169528760) (:by |root) (:text |:on-dragend)
                              |j $ %{} :Expr (:at 1519749449219) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1519749449858) (:by |root) (:text |fn)
                                  |L $ %{} :Expr (:at 1519749450214) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519749451444) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1519749452307) (:by |root) (:text |d!)
                                  |T $ %{} :Expr (:at 1518169529075) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519749455072) (:by |root) (:text |d!)
                                      |r $ %{} :Leaf (:at 1518169516011) (:by |root) (:text |:mark/dragging)
                                      |v $ %{} :Leaf (:at 1518169544788) (:by |root) (:text |nil)
                                  |j $ %{} :Expr (:at 1518169529075) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519749455072) (:by |root) (:text |d!)
                                      |r $ %{} :Leaf (:at 1519749458623) (:by |root) (:text |:mark/dropping)
                                      |v $ %{} :Leaf (:at 1518169544788) (:by |root) (:text |nil)
                          |wT $ %{} :Expr (:at 1519749465916) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519749471665) (:by |root) (:text |:on-dragenter)
                              |j $ %{} :Expr (:at 1629052122430) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629052125518) (:by |Qr5ffqtY) (:text |fn)
                                  |L $ %{} :Expr (:at 1629052125869) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629052126048) (:by |Qr5ffqtY) (:text |e)
                                      |j $ %{} :Leaf (:at 1629052126797) (:by |Qr5ffqtY) (:text |d!)
                                  |T $ %{} :Expr (:at 1519749472662) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629052121859) (:by |Qr5ffqtY) (:text |d!)
                                      |j $ %{} :Leaf (:at 1519749480470) (:by |root) (:text |:mark/dropping)
                                      |r $ %{} :Expr (:at 1519749481605) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519749482701) (:by |root) (:text |:id)
                                          |j $ %{} :Leaf (:at 1519749483216) (:by |root) (:text |task)
                          |x $ %{} :Expr (:at 1518620647940) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518015890564) (:by |root) (:text |:on-dragover)
                              |j $ %{} :Expr (:at 1518015891239) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518015891784) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1518015892126) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518015892340) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1518015893338) (:by |root) (:text |d!)
                                  |v $ %{} :Expr (:at 1518017596767) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518017598556) (:by |root) (:text |->)
                                      |j $ %{} :Leaf (:at 1518017600129) (:by |root) (:text |e)
                                      |r $ %{} :Leaf (:at 1518017601083) (:by |root) (:text |:event)
                                      |v $ %{} :Expr (:at 1518017602601) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629053182288) (:by |Qr5ffqtY) (:text |.!preventDefault)
                          |y $ %{} :Expr (:at 1518015912224) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519748210188) (:by |root) (:text |:on-drop)
                              |j $ %{} :Expr (:at 1518015913974) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518015914884) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1518015915164) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518015916509) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1518015917134) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1519748471942) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1519748472706) (:by |root) (:text |let)
                                      |L $ %{} :Expr (:at 1519748472932) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1519748473085) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519748475258) (:by |root) (:text |event)
                                              |j $ %{} :Expr (:at 1519748475622) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1519748476308) (:by |root) (:text |:event)
                                                  |j $ %{} :Leaf (:at 1519748477202) (:by |root) (:text |e)
                                      |T $ %{} :Expr (:at 1518017404132) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518017404663) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1518017404931) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518017408011) (:by |root) (:text |not=)
                                              |j $ %{} :Leaf (:at 1518017411658) (:by |root) (:text |dragging-id)
                                              |r $ %{} :Expr (:at 1518017412896) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518017413431) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1518017414121) (:by |root) (:text |task)
                                          |r $ %{} :Expr (:at 1518017415386) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518017416024) (:by |root) (:text |do)
                                              |j $ %{} :Expr (:at 1518017416265) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518021117300) (:by |root) (:text |d!)
                                                  |f $ %{} :Leaf (:at 1519749104170) (:by |root) (:text |:task/move)
                                                  |l $ %{} :Expr (:at 1518020766049) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518020766404) (:by |root) (:text |[])
                                                      |j $ %{} :Leaf (:at 1518020769378) (:by |root) (:text |dragging-id)
                                                      |r $ %{} :Expr (:at 1518020770218) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518020771427) (:by |root) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1518020772286) (:by |root) (:text |task)
                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1659862437880) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659862443786) (:by |Qr5ffqtY) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1659862462195) (:by |Qr5ffqtY) (:text |css-done)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:done?)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:transform)
                                              |j $ %{} :Leaf (:at 1508174307378) (:by |root) (:text "||scale(0.7)")
                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514170085789) (:by |root) (:text |:on-click)
                                  |r $ %{} :Expr (:at 1629052131994) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052132743) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1629052133473) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052134781) (:by |Qr5ffqtY) (:text |e)
                                          |j $ %{} :Leaf (:at 1629052136443) (:by |Qr5ffqtY) (:text |d!)
                                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052131472) (:by |Qr5ffqtY) (:text |d!)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/toggle)
                                          |r $ %{} :Expr (:at 1518022718978) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518022720060) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1518022721269) (:by |root) (:text |task)
                      |v $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508038817659) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |input)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:value)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:placeholder)
                                  |j $ %{} :Leaf (:at 1519744927201) (:by |root) (:text ||task...)
                              |v $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:id)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |str)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||input-)
                                      |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                              |vT $ %{} :Expr (:at 1659862556346) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659862560818) (:by |Qr5ffqtY) (:text |:spellcheck)
                                  |b $ %{} :Leaf (:at 1659862561529) (:by |Qr5ffqtY) (:text |false)
                              |w $ %{} :Expr (:at 1659862180063) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659862183142) (:by |Qr5ffqtY) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1659862184191) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1659862187416) (:by |Qr5ffqtY) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1659862190019) (:by |Qr5ffqtY) (:text |css/input)
                                      |h $ %{} :Leaf (:at 1659862220198) (:by |Qr5ffqtY) (:text |css-text)
                              |x $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1519746327430) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1519746328090) (:by |root) (:text |let)
                                      |L $ %{} :Expr (:at 1519746328320) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1519746328467) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519746333487) (:by |root) (:text |text-width)
                                              |j $ %{} :Expr (:at 1519746334877) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1519746334617) (:by |root) (:text |get-width)
                                                  |j $ %{} :Expr (:at 1519746336369) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1519746337618) (:by |root) (:text |:text)
                                                      |j $ %{} :Leaf (:at 1519746338441) (:by |root) (:text |task)
                                                  |n $ %{} :Leaf (:at 1519746417660) (:by |root) (:text ||Hind)
                                                  |r $ %{} :Leaf (:at 1519746342412) (:by |root) (:text |16)
                                      |T $ %{} :Expr (:at 1519746315723) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519746321200) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519746321567) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519746322725) (:by |root) (:text |:width)
                                              |j $ %{} :Expr (:at 1519746428825) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1519746429998) (:by |root) (:text |+)
                                                  |L $ %{} :Leaf (:at 1519748808793) (:by |root) (:text |16)
                                                  |T $ %{} :Leaf (:at 1519746354940) (:by |root) (:text |text-width)
                              |y $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514170096615) (:by |root) (:text |:on-input)
                                  |j $ %{} :Expr (:at 1629052142430) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052143793) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1629052144112) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052144342) (:by |Qr5ffqtY) (:text |e)
                                          |j $ %{} :Leaf (:at 1629052144880) (:by |Qr5ffqtY) (:text |d!)
                                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052141870) (:by |Qr5ffqtY) (:text |d!)
                                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1688745188750) (:by |Qr5ffqtY) (:text |::)
                                              |T $ %{} :Leaf (:at 1688745187864) (:by |Qr5ffqtY) (:text |:task/edit)
                                              |j $ %{} :Expr (:at 1518019425022) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518019425403) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1518019427381) (:by |root) (:text |task)
                                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1629052204174) (:by |Qr5ffqtY) (:text |e)
                              |yT $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514170099725) (:by |root) (:text |:on-keydown)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908736733) (:by |Qr5ffqtY) (:text |on-keydown)
                                      |b $ %{} :Expr (:at 1518020142155) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518020143507) (:by |root) (:text |:id)
                                          |j $ %{} :Leaf (:at 1518020144051) (:by |root) (:text |task)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:text)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
                                      |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                              |yj $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514170101439) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1629052147896) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052150168) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1629052151989) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052150483) (:by |Qr5ffqtY) (:text |e)
                                          |j $ %{} :Leaf (:at 1629052152786) (:by |Qr5ffqtY) (:text |d!)
                                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052147230) (:by |Qr5ffqtY) (:text |d!)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer/touch)
                                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                      |y $ %{} :Expr (:at 1553790273161) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553790274968) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1553790275793) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553790288794) (:by |root) (:text |:sort-id)
                              |j $ %{} :Leaf (:at 1553790289761) (:by |root) (:text |task)
                          |r $ %{} :Expr (:at 1638686513825) (:by |Qr5ffqtY)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1638686514697) (:by |Qr5ffqtY) (:text |merge)
                              |T $ %{} :Expr (:at 1553790312622) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553790319135) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1553790319452) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553790320260) (:by |root) (:text |:color)
                                      |j $ %{} :Expr (:at 1553790321473) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553790322378) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1553790323655) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1553790324052) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1644387390951) (:by |Qr5ffqtY) (:text |40)
                                          |x $ %{} :Leaf (:at 1631341719513) (:by |Qr5ffqtY) (:text |0.1)
                              |j $ %{} :Expr (:at 1638686528180) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1638686528549) (:by |Qr5ffqtY) (:text |if)
                                  |j $ %{} :Leaf (:at 1638686529729) (:by |Qr5ffqtY) (:text |demo?)
                                  |r $ %{} :Expr (:at 1638686530227) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1638686531503) (:by |Qr5ffqtY) (:text |{})
                                      |j $ %{} :Expr (:at 1638686531909) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1638686534732) (:by |Qr5ffqtY) (:text |:color)
                                          |j $ %{} :Expr (:at 1638686534969) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1638686535399) (:by |Qr5ffqtY) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1638686536032) (:by |Qr5ffqtY) (:text |0)
                                              |r $ %{} :Leaf (:at 1638686536915) (:by |Qr5ffqtY) (:text |0)
                                              |v $ %{} :Leaf (:at 1638686537475) (:by |Qr5ffqtY) (:text |0)
                                              |x $ %{} :Leaf (:at 1638686584196) (:by |Qr5ffqtY) (:text |0.4)
                                      |v $ %{} :Expr (:at 1638686574357) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1638686576282) (:by |Qr5ffqtY) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1638686591094) (:by |Qr5ffqtY) (:text |16)
                                      |x $ %{} :Expr (:at 1638686591726) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1638686596153) (:by |Qr5ffqtY) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1638686601727) (:by |Qr5ffqtY) (:text |ui/font-code)
        |css-done $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1659862456178) (:by |Qr5ffqtY) (:text |defstyle)
              |j $ %{} :Leaf (:at 1659862453198) (:by |Qr5ffqtY) (:text |css-done)
              |r $ %{} :Expr (:at 1659862456949) (:by |Qr5ffqtY)
                :data $ {}
                  |D $ %{} :Leaf (:at 1659862457452) (:by |Qr5ffqtY) (:text |{})
                  |T $ %{} :Expr (:at 1659862457947) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659862459180) (:by |Qr5ffqtY) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1644379267156) (:by |Qr5ffqtY) (:text |20)
                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1644379268572) (:by |Qr5ffqtY) (:text |20)
                          |v $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1514170201103) (:by |root) (:text |240)
                                  |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |90)
                                  |v $ %{} :Leaf (:at 1514170218757) (:by |root) (:text |88)
                                  |x $ %{} :Leaf (:at 1518168766763) (:by |root) (:text |0.3)
                          |x $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                          |y $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:transition-duration)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||300ms)
                          |yT $ %{} :Expr (:at 1644379249743) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644379253831) (:by |Qr5ffqtY) (:text |:border-radius)
                              |j $ %{} :Leaf (:at 1644379255758) (:by |Qr5ffqtY) (:text "|\"50%")
        |css-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1659862123182) (:by |Qr5ffqtY) (:text |defstyle)
              |j $ %{} :Leaf (:at 1659862120946) (:by |Qr5ffqtY) (:text |css-task)
              |r $ %{} :Expr (:at 1659862123934) (:by |Qr5ffqtY)
                :data $ {}
                  |D $ %{} :Leaf (:at 1659862124490) (:by |Qr5ffqtY) (:text |{})
                  |T $ %{} :Expr (:at 1659862125256) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659862126833) (:by |Qr5ffqtY) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:position)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:absolute)
                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1519749681502) (:by |root) (:text "||0 16px")
                          |v $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:transition-duration)
                              |j $ %{} :Leaf (:at 1659804884847) (:by |Qr5ffqtY) (:text ||300ms)
                          |w $ %{} :Expr (:at 1518169780875) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518169785564) (:by |root) (:text |:transition-property)
                              |j $ %{} :Leaf (:at 1659862686118) (:by |Qr5ffqtY) (:text ||top,transform,outline,opacity,box-shadow)
                          |x $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:align-items)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:center)
                          |y $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:transform-origin)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text "||8% 50%")
                          |yT $ %{} :Expr (:at 1519746502576) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519746508250) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1519746508538) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519746508868) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1519746510920) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1519746511129) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1644387173655) (:by |Qr5ffqtY) (:text |100)
                          |yj $ %{} :Expr (:at 1519746592438) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519746594830) (:by |root) (:text |:min-width)
                              |j $ %{} :Leaf (:at 1644379286321) (:by |Qr5ffqtY) (:text |720)
                          |yr $ %{} :Expr (:at 1519746622115) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519746623973) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1519746627770) (:by |root) (:text |:move)
                          |yv $ %{} :Expr (:at 1644379303116) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644379306372) (:by |Qr5ffqtY) (:text |:border-radius)
                              |j $ %{} :Leaf (:at 1670583061351) (:by |Qr5ffqtY) (:text "|\"2px")
                          |yx $ %{} :Expr (:at 1644387110640) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644387118618) (:by |Qr5ffqtY) (:text |:box-shadow)
                              |j $ %{} :Expr (:at 1644387129618) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1644387130661) (:by |Qr5ffqtY) (:text |str)
                                  |T $ %{} :Leaf (:at 1644387149279) (:by |Qr5ffqtY) (:text "|\"0 0 2px ")
                                  |j $ %{} :Expr (:at 1644387131396) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1644387131972) (:by |Qr5ffqtY) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1644387133227) (:by |Qr5ffqtY) (:text |0)
                                      |r $ %{} :Leaf (:at 1644387133609) (:by |Qr5ffqtY) (:text |0)
                                      |v $ %{} :Leaf (:at 1644387154563) (:by |Qr5ffqtY) (:text |80)
                                      |x $ %{} :Leaf (:at 1644387138961) (:by |Qr5ffqtY) (:text |0.1)
                          |z $ %{} :Expr (:at 1659862420735) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862420735) (:by |Qr5ffqtY) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1659862420735) (:by |Qr5ffqtY) (:text |:move)
                  |b $ %{} :Expr (:at 1659862652798) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1659862655261) (:by |Qr5ffqtY) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1659862655567) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1659862655892) (:by |Qr5ffqtY) (:text |{})
                          |b $ %{} :Expr (:at 1659862656470) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862663078) (:by |Qr5ffqtY) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1659862665260) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659862665260) (:by |Qr5ffqtY) (:text |str)
                                  |b $ %{} :Leaf (:at 1659862745242) (:by |Qr5ffqtY) (:text "|\"2px 2px 8px ")
                                  |h $ %{} :Expr (:at 1659862665260) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1659862665260) (:by |Qr5ffqtY) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1659862665260) (:by |Qr5ffqtY) (:text |0)
                                      |h $ %{} :Leaf (:at 1659862665260) (:by |Qr5ffqtY) (:text |0)
                                      |l $ %{} :Leaf (:at 1659862704543) (:by |Qr5ffqtY) (:text |40)
                                      |o $ %{} :Leaf (:at 1659862731514) (:by |Qr5ffqtY) (:text |0.2)
                          |h $ %{} :Expr (:at 1659862718548) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862720397) (:by |Qr5ffqtY) (:text |:z-index)
                              |b $ %{} :Leaf (:at 1659862721340) (:by |Qr5ffqtY) (:text |999)
        |css-text $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1659862204364) (:by |Qr5ffqtY) (:text |defstyle)
              |j $ %{} :Leaf (:at 1659862198575) (:by |Qr5ffqtY) (:text |css-text)
              |r $ %{} :Expr (:at 1659862205570) (:by |Qr5ffqtY)
                :data $ {}
                  |D $ %{} :Leaf (:at 1659862206233) (:by |Qr5ffqtY) (:text |{})
                  |T $ %{} :Expr (:at 1659862206699) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659862208124) (:by |Qr5ffqtY) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1518169373634) (:by |root) (:text |600)
                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:background-color)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:transparent)
                          |v $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1508042006815) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508042007323) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1508042007642) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1508042007853) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1508042016595) (:by |root) (:text |20)
                          |x $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |16)
                          |y $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||Hind)
                          |yT $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:font-weight)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |300)
                          |yj $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text "||0 4px")
                          |yr $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1518169260451) (:by |root) (:text ||48px)
                          |yv $ %{} :Expr (:at 1518169229951) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518169231457) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1518169262217) (:by |root) (:text |48)
                          |yx $ %{} :Expr (:at 1519746553660) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519746558588) (:by |root) (:text |:min-width)
                              |j $ %{} :Leaf (:at 1644387009732) (:by |Qr5ffqtY) (:text |48)
                          |z $ %{} :Expr (:at 1659862377394) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862377394) (:by |Qr5ffqtY) (:text |:border)
                              |b $ %{} :Leaf (:at 1659862377394) (:by |Qr5ffqtY) (:text |:none)
                  |b $ %{} :Expr (:at 1659862300721) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659862305789) (:by |Qr5ffqtY) (:text "|\"$0:focus")
                      |L $ %{} :Expr (:at 1659862306485) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1659862306848) (:by |Qr5ffqtY) (:text |{})
                          |b $ %{} :Expr (:at 1659862310767) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862310767) (:by |Qr5ffqtY) (:text |:box-shadow)
                              |b $ %{} :Leaf (:at 1659862310767) (:by |Qr5ffqtY) (:text |:none)
                          |h $ %{} :Expr (:at 1659862371118) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862371118) (:by |Qr5ffqtY) (:text |:border)
                              |b $ %{} :Leaf (:at 1659862371118) (:by |Qr5ffqtY) (:text |:none)
        |effect-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1644773006861) (:by |Qr5ffqtY)
            :data $ {}
              |T $ %{} :Leaf (:at 1644773009499) (:by |Qr5ffqtY) (:text |defeffect)
              |j $ %{} :Leaf (:at 1644773006861) (:by |Qr5ffqtY) (:text |effect-in)
              |r $ %{} :Expr (:at 1644773006861) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1659804745129) (:by |Qr5ffqtY) (:text |done?)
              |v $ %{} :Expr (:at 1644773024211) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1644773029143) (:by |Qr5ffqtY) (:text |action)
                  |j $ %{} :Leaf (:at 1644773029536) (:by |Qr5ffqtY) (:text |el)
                  |r $ %{} :Leaf (:at 1644773032241) (:by |Qr5ffqtY) (:text |at-place?)
              |x $ %{} :Expr (:at 1668769894483) (:by |Qr5ffqtY)
                :data $ {}
                  |D $ %{} :Leaf (:at 1668769896599) (:by |Qr5ffqtY) (:text |case-default)
                  |L $ %{} :Leaf (:at 1668769898279) (:by |Qr5ffqtY) (:text |action)
                  |P $ %{} :Leaf (:at 1668769902714) (:by |Qr5ffqtY) (:text |nil)
                  |T $ %{} :Expr (:at 1668769977682) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1668769978299) (:by |Qr5ffqtY) (:text |:mount)
                      |T $ %{} :Expr (:at 1644773040196) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1668769977121) (:by |Qr5ffqtY) (:text |do)
                          |x $ %{} :Expr (:at 1644773352949) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644773357192) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Leaf (:at 1644773358422) (:by |Qr5ffqtY) (:text |el)
                              |r $ %{} :Leaf (:at 1644773360023) (:by |Qr5ffqtY) (:text |.-style)
                              |v $ %{} :Leaf (:at 1644773371549) (:by |Qr5ffqtY) (:text |.-opacity)
                              |x $ %{} :Expr (:at 1644773426550) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1644773427247) (:by |Qr5ffqtY) (:text |set!)
                                  |T $ %{} :Leaf (:at 1644773496803) (:by |Qr5ffqtY) (:text |0)
                          |y $ %{} :Expr (:at 1644773352949) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644773357192) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Leaf (:at 1644773358422) (:by |Qr5ffqtY) (:text |el)
                              |r $ %{} :Leaf (:at 1644773360023) (:by |Qr5ffqtY) (:text |.-style)
                              |v $ %{} :Leaf (:at 1644773378914) (:by |Qr5ffqtY) (:text |.-transform)
                              |x $ %{} :Expr (:at 1644773430748) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1644773431488) (:by |Qr5ffqtY) (:text |set!)
                                  |T $ %{} :Leaf (:at 1644773766732) (:by |Qr5ffqtY) (:text "|\"translate(8px,0px)")
                          |yT $ %{} :Expr (:at 1644773386529) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644773388899) (:by |Qr5ffqtY) (:text |js/setTimeout)
                              |j $ %{} :Expr (:at 1644773389432) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1644773389759) (:by |Qr5ffqtY) (:text |fn)
                                  |j $ %{} :Expr (:at 1644773390372) (:by |Qr5ffqtY)
                                    :data $ {}
                                  |r $ %{} :Expr (:at 1644773398026) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1644773398026) (:by |Qr5ffqtY) (:text |->)
                                      |j $ %{} :Leaf (:at 1644773398026) (:by |Qr5ffqtY) (:text |el)
                                      |r $ %{} :Leaf (:at 1644773398026) (:by |Qr5ffqtY) (:text |.-style)
                                      |v $ %{} :Leaf (:at 1644773398026) (:by |Qr5ffqtY) (:text |.-opacity)
                                      |x $ %{} :Expr (:at 1644773434570) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1644773435224) (:by |Qr5ffqtY) (:text |set!)
                                          |T $ %{} :Expr (:at 1659804757104) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1659804758299) (:by |Qr5ffqtY) (:text |if)
                                              |L $ %{} :Leaf (:at 1659804760682) (:by |Qr5ffqtY) (:text |done?)
                                              |P $ %{} :Leaf (:at 1659804761862) (:by |Qr5ffqtY) (:text |0.5)
                                              |T $ %{} :Leaf (:at 1644773406099) (:by |Qr5ffqtY) (:text |1)
                                  |v $ %{} :Expr (:at 1644773400047) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1644773400047) (:by |Qr5ffqtY) (:text |->)
                                      |j $ %{} :Leaf (:at 1644773400047) (:by |Qr5ffqtY) (:text |el)
                                      |r $ %{} :Leaf (:at 1644773400047) (:by |Qr5ffqtY) (:text |.-style)
                                      |v $ %{} :Leaf (:at 1644773400047) (:by |Qr5ffqtY) (:text |.-transform)
                                      |x $ %{} :Expr (:at 1644773438264) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1644773439232) (:by |Qr5ffqtY) (:text |set!)
                                          |T $ %{} :Leaf (:at 1644773761621) (:by |Qr5ffqtY) (:text "|\"translate(0px,0px)")
                              |r $ %{} :Leaf (:at 1668959293738) (:by |Qr5ffqtY) (:text |10)
                  |b $ %{} :Expr (:at 1668770048902) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1668770083509) (:by |Qr5ffqtY) (:text |:unmount)
                      |b $ %{} :Expr (:at 1668770119794) (:by |Qr5ffqtY)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1668770120362) (:by |Qr5ffqtY) (:text |let)
                          |L $ %{} :Expr (:at 1668770120581) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Expr (:at 1668770121183) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1668770177212) (:by |Qr5ffqtY) (:text |e2)
                                  |b $ %{} :Expr (:at 1668770157891) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1668770161763) (:by |Qr5ffqtY) (:text |.!cloneNode)
                                      |b $ %{} :Leaf (:at 1668770162710) (:by |Qr5ffqtY) (:text |el)
                                      |h $ %{} :Leaf (:at 1668959711435) (:by |Qr5ffqtY) (:text |true)
                              |b $ %{} :Expr (:at 1668959240564) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1668959241557) (:by |Qr5ffqtY) (:text |p)
                                  |b $ %{} :Expr (:at 1668959243379) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1668959243379) (:by |Qr5ffqtY) (:text |.-parentNode)
                                      |b $ %{} :Leaf (:at 1668959243379) (:by |Qr5ffqtY) (:text |el)
                          |P $ %{} :Expr (:at 1668959729465) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1668959729465) (:by |Qr5ffqtY) (:text |.!appendChild)
                              |b $ %{} :Leaf (:at 1668959729465) (:by |Qr5ffqtY) (:text |p)
                              |h $ %{} :Leaf (:at 1668959729465) (:by |Qr5ffqtY) (:text |e2)
                          |Y $ %{} :Expr (:at 1668960093362) (:by |Qr5ffqtY)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1668960097425) (:by |Qr5ffqtY) (:text |js/setTimeout)
                              |T $ %{} :Expr (:at 1668960098726) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1668960099486) (:by |Qr5ffqtY) (:text |fn)
                                  |L $ %{} :Expr (:at 1668960100901) (:by |Qr5ffqtY)
                                    :data $ {}
                                  |T $ %{} :Expr (:at 1668959992292) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1668959994618) (:by |Qr5ffqtY) (:text |->)
                                      |b $ %{} :Leaf (:at 1668959996446) (:by |Qr5ffqtY) (:text |e2)
                                      |h $ %{} :Leaf (:at 1668960000616) (:by |Qr5ffqtY) (:text |.-style)
                                      |l $ %{} :Leaf (:at 1668960004084) (:by |Qr5ffqtY) (:text |.-opacity)
                                      |o $ %{} :Expr (:at 1668960004878) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1668960005526) (:by |Qr5ffqtY) (:text |set!)
                                          |b $ %{} :Leaf (:at 1668960006597) (:by |Qr5ffqtY) (:text |0)
                                  |b $ %{} :Expr (:at 1668960139164) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |->)
                                      |b $ %{} :Leaf (:at 1668960359182) (:by |Qr5ffqtY) (:text |e2)
                                      |h $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |.-style)
                                      |l $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |.-transform)
                                      |o $ %{} :Expr (:at 1668960139164) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |set!)
                                          |b $ %{} :Leaf (:at 1668960371047) (:by |Qr5ffqtY) (:text "|\"translate(8px,0px)")
                                  |h $ %{} :Expr (:at 1668960139164) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |->)
                                      |b $ %{} :Leaf (:at 1668960359182) (:by |Qr5ffqtY) (:text |e2)
                                      |h $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |.-style)
                                      |l $ %{} :Leaf (:at 1670582726963) (:by |Qr5ffqtY) (:text |.-zIndex)
                                      |o $ %{} :Expr (:at 1668960139164) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1668960139164) (:by |Qr5ffqtY) (:text |set!)
                                          |b $ %{} :Leaf (:at 1670582729620) (:by |Qr5ffqtY) (:text |-1)
                              |b $ %{} :Leaf (:at 1668960215708) (:by |Qr5ffqtY) (:text |10)
                          |b $ %{} :Expr (:at 1668770190086) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1668770195651) (:by |Qr5ffqtY) (:text |js/setTimeout)
                              |b $ %{} :Expr (:at 1668770196906) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1668770197295) (:by |Qr5ffqtY) (:text |fn)
                                  |b $ %{} :Expr (:at 1668770197700) (:by |Qr5ffqtY)
                                    :data $ {}
                                  |h $ %{} :Expr (:at 1668770203717) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1668770205724) (:by |Qr5ffqtY) (:text |.!remove)
                                      |b $ %{} :Leaf (:at 1668770207641) (:by |Qr5ffqtY) (:text |e2)
                              |h $ %{} :Leaf (:at 1668960367023) (:by |Qr5ffqtY) (:text |300)
        |on-keydown $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |on-keydown)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1518020148144) (:by |root) (:text |task-id)
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
              |v $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |event)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508039312342) (:by |root) (:text |:event)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |e)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |shift?)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |.-shiftKey)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |event)
                          |l $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908745711) (:by |Qr5ffqtY) (:text |ctrl?)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908749837) (:by |Qr5ffqtY) (:text |.-ctrlKey)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |event)
                          |n $ %{} :Expr (:at 1508174151528) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508174152875) (:by |root) (:text |meta?)
                              |j $ %{} :Expr (:at 1508174153222) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508174156235) (:by |root) (:text |.-metaKey)
                                  |j $ %{} :Leaf (:at 1508174157893) (:by |root) (:text |event)
                          |r $ %{} :Expr (:at 1508173477053) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508173477522) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1508173478381) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508173479705) (:by |root) (:text |:keycode)
                                  |j $ %{} :Leaf (:at 1508173479927) (:by |root) (:text |e)
                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |cond)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |and)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |shift?)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051646728) (:by |Qr5ffqtY) (:text |13)
                                      |r $ %{} :Leaf (:at 1508173557967) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |not)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629051701885) (:by |Qr5ffqtY) (:text |.blank?)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |text)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/add-before)
                                      |r $ %{} :Leaf (:at 1518020160289) (:by |root) (:text |task-id)
                          |n $ %{} :Expr (:at 1508040590032) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1508040654580) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508040655341) (:by |root) (:text |and)
                                  |L $ %{} :Expr (:at 1508040656194) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629051703490) (:by |Qr5ffqtY) (:text |.blank?)
                                      |j $ %{} :Leaf (:at 1508040660781) (:by |root) (:text |text)
                                  |T $ %{} :Expr (:at 1508174167900) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1508174169283) (:by |root) (:text |and)
                                      |T $ %{} :Expr (:at 1508174138663) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1508174139772) (:by |root) (:text |or)
                                          |L $ %{} :Leaf (:at 1508174142107) (:by |root) (:text |shift?)
                                          |P $ %{} :Leaf (:at 1508174149919) (:by |root) (:text |meta?)
                                      |j $ %{} :Expr (:at 1508040591780) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508040590666) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1629051657275) (:by |Qr5ffqtY) (:text |8)
                                          |r $ %{} :Leaf (:at 1508173563705) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/delete)
                                  |r $ %{} :Expr (:at 1518020586054) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1518020587211) (:by |root) (:text |[])
                                      |T $ %{} :Leaf (:at 1518020505623) (:by |root) (:text |task-id)
                                      |j $ %{} :Leaf (:at 1518020588450) (:by |root) (:text |idx)
                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |not)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |shift?)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051648560) (:by |Qr5ffqtY) (:text |13)
                                      |r $ %{} :Leaf (:at 1508173566438) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |not)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629051705376) (:by |Qr5ffqtY) (:text |.blank?)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |text)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/add-after)
                                      |r $ %{} :Leaf (:at 1518020154628) (:by |root) (:text |task-id)
                          |s $ %{} :Expr (:at 1665904945069) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Expr (:at 1665904945069) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |and)
                                  |b $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |meta?)
                                  |e $ %{} :Leaf (:at 1665908753015) (:by |Qr5ffqtY) (:text |ctrl?)
                                  |h $ %{} :Expr (:at 1665904945069) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |=)
                                      |b $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |38)
                                      |h $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |code)
                              |b $ %{} :Expr (:at 1665904945069) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |do)
                                  |b $ %{} :Expr (:at 1665904945069) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |dispatch!)
                                      |b $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |:task/move-up)
                                      |h $ %{} :Leaf (:at 1665905484395) (:by |Qr5ffqtY) (:text |task-id)
                                  |h $ %{} :Expr (:at 1665904945069) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |.!preventDefault)
                                      |b $ %{} :Leaf (:at 1665904945069) (:by |Qr5ffqtY) (:text |event)
                          |t $ %{} :Expr (:at 1508173458984) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1508173460476) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508173460254) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1508173465027) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508173465279) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051681915) (:by |Qr5ffqtY) (:text |38)
                                      |r $ %{} :Leaf (:at 1508173486059) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1508174103476) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508174104109) (:by |root) (:text |do)
                                  |T $ %{} :Expr (:at 1508173486970) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508173488866) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1739857101808) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1739857103731) (:by |Qr5ffqtY) (:text |::)
                                          |T $ %{} :Leaf (:at 1508173536280) (:by |root) (:text |:pointer/before)
                                  |j $ %{} :Expr (:at 1508174026210) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665829052466) (:by |Qr5ffqtY) (:text |.!preventDefault)
                                      |j $ %{} :Leaf (:at 1508174029628) (:by |root) (:text |event)
                          |u $ %{} :Expr (:at 1508173458984) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1508173460476) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508173460254) (:by |root) (:text |and)
                                  |b $ %{} :Leaf (:at 1665904959073) (:by |Qr5ffqtY) (:text |meta?)
                                  |f $ %{} :Leaf (:at 1665908754296) (:by |Qr5ffqtY) (:text |ctrl?)
                                  |j $ %{} :Expr (:at 1508173465027) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508173465279) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051689756) (:by |Qr5ffqtY) (:text |40)
                                      |r $ %{} :Leaf (:at 1508173486059) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1508174107937) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508174108608) (:by |root) (:text |do)
                                  |T $ %{} :Expr (:at 1508173486970) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508173488866) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Leaf (:at 1665904964161) (:by |Qr5ffqtY) (:text |:task/move-down)
                                      |n $ %{} :Leaf (:at 1665905476326) (:by |Qr5ffqtY) (:text |task-id)
                                  |j $ %{} :Expr (:at 1508174026210) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665829051004) (:by |Qr5ffqtY) (:text |.!preventDefault)
                                      |j $ %{} :Leaf (:at 1508174029628) (:by |root) (:text |event)
                          |uT $ %{} :Expr (:at 1508173458984) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1508173460476) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508173460254) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1508173465027) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508173465279) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051689756) (:by |Qr5ffqtY) (:text |40)
                                      |r $ %{} :Leaf (:at 1508173486059) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1508174107937) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508174108608) (:by |root) (:text |do)
                                  |T $ %{} :Expr (:at 1508173486970) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508173488866) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1739857106453) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1739857107195) (:by |Qr5ffqtY) (:text |::)
                                          |T $ %{} :Leaf (:at 1508173542132) (:by |root) (:text |:pointer/after)
                                  |j $ %{} :Expr (:at 1508174026210) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665829051004) (:by |Qr5ffqtY) (:text |.!preventDefault)
                                      |j $ %{} :Leaf (:at 1508174029628) (:by |root) (:text |event)
                          |v $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |and)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |shift?)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051669869) (:by |Qr5ffqtY) (:text |9)
                                      |r $ %{} :Leaf (:at 1508173570136) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |do)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |.preventDefault)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |event)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1739857111335) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1739857111969) (:by |Qr5ffqtY) (:text |::)
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer/before)
                          |x $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |not)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |shift?)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1629051671236) (:by |Qr5ffqtY) (:text |9)
                                      |r $ %{} :Leaf (:at 1508173572041) (:by |root) (:text |code)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |do)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |.preventDefault)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |event)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1739857113851) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1739857114539) (:by |Qr5ffqtY) (:text |::)
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer/after)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500452996813) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.comp.task)
            |v $ %{} :Expr (:at 1500452996813) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629051583463) (:by |Qr5ffqtY) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518014658045) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ui)
                |t $ %{} :Expr (:at 1659862096748) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659862100371) (:by |Qr5ffqtY) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1659862101753) (:by |Qr5ffqtY) (:text |:as)
                    |h $ %{} :Leaf (:at 1659862102477) (:by |Qr5ffqtY) (:text |css)
                |v $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553789395406) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defcomp)
                        |j $ %{} :Leaf (:at 1500454585586) (:by |root) (:text |div)
                        |r $ %{} :Leaf (:at 1500454586236) (:by |root) (:text |span)
                        |v $ %{} :Leaf (:at 1500455242531) (:by |root) (:text |input)
                        |x $ %{} :Leaf (:at 1518016020262) (:by |root) (:text |<>)
                        |y $ %{} :Leaf (:at 1644773079784) (:by |Qr5ffqtY) (:text |defeffect)
                |w $ %{} :Expr (:at 1659862144963) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659862146994) (:by |Qr5ffqtY) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1659862148177) (:by |Qr5ffqtY) (:text |:refer)
                    |h $ %{} :Expr (:at 1659862148394) (:by |Qr5ffqtY)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1659862150730) (:by |Qr5ffqtY) (:text |defstyle)
                |x $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1508038810729) (:by |root) (:text |=<)
                |yr $ %{} :Expr (:at 1519745768941) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519745779274) (:by |root) (:text |app.util.dom)
                    |r $ %{} :Leaf (:at 1519745780082) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519745780297) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519745984439) (:by |root) (:text |get-width)
                |yv $ %{} :Expr (:at 1638686519855) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1638686521895) (:by |Qr5ffqtY) (:text |app.config)
                    |j $ %{} :Leaf (:at 1638686522828) (:by |Qr5ffqtY) (:text |:refer)
                    |r $ %{} :Expr (:at 1638686523112) (:by |Qr5ffqtY)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1638686525622) (:by |Qr5ffqtY) (:text |demo?)
    |app.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-todolist)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |tasks)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |pointer)
                  |r $ %{} :Leaf (:at 1518169605614) (:by |root) (:text |dragging-id)
                  |v $ %{} :Leaf (:at 1519749550140) (:by |root) (:text |dropping-id)
              |v $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                              |v $ %{} :Expr (:at 1508042150699) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508042153843) (:by |root) (:text |:position)
                                  |j $ %{} :Leaf (:at 1508042155356) (:by |root) (:text |:relative)
                              |x $ %{} :Expr (:at 1518022109966) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518022111175) (:by |root) (:text |:height)
                                  |j $ %{} :Expr (:at 1518022111706) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518022112549) (:by |root) (:text |*)
                                      |j $ %{} :Leaf (:at 1518022113585) (:by |root) (:text |40)
                                      |r $ %{} :Expr (:at 1518022114350) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518022116040) (:by |root) (:text |count)
                                          |j $ %{} :Leaf (:at 1518022117217) (:by |root) (:text |tasks)
                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:position)
                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:relative)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:height)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |str)
                                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |+)
                                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |8)
                                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |*)
                                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |40)
                                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |count)
                                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |tasks)
                                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||px)
                      |r $ %{} :Expr (:at 1508042293789) (:by |root)
                        :data $ {}
                          |5 $ %{} :Leaf (:at 1509176536853) (:by |root) (:text |list->)
                          |L $ %{} :Expr (:at 1508042295066) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508042295408) (:by |root) (:text |{})
                          |T $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629051716784) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |tasks)
                              |l $ %{} :Expr (:at 1629052107509) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052108649) (:by |Qr5ffqtY) (:text |.to-list)
                              |n $ %{} :Expr (:at 1518020409376) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629051718649) (:by |Qr5ffqtY) (:text |.sort-by)
                                  |j $ %{} :Expr (:at 1518020412129) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518020413564) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1518020413908) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629051730814) (:by |Qr5ffqtY) (:text |pair)
                                      |r $ %{} :Expr (:at 1629051720272) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629051723171) (:by |Qr5ffqtY) (:text |let[])
                                          |L $ %{} :Expr (:at 1629051725679) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |j $ %{} :Leaf (:at 1629051725679) (:by |Qr5ffqtY) (:text |task-id)
                                              |r $ %{} :Leaf (:at 1629051725679) (:by |Qr5ffqtY) (:text |task)
                                          |P $ %{} :Leaf (:at 1629051728115) (:by |Qr5ffqtY) (:text |pair)
                                          |T $ %{} :Expr (:at 1518020422133) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518020424119) (:by |root) (:text |:sort-id)
                                              |j $ %{} :Leaf (:at 1518020424710) (:by |root) (:text |task)
                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |map-indexed)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                                          |j $ %{} :Leaf (:at 1629051564600) (:by |Qr5ffqtY) (:text |pair)
                                      |r $ %{} :Expr (:at 1629051560686) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629051567128) (:by |Qr5ffqtY) (:text |let[])
                                          |L $ %{} :Expr (:at 1629051568123) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |j $ %{} :Leaf (:at 1629051568123) (:by |Qr5ffqtY) (:text |task-id)
                                              |r $ %{} :Leaf (:at 1629051568123) (:by |Qr5ffqtY) (:text |task)
                                          |P $ %{} :Leaf (:at 1629051569920) (:by |Qr5ffqtY) (:text |pair)
                                          |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                                              |f $ %{} :Leaf (:at 1518019520378) (:by |root) (:text |task-id)
                                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |let)
                                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |pointed?)
                                                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                                                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |pointer)
                                                              |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-task)
                                                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
                                                      |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |idx)
                                                      |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |pointed?)
                                                      |x $ %{} :Leaf (:at 1518620614547) (:by |root) (:text |dragging-id)
                                                      |y $ %{} :Leaf (:at 1519749547770) (:by |root) (:text |dropping-id)
                              |v $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052105014) (:by |Qr5ffqtY) (:text |.sort-by)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |first)
                      |v $ %{} :Expr (:at 1508042139945) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508042142510) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1508042182944) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1508042185292) (:by |root) (:text |{})
                              |P $ %{} :Expr (:at 1659862068940) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659862068940) (:by |Qr5ffqtY) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1659862068940) (:by |Qr5ffqtY) (:text |css-cursor)
                              |b $ %{} :Expr (:at 1508042187583) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508042188737) (:by |root) (:text |:style)
                                  |P $ %{} :Expr (:at 1659862062354) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1659862062760) (:by |Qr5ffqtY) (:text |{})
                                      |b $ %{} :Expr (:at 1659862063385) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |:top)
                                          |b $ %{} :Expr (:at 1659862063385) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |str)
                                              |b $ %{} :Expr (:at 1659862063385) (:by |Qr5ffqtY)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |+)
                                                  |b $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |2)
                                                  |h $ %{} :Expr (:at 1659862063385) (:by |Qr5ffqtY)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |*)
                                                      |b $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |49)
                                                      |h $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text |pointer)
                                              |h $ %{} :Leaf (:at 1659862063385) (:by |Qr5ffqtY) (:text ||px)
        |css-cursor $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1659862038485) (:by |Qr5ffqtY)
            :data $ {}
              |T $ %{} :Leaf (:at 1659862048439) (:by |Qr5ffqtY) (:text |defstyle)
              |b $ %{} :Leaf (:at 1659862038485) (:by |Qr5ffqtY) (:text |css-cursor)
              |h $ %{} :Expr (:at 1659862038485) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1659862049702) (:by |Qr5ffqtY) (:text |{})
                  |b $ %{} :Expr (:at 1659862050096) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1659862051994) (:by |Qr5ffqtY) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |{})
                          |h $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:left)
                              |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |-20)
                          |l $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:width)
                              |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |8)
                          |o $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:height)
                              |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |40)
                          |q $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:background-color)
                              |b $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |30)
                                  |h $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |90)
                                  |l $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |80)
                          |s $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:position)
                              |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:absolute)
                          |t $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:transition)
                              |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text ||600ms)
                          |u $ %{} :Expr (:at 1659862052541) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1659862052541) (:by |Qr5ffqtY) (:text "|\"4px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500452996813) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.comp.todolist)
            |v $ %{} :Expr (:at 1500452996813) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629051739222) (:by |Qr5ffqtY) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1518014663987) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1500454597345) (:by |root) (:text |[])
                    |T $ %{} :Leaf (:at 1553789402728) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1500454599618) (:by |root) (:text |[])
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defcomp)
                        |j $ %{} :Leaf (:at 1500454601236) (:by |root) (:text |div)
                        |r $ %{} :Leaf (:at 1500454602059) (:by |root) (:text |button)
                        |v $ %{} :Leaf (:at 1509176551611) (:by |root) (:text |list->)
                |w $ %{} :Expr (:at 1659862041286) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659862043176) (:by |Qr5ffqtY) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1659862044169) (:by |Qr5ffqtY) (:text |:refer)
                    |h $ %{} :Expr (:at 1659862044364) (:by |Qr5ffqtY)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1659862046091) (:by |Qr5ffqtY) (:text |defstyle)
                |x $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1508038838277) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.comp.task)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |comp-task)
                |yj $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |clojure.string)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |string)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |demo? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1638686464741) (:by |Qr5ffqtY)
            :data $ {}
              |T $ %{} :Leaf (:at 1638686548312) (:by |Qr5ffqtY) (:text |def)
              |j $ %{} :Leaf (:at 1638686472088) (:by |Qr5ffqtY) (:text |demo?)
              |r $ %{} :Expr (:at 1638686464741) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1638686479853) (:by |Qr5ffqtY) (:text |=)
                  |j $ %{} :Leaf (:at 1638686484391) (:by |Qr5ffqtY) (:text "|\"true")
                  |r $ %{} :Expr (:at 1638686485189) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1638686488786) (:by |Qr5ffqtY) (:text |get-env)
                      |j $ %{} :Leaf (:at 1638686491771) (:by |Qr5ffqtY) (:text "|\"demo")
                      |n $ %{} :Leaf (:at 1658750491453) (:by |Qr5ffqtY) (:text "|\"false")
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789425694) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789425694) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1553789425694) (:by |root) (:text |dev?)
              |r $ %{} :Expr (:at 1629052090429) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629052090653) (:by |Qr5ffqtY) (:text |=)
                  |j $ %{} :Leaf (:at 1629052092647) (:by |Qr5ffqtY) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629052093170) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629052094381) (:by |Qr5ffqtY) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629052095979) (:by |Qr5ffqtY) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658750485449) (:by |Qr5ffqtY) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789435594) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789435594) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1553789435594) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1553789435594) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789435594) (:by |root) (:text |{})
                  |y $ %{} :Expr (:at 1553789435594) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789435594) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1553789548498) (:by |root) (:text "|\"Pudica")
                  |yT $ %{} :Expr (:at 1553789435594) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789435594) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1553789552970) (:by |root) (:text "|\"http://cdn.tiye.me/logo/pudica.png")
                  |yj $ %{} :Expr (:at 1553789435594) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789435594) (:by |root) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1553789532035) (:by |root) (:text "|\"pudica-schedule")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1528871410284) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1528871410284) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1528871410284) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789628765) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629052162285) (:by |Qr5ffqtY) (:text |defatom)
              |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |->)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel-schema/reel)
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |schema/store)
                  |v $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |schema/store)
        |adjust-focus! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789643172) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |adjust-focus!)
              |r $ %{} :Expr (:at 1553789643172) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1553789643172) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |js/setTimeout)
                  |j $ %{} :Expr (:at 1553789643172) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1553789643172) (:by |root)
                        :data $ {}
                      |r $ %{} :Expr (:at 1553789643172) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |let)
                          |j $ %{} :Expr (:at 1553789643172) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1553789643172) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |pointer)
                                  |j $ %{} :Expr (:at 1553789643172) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |:pointer)
                                      |j $ %{} :Expr (:at 1553789712778) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1553789713923) (:by |root) (:text |:store)
                                          |T $ %{} :Leaf (:at 1553789716026) (:by |root) (:text |@*reel)
                              |j $ %{} :Expr (:at 1553789643172) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |maybe-input)
                                  |j $ %{} :Expr (:at 1553789643172) (:by |root)
                                    :data $ {}
                                      |j $ %{} :Leaf (:at 1629052534836) (:by |Qr5ffqtY) (:text |js/document.getElementById)
                                      |r $ %{} :Expr (:at 1553789643172) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |str)
                                          |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text ||input-)
                                          |r $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |pointer)
                          |r $ %{} :Expr (:at 1553789643172) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |;)
                              |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |println)
                              |r $ %{} :Leaf (:at 1553789643172) (:by |root) (:text "||Focus to:")
                              |v $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |pointer)
                              |x $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |maybe-input)
                          |v $ %{} :Expr (:at 1553789643172) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1553789643172) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1553789643172) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |some?)
                                      |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |maybe-input)
                                  |r $ %{} :Expr (:at 1629052566418) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052567746) (:by |Qr5ffqtY) (:text |not)
                                      |T $ %{} :Expr (:at 1553789643172) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052565027) (:by |Qr5ffqtY) (:text |identical?)
                                          |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |maybe-input)
                                          |r $ %{} :Expr (:at 1553789643172) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |.-activeElement)
                                              |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |js/document)
                              |r $ %{} :Expr (:at 1553789643172) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052531333) (:by |Qr5ffqtY) (:text |.!focus)
                                  |j $ %{} :Leaf (:at 1553789643172) (:by |root) (:text |maybe-input)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789628765) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |when)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |println)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text "|\"Dispatch:")
                      |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |op)
              |x $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789628765) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
              |t $ %{} :Expr (:at 1629052069673) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629052070881) (:by |Qr5ffqtY) (:text |if)
                  |j $ %{} :Leaf (:at 1629052073387) (:by |Qr5ffqtY) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1629052074828) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629052081140) (:by |Qr5ffqtY) (:text |load-console-formatter!)
              |v $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |if)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text "|\"release")
              |y $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |render-app!)
              |yT $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1553789628765) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052021799) (:by |Qr5ffqtY) (:text |r)
                          |j $ %{} :Leaf (:at 1629052022808) (:by |Qr5ffqtY) (:text |p)
                      |r $ %{} :Expr (:at 1553789628765) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |render-app!)
              |yb $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1553789666930) (:by |root) (:text |:focus)
                  |v $ %{} :Expr (:at 1629052493454) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1629052494253) (:by |Qr5ffqtY) (:text |fn)
                      |L $ %{} :Expr (:at 1629052494633) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052495526) (:by |Qr5ffqtY) (:text |r)
                          |j $ %{} :Leaf (:at 1629052496234) (:by |Qr5ffqtY) (:text |p)
                      |T $ %{} :Expr (:at 1629052498188) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789668102) (:by |root) (:text |adjust-focus!)
              |yj $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1629052067782) (:by |Qr5ffqtY) (:text ||k)
                  |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |dispatch!)
              |yr $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1629052065121) (:by |Qr5ffqtY) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |persist-storage!)
              |yw $ %{} :Expr (:at 1673061263502) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673061265951) (:by |Qr5ffqtY) (:text |flipped)
                  |b $ %{} :Leaf (:at 1673061272457) (:by |Qr5ffqtY) (:text |js/setInterval)
                  |h $ %{} :Leaf (:at 1673061280251) (:by |Qr5ffqtY) (:text |60000)
                  |l $ %{} :Leaf (:at 1673061278585) (:by |Qr5ffqtY) (:text |persist-storage!)
              |ywT $ %{} :Expr (:at 1695730426972) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695730432690) (:by |Qr5ffqtY) (:text |js/window.addEventListener)
                  |b $ %{} :Leaf (:at 1695730438507) (:by |Qr5ffqtY) (:text "|\"visibilitychange")
                  |h $ %{} :Expr (:at 1695730485908) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695730486457) (:by |Qr5ffqtY) (:text |fn)
                      |L $ %{} :Expr (:at 1695730486802) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695730491730) (:by |Qr5ffqtY) (:text |_)
                      |T $ %{} :Expr (:at 1695730494329) (:by |Qr5ffqtY)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695730495731) (:by |Qr5ffqtY) (:text |if)
                          |L $ %{} :Expr (:at 1695730516439) (:by |Qr5ffqtY)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695730517744) (:by |Qr5ffqtY) (:text |not=)
                              |L $ %{} :Leaf (:at 1695730524558) (:by |Qr5ffqtY) (:text "|\"visible")
                              |T $ %{} :Leaf (:at 1695730521151) (:by |Qr5ffqtY) (:text |js/document.visibilityState)
                          |T $ %{} :Expr (:at 1695730496197) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695730439286) (:by |Qr5ffqtY) (:text |persist-storage!)
              |yx $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553789628765) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1553789628765) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1629052061522) (:by |Qr5ffqtY) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |when)
                      |j $ %{} :Expr (:at 1553789628765) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1553789628765) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1688745286773) (:by |Qr5ffqtY)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688745287357) (:by |Qr5ffqtY) (:text |::)
                              |L $ %{} :Leaf (:at 1688745287724) (:by |Qr5ffqtY) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1553789628765) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629051986316) (:by |Qr5ffqtY) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |raw)
              |yy $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789628765) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1673061348660) (:by |Qr5ffqtY) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789628765) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |persist-storage!)
              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629053266824) (:by |Qr5ffqtY) (:text |?)
                  |T $ %{} :Leaf (:at 1629051988969) (:by |Qr5ffqtY) (:text |e)
              |t $ %{} :Expr (:at 1695730448996) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695730545823) (:by |Qr5ffqtY) (:text |println)
                  |X $ %{} :Leaf (:at 1695730476180) (:by |Qr5ffqtY) (:text "|\"Saved to storage:")
                  |b $ %{} :Expr (:at 1695730458547) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1736788346764) (:by |Qr5ffqtY) (:text |.!toISOString)
                      |T $ %{} :Expr (:at 1695730455199) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695730456250) (:by |Qr5ffqtY) (:text |new)
                          |b $ %{} :Leaf (:at 1695730458153) (:by |Qr5ffqtY) (:text |js/Date)
              |v $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1673061301925) (:by |Qr5ffqtY) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |config/site)
                  |v $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629051994904) (:by |Qr5ffqtY) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1553789628765) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:store)
                          |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
            :data $ {}
              |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |defn)
              |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |reload!)
              |r $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                :data $ {}
              |v $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |if)
                  |j $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |nil?)
                      |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |build-errors)
                  |r $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |do)
                      |j $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |:changes)
                      |r $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |:changes)
                          |v $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |fn)
                              |j $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |reel)
                                  |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |prev)
                              |r $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |render-app!)
                      |x $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |*reel)
                          |r $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |updater)
                      |y $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text "|\"Ok")
                  |v $ %{} :Expr (:at 1629052037213) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1629052037213) (:by |Qr5ffqtY) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553789628765) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1553789628765) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629052015308) (:by |Qr5ffqtY) (:text |render!)
                  |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1553789628765) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1629052210855) (:by |Qr5ffqtY) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1553789628765) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1553789628765) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1553789628765) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1553789628765) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |comp-container)
                |v $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1553789628765) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |updater)
                |x $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |schema)
                |y $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1553789628765) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |listen-devtools!)
                |yT $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1553789628765) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel-updater)
                        |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |refresh-reel)
                |yj $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |reel-schema)
                |yv $ %{} :Expr (:at 1553789628765) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1553789628765) (:by |root) (:text |config)
                |yx $ %{} :Expr (:at 1629052048281) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629052048281) (:by |Qr5ffqtY) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629052048281) (:by |Qr5ffqtY) (:text |:default)
                    |r $ %{} :Leaf (:at 1629052048281) (:by |Qr5ffqtY) (:text |build-errors)
                |yy $ %{} :Expr (:at 1629052048281) (:by |Qr5ffqtY)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629052048281) (:by |Qr5ffqtY) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629052048281) (:by |Qr5ffqtY) (:text |:default)
                    |r $ %{} :Leaf (:at 1629052048281) (:by |Qr5ffqtY) (:text |hud!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019220789) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1518019225604) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1553789969986) (:by |root) (:text "|\"root")
                              |T $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |merge)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
                                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:id)
                                          |j $ %{} :Leaf (:at 1518020119145) (:by |root) (:text ||root)
                                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:text)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||)
                                      |v $ %{} :Expr (:at 1518019236084) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518019251207) (:by |root) (:text |:sort-id)
                                          |j $ %{} :Leaf (:at 1518019256019) (:by |root) (:text |mid-id)
                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |0)
                  |u $ %{} :Expr (:at 1518169561229) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518169577977) (:by |root) (:text |:dragging-id)
                      |j $ %{} :Leaf (:at 1518169563984) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1519749430672) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519749432753) (:by |root) (:text |:dropping-id)
                      |j $ %{} :Leaf (:at 1519749433304) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                  |y $ %{} :Expr (:at 1525625981566) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525625984494) (:by |root) (:text |:archives)
                      |j $ %{} :Expr (:at 1525625984841) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525625985128) (:by |root) (:text |{})
        |task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |task)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text ||)
                  |v $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:done?)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |false)
                  |x $ %{} :Expr (:at 1518018886693) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518019264312) (:by |root) (:text |:sort-id)
                      |j $ %{} :Leaf (:at 1518018896949) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1525887075824) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525887081583) (:by |root) (:text |:created-time)
                      |j $ %{} :Leaf (:at 1525887082472) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1525887083686) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525887098055) (:by |root) (:text |:done-time)
                      |j $ %{} :Leaf (:at 1525887087063) (:by |root) (:text |nil)
                  |yj $ %{} :Expr (:at 1525887088907) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525887094357) (:by |root) (:text |:archived-time)
                      |j $ %{} :Leaf (:at 1525887094890) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500452996813) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.schema)
            |r $ %{} :Expr (:at 1518017846974) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1518017850047) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1518017850303) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1518017852715) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1518017863088) (:by |root) (:text |bisection-key.core)
                    |r $ %{} :Leaf (:at 1518017864572) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518017864903) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1518017866004) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1518019044262) (:by |root) (:text |mid-id)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1525626793414) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1525626795440) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1525626793414) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1525626793414) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1525626796852) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1525626798148) (:by |root) (:text |ui/link)
                  |r $ %{} :Expr (:at 1525626864572) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525626864864) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1525626865129) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525626866414) (:by |root) (:text |:margin)
                          |j $ %{} :Leaf (:at 1525626876110) (:by |root) (:text "|\"0 8px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1525626791002) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1525626791002) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1525626791002) (:by |root) (:text |app.style)
            |r $ %{} :Expr (:at 1525626799833) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1525626800476) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1525626800729) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1525626800906) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1525626803778) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1525626806821) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1525626807248) (:by |root) (:text |ui)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |add-after $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |add-after)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1518019749908) (:by |root) (:text |task-id)
                  |r $ %{} :Leaf (:at 1518019947530) (:by |root) (:text |op-id)
                  |v $ %{} :Leaf (:at 1525887423326) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1518019758856) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1518019759620) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1518019760040) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518019760187) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019765438) (:by |root) (:text |base-task)
                          |j $ %{} :Expr (:at 1518019765902) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019767065) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1518019769683) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1518019769925) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019770168) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1518019771006) (:by |root) (:text |:tasks)
                                  |r $ %{} :Leaf (:at 1518019773290) (:by |root) (:text |task-id)
                      |j $ %{} :Expr (:at 1518019774756) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019779167) (:by |root) (:text |base-sort-id)
                          |j $ %{} :Expr (:at 1518019779492) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019781989) (:by |root) (:text |:sort-id)
                              |j $ %{} :Leaf (:at 1518019783682) (:by |root) (:text |base-task)
                      |r $ %{} :Expr (:at 1518019785163) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019789911) (:by |root) (:text |all-sort-ids)
                          |j $ %{} :Expr (:at 1518019790383) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629052597785) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Expr (:at 1518019801548) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019802945) (:by |root) (:text |:tasks)
                                  |j $ %{} :Leaf (:at 1518019803592) (:by |root) (:text |store)
                              |l $ %{} :Expr (:at 1629052812195) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052813635) (:by |Qr5ffqtY) (:text |.to-list)
                              |n $ %{} :Expr (:at 1518019826647) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052816469) (:by |Qr5ffqtY) (:text |map)
                                  |j $ %{} :Leaf (:at 1629052817616) (:by |Qr5ffqtY) (:text |last)
                              |t $ %{} :Expr (:at 1518019829572) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019830099) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1629052613793) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052614448) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1629052614844) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052615199) (:by |Qr5ffqtY) (:text |x)
                                      |T $ %{} :Expr (:at 1629052616092) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518019832075) (:by |root) (:text |:sort-id)
                                          |j $ %{} :Leaf (:at 1629052619568) (:by |Qr5ffqtY) (:text |x)
                              |w $ %{} :Expr (:at 1518019837699) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052622721) (:by |Qr5ffqtY) (:text |sort)
                                  |j $ %{} :Leaf (:at 1629052629817) (:by |Qr5ffqtY) (:text |&compare)
                      |v $ %{} :Expr (:at 1518019840095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019857468) (:by |root) (:text |sort-id-after)
                          |j $ %{} :Expr (:at 1518020281172) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518020286235) (:by |root) (:text |first)
                              |T $ %{} :Expr (:at 1518019858194) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019864779) (:by |root) (:text |filter)
                                  |j $ %{} :Leaf (:at 1518019869570) (:by |root) (:text |all-sort-ids)
                                  |r $ %{} :Expr (:at 1629052594857) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629052594857) (:by |Qr5ffqtY) (:text |fn)
                                      |j $ %{} :Expr (:at 1629052594857) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052594857) (:by |Qr5ffqtY) (:text |x)
                                      |r $ %{} :Expr (:at 1629052594857) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052594857) (:by |Qr5ffqtY) (:text |>)
                                          |j $ %{} :Leaf (:at 1629052594857) (:by |Qr5ffqtY) (:text |x)
                                          |r $ %{} :Leaf (:at 1629052594857) (:by |Qr5ffqtY) (:text |base-sort-id)
                      |x $ %{} :Expr (:at 1518019882212) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019884403) (:by |root) (:text |new-sort-id)
                          |j $ %{} :Expr (:at 1518019884675) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019893729) (:by |root) (:text |bisect)
                              |j $ %{} :Expr (:at 1631341675715) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1631341677258) (:by |Qr5ffqtY) (:text |or)
                                  |T $ %{} :Leaf (:at 1518019921140) (:by |root) (:text |base-sort-id)
                                  |j $ %{} :Leaf (:at 1631341680953) (:by |Qr5ffqtY) (:text |mid-id)
                              |r $ %{} :Expr (:at 1518019921692) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019921977) (:by |root) (:text |or)
                                  |j $ %{} :Leaf (:at 1518019925043) (:by |root) (:text |sort-id-after)
                                  |r $ %{} :Leaf (:at 1518019926860) (:by |root) (:text |max-id)
                      |y $ %{} :Expr (:at 1518019933345) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019934843) (:by |root) (:text |new-task)
                          |j $ %{} :Expr (:at 1518019935240) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019937568) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1518019940023) (:by |root) (:text |schema/task)
                              |r $ %{} :Expr (:at 1518019940354) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518020249946) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1518019940897) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518019941363) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1518019945262) (:by |root) (:text |op-id)
                                  |r $ %{} :Expr (:at 1518019954234) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518019955533) (:by |root) (:text |:sort-id)
                                      |j $ %{} :Leaf (:at 1518019958918) (:by |root) (:text |new-sort-id)
                                  |v $ %{} :Expr (:at 1525887130131) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525887131985) (:by |root) (:text |:created-time)
                                      |j $ %{} :Leaf (:at 1525887134307) (:by |root) (:text |op-time)
                  |T $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |->)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019974973) (:by |root) (:text |assoc-in)
                          |j $ %{} :Expr (:at 1518019978110) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518019979037) (:by |root) (:text |[])
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1518019981686) (:by |root) (:text |op-id)
                          |r $ %{} :Leaf (:at 1518019984448) (:by |root) (:text |new-task)
                      |v $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |inc)
        |add-before $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |add-before)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1518020002373) (:by |root) (:text |task-id)
                  |r $ %{} :Leaf (:at 1518019992520) (:by |root) (:text |op-id)
                  |v $ %{} :Leaf (:at 1525887417201) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1518019758856) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1518019759620) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1518019760040) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518019760187) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019765438) (:by |root) (:text |base-task)
                          |j $ %{} :Expr (:at 1518019765902) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019767065) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1518019769683) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1518019769925) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019770168) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1518019771006) (:by |root) (:text |:tasks)
                                  |r $ %{} :Leaf (:at 1518019773290) (:by |root) (:text |task-id)
                      |j $ %{} :Expr (:at 1518019774756) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019779167) (:by |root) (:text |base-sort-id)
                          |j $ %{} :Expr (:at 1518019779492) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019781989) (:by |root) (:text |:sort-id)
                              |j $ %{} :Leaf (:at 1518019783682) (:by |root) (:text |base-task)
                      |r $ %{} :Expr (:at 1518019785163) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019789911) (:by |root) (:text |all-sort-ids)
                          |j $ %{} :Expr (:at 1518019790383) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629052936538) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Expr (:at 1518019801548) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019802945) (:by |root) (:text |:tasks)
                                  |j $ %{} :Leaf (:at 1518019803592) (:by |root) (:text |store)
                              |l $ %{} :Expr (:at 1629052938278) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052940915) (:by |Qr5ffqtY) (:text |.to-list)
                              |n $ %{} :Expr (:at 1518019826647) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052944490) (:by |Qr5ffqtY) (:text |map)
                                  |j $ %{} :Leaf (:at 1629052947034) (:by |Qr5ffqtY) (:text |last)
                              |t $ %{} :Expr (:at 1518019829572) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019830099) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1629052948481) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052949165) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1629052949867) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052951030) (:by |Qr5ffqtY) (:text |x)
                                      |T $ %{} :Expr (:at 1629052951885) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518019832075) (:by |root) (:text |:sort-id)
                                          |j $ %{} :Leaf (:at 1629052952585) (:by |Qr5ffqtY) (:text |x)
                              |w $ %{} :Expr (:at 1518019837699) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019838346) (:by |root) (:text |sort)
                                  |j $ %{} :Leaf (:at 1629052957129) (:by |Qr5ffqtY) (:text |&compare)
                      |v $ %{} :Expr (:at 1518019840095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020342892) (:by |root) (:text |sort-id-before)
                          |j $ %{} :Expr (:at 1518020289222) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518020333484) (:by |root) (:text |last)
                              |T $ %{} :Expr (:at 1518019858194) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019864779) (:by |root) (:text |filter)
                                  |j $ %{} :Leaf (:at 1518019869570) (:by |root) (:text |all-sort-ids)
                                  |r $ %{} :Expr (:at 1629052934483) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629052934483) (:by |Qr5ffqtY) (:text |fn)
                                      |j $ %{} :Expr (:at 1629052934483) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052934483) (:by |Qr5ffqtY) (:text |x)
                                      |r $ %{} :Expr (:at 1629052934483) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052934483) (:by |Qr5ffqtY) (:text |<)
                                          |j $ %{} :Leaf (:at 1629052934483) (:by |Qr5ffqtY) (:text |x)
                                          |r $ %{} :Leaf (:at 1629052934483) (:by |Qr5ffqtY) (:text |base-sort-id)
                      |x $ %{} :Expr (:at 1518019882212) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019884403) (:by |root) (:text |new-sort-id)
                          |j $ %{} :Expr (:at 1518019884675) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019893729) (:by |root) (:text |bisect)
                              |b $ %{} :Expr (:at 1518019921692) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019921977) (:by |root) (:text |or)
                                  |j $ %{} :Leaf (:at 1518020344773) (:by |root) (:text |sort-id-before)
                                  |r $ %{} :Leaf (:at 1518020360569) (:by |root) (:text |min-id)
                              |j $ %{} :Leaf (:at 1518019921140) (:by |root) (:text |base-sort-id)
                      |y $ %{} :Expr (:at 1518019933345) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019934843) (:by |root) (:text |new-task)
                          |j $ %{} :Expr (:at 1518019935240) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518019937568) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1518019940023) (:by |root) (:text |schema/task)
                              |r $ %{} :Expr (:at 1518019940354) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518019940682) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1518019940897) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518019941363) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1518019945262) (:by |root) (:text |op-id)
                                  |r $ %{} :Expr (:at 1518019954234) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518019955533) (:by |root) (:text |:sort-id)
                                      |j $ %{} :Leaf (:at 1518019958918) (:by |root) (:text |new-sort-id)
                                  |v $ %{} :Expr (:at 1525887119622) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525887123152) (:by |root) (:text |:created-time)
                                      |j $ %{} :Leaf (:at 1525887123957) (:by |root) (:text |op-time)
                  |T $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |->)
                      |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019974973) (:by |root) (:text |assoc-in)
                          |j $ %{} :Expr (:at 1518019978110) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518019979037) (:by |root) (:text |[])
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1518019981686) (:by |root) (:text |op-id)
                          |r $ %{} :Leaf (:at 1518019984448) (:by |root) (:text |new-task)
        |delete-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |delete-task)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |op-data)
              |v $ %{} :Expr (:at 1518020534026) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629051935497) (:by |Qr5ffqtY) (:text |let-sugar)
                  |L $ %{} :Expr (:at 1518020535177) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518020535335) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1518020592424) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518020593426) (:by |root) (:text |[])
                              |T $ %{} :Leaf (:at 1518020537067) (:by |root) (:text |task-id)
                              |j $ %{} :Leaf (:at 1518020594956) (:by |root) (:text |idx)
                          |j $ %{} :Leaf (:at 1518020538251) (:by |root) (:text |op-data)
                  |T $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |1)
                          |r $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |count)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                      |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                      |v $ %{} :Expr (:at 1518020602438) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1518020604151) (:by |root) (:text |->)
                          |L $ %{} :Leaf (:at 1518020610178) (:by |root) (:text |store)
                          |T $ %{} :Expr (:at 1518020543324) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020556827) (:by |root) (:text |update)
                              |r $ %{} :Leaf (:at 1518020554740) (:by |root) (:text |:tasks)
                              |v $ %{} :Expr (:at 1518020558323) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518020559782) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1518020560042) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518020560587) (:by |root) (:text |tasks)
                                  |r $ %{} :Expr (:at 1518020561063) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518020562075) (:by |root) (:text |dissoc)
                                      |j $ %{} :Leaf (:at 1518020563368) (:by |root) (:text |tasks)
                                      |r $ %{} :Leaf (:at 1518020564911) (:by |root) (:text |task-id)
                          |j $ %{} :Expr (:at 1518020610928) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020613075) (:by |root) (:text |update)
                              |j $ %{} :Leaf (:at 1518020615894) (:by |root) (:text |:pointer)
                              |r $ %{} :Expr (:at 1518020616139) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518020616473) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1518020616783) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518020617809) (:by |root) (:text |pointer)
                                  |r $ %{} :Expr (:at 1518020618196) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518020618701) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1518020621399) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052304507) (:by |Qr5ffqtY) (:text |=)
                                          |b $ %{} :Leaf (:at 1629052305940) (:by |Qr5ffqtY) (:text |0)
                                          |j $ %{} :Leaf (:at 1518020623170) (:by |root) (:text |idx)
                                      |r $ %{} :Leaf (:at 1518020627615) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1518020629938) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518020630432) (:by |root) (:text |dec)
                                          |j $ %{} :Leaf (:at 1518020631393) (:by |root) (:text |pointer)
        |move-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518020813089) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518020813089) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1518020813089) (:by |root) (:text |move-task)
              |r $ %{} :Expr (:at 1518020813089) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518020815035) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1518020816204) (:by |root) (:text |op-data)
              |v $ %{} :Expr (:at 1518020816561) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629051944877) (:by |Qr5ffqtY) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1518020817291) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518020817454) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1518020819326) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020817808) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1518020824738) (:by |root) (:text |from-id)
                              |r $ %{} :Leaf (:at 1518020825855) (:by |root) (:text |to-id)
                          |j $ %{} :Leaf (:at 1518020830294) (:by |root) (:text |op-data)
                      |j $ %{} :Expr (:at 1518020852230) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020858571) (:by |root) (:text |tasks)
                          |j $ %{} :Expr (:at 1518020859101) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020861362) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1518020862099) (:by |root) (:text |store)
                      |n $ %{} :Expr (:at 1519749205779) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519749207595) (:by |root) (:text |before?)
                          |j $ %{} :Expr (:at 1519749209553) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519749328123) (:by |root) (:text |>)
                              |X $ %{} :Expr (:at 1519749292150) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1519749305629) (:by |root) (:text |get-in)
                                  |L $ %{} :Leaf (:at 1519749294641) (:by |root) (:text |tasks)
                                  |T $ %{} :Expr (:at 1519749306886) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1519749307570) (:by |root) (:text |[])
                                      |T $ %{} :Leaf (:at 1519749317756) (:by |root) (:text |from-id)
                                      |j $ %{} :Leaf (:at 1519749311466) (:by |root) (:text |:sort-id)
                              |b $ %{} :Expr (:at 1519749292150) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1519749305629) (:by |root) (:text |get-in)
                                  |L $ %{} :Leaf (:at 1519749294641) (:by |root) (:text |tasks)
                                  |T $ %{} :Expr (:at 1519749306886) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1519749307570) (:by |root) (:text |[])
                                      |T $ %{} :Leaf (:at 1519749241217) (:by |root) (:text |to-id)
                                      |j $ %{} :Leaf (:at 1519749311466) (:by |root) (:text |:sort-id)
                      |r $ %{} :Expr (:at 1518020862902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020864829) (:by |root) (:text |from-task)
                          |j $ %{} :Expr (:at 1518020865296) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020866860) (:by |root) (:text |get)
                              |j $ %{} :Leaf (:at 1518020870198) (:by |root) (:text |tasks)
                              |r $ %{} :Leaf (:at 1518020872310) (:by |root) (:text |from-id)
                      |v $ %{} :Expr (:at 1518020873245) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020875093) (:by |root) (:text |to-task)
                          |j $ %{} :Expr (:at 1518020875443) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020875857) (:by |root) (:text |get)
                              |j $ %{} :Leaf (:at 1518020877263) (:by |root) (:text |tasks)
                              |r $ %{} :Leaf (:at 1518020878450) (:by |root) (:text |to-id)
                      |x $ %{} :Expr (:at 1518020901433) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020905448) (:by |root) (:text |base-sort-id)
                          |j $ %{} :Expr (:at 1518020906147) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020908618) (:by |root) (:text |:sort-id)
                              |j $ %{} :Leaf (:at 1518020909717) (:by |root) (:text |to-task)
                      |xT $ %{} :Expr (:at 1518021024021) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518021027366) (:by |root) (:text |all-sort-ids)
                          |j $ %{} :Expr (:at 1518021028067) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629052268410) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Expr (:at 1518021033727) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518021035742) (:by |root) (:text |:tasks)
                                  |j $ %{} :Leaf (:at 1518021038383) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1518021041768) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518021041570) (:by |root) (:text |vals)
                              |v $ %{} :Expr (:at 1518021043799) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518021045639) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1629052275087) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629052276740) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1629052277235) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629052281390) (:by |Qr5ffqtY) (:text |x)
                                      |T $ %{} :Expr (:at 1629052278897) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518021048539) (:by |root) (:text |:sort-id)
                                          |j $ %{} :Leaf (:at 1629052279962) (:by |Qr5ffqtY) (:text |x)
                      |y $ %{} :Expr (:at 1518020911272) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020920081) (:by |root) (:text |new-sort-id)
                          |j $ %{} :Expr (:at 1518020920716) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518020921261) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1518020928132) (:by |root) (:text |before?)
                              |r $ %{} :Expr (:at 1518020972529) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1518020974529) (:by |root) (:text |bisect)
                                  |T $ %{} :Expr (:at 1518020965074) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1518020965669) (:by |root) (:text |or)
                                      |T $ %{} :Expr (:at 1518168612701) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629052851654) (:by |Qr5ffqtY) (:text |->)
                                          |L $ %{} :Leaf (:at 1518168617375) (:by |root) (:text |all-sort-ids)
                                          |P $ %{} :Expr (:at 1629052896521) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629052897946) (:by |Qr5ffqtY) (:text |.to-list)
                                          |T $ %{} :Expr (:at 1518020937473) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518020939270) (:by |root) (:text |filter)
                                              |b $ %{} :Expr (:at 1518020946989) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518020948127) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1518020948925) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518020949431) (:by |root) (:text |x)
                                                  |r $ %{} :Expr (:at 1518020951237) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518020951759) (:by |root) (:text |<)
                                                      |j $ %{} :Leaf (:at 1518020952299) (:by |root) (:text |x)
                                                      |r $ %{} :Leaf (:at 1518020962765) (:by |root) (:text |base-sort-id)
                                          |j $ %{} :Expr (:at 1518168618769) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518168619489) (:by |root) (:text |sort)
                                              |j $ %{} :Leaf (:at 1629052854724) (:by |Qr5ffqtY) (:text |&compare)
                                          |r $ %{} :Expr (:at 1518168623926) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518168624763) (:by |root) (:text |last)
                                      |j $ %{} :Leaf (:at 1518020968948) (:by |root) (:text |min-id)
                                  |j $ %{} :Leaf (:at 1518020980666) (:by |root) (:text |base-sort-id)
                              |v $ %{} :Expr (:at 1518020986526) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518020989747) (:by |root) (:text |bisect)
                                  |j $ %{} :Leaf (:at 1518020996813) (:by |root) (:text |base-sort-id)
                                  |r $ %{} :Expr (:at 1518021018275) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1518021018834) (:by |root) (:text |or)
                                      |T $ %{} :Expr (:at 1518168631499) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629052902690) (:by |Qr5ffqtY) (:text |->)
                                          |L $ %{} :Leaf (:at 1518168633426) (:by |root) (:text |all-sort-ids)
                                          |P $ %{} :Expr (:at 1629052904630) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629052907060) (:by |Qr5ffqtY) (:text |.to-list)
                                          |T $ %{} :Expr (:at 1518021000950) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518021001980) (:by |root) (:text |filter)
                                              |j $ %{} :Expr (:at 1518021004561) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518021005318) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1518021005999) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518021006216) (:by |root) (:text |x)
                                                  |r $ %{} :Expr (:at 1518021007141) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518021007460) (:by |root) (:text |>)
                                                      |j $ %{} :Leaf (:at 1518021007992) (:by |root) (:text |x)
                                                      |r $ %{} :Leaf (:at 1518021011111) (:by |root) (:text |base-sort-id)
                                          |j $ %{} :Expr (:at 1518168635242) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518168635820) (:by |root) (:text |sort)
                                              |j $ %{} :Leaf (:at 1629052911433) (:by |Qr5ffqtY) (:text |&compare)
                                          |r $ %{} :Expr (:at 1518168637585) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518168638325) (:by |root) (:text |first)
                                      |j $ %{} :Leaf (:at 1518021021242) (:by |root) (:text |max-id)
                      |yT $ %{} :Expr (:at 1518022429030) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518022438728) (:by |root) (:text |new-pointer)
                          |j $ %{} :Expr (:at 1629053057543) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Expr (:at 1629053057543) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |&exclude)
                                  |j $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |all-sort-ids)
                                  |r $ %{} :Expr (:at 1629053057543) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |:sort-id)
                                      |j $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |from-task)
                              |n $ %{} :Expr (:at 1629053084721) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629053086540) (:by |Qr5ffqtY) (:text |.to-list)
                              |r $ %{} :Expr (:at 1629053057543) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |conj)
                                  |j $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |new-sort-id)
                              |v $ %{} :Expr (:at 1629053057543) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |sort)
                                  |j $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |&compare)
                              |x $ %{} :Expr (:at 1629053057543) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |.index-of)
                                  |j $ %{} :Leaf (:at 1629053057543) (:by |Qr5ffqtY) (:text |new-sort-id)
                  |r $ %{} :Expr (:at 1518022514484) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1518022515870) (:by |root) (:text |->)
                      |L $ %{} :Leaf (:at 1518022516713) (:by |root) (:text |store)
                      |T $ %{} :Expr (:at 1518021051618) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518021056225) (:by |root) (:text |assoc-in)
                          |r $ %{} :Expr (:at 1518021061363) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518021080263) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1518021081131) (:by |root) (:text |:tasks)
                              |r $ %{} :Leaf (:at 1518021086924) (:by |root) (:text |from-id)
                              |v $ %{} :Leaf (:at 1518021091357) (:by |root) (:text |:sort-id)
                          |v $ %{} :Leaf (:at 1518021100780) (:by |root) (:text |new-sort-id)
                      |j $ %{} :Expr (:at 1518022519032) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518022520062) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1518022521754) (:by |root) (:text |:pointer)
                          |r $ %{} :Leaf (:at 1518022524157) (:by |root) (:text |new-pointer)
        |move-task-down $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1665908583540) (:by |Qr5ffqtY)
            :data $ {}
              |T $ %{} :Leaf (:at 1665908583540) (:by |Qr5ffqtY) (:text |defn)
              |b $ %{} :Leaf (:at 1665908583540) (:by |Qr5ffqtY) (:text |move-task-down)
              |h $ %{} :Expr (:at 1665908583540) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1665908583540) (:by |Qr5ffqtY) (:text |store)
                  |b $ %{} :Leaf (:at 1665908583540) (:by |Qr5ffqtY) (:text |op-data)
              |l $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |let-sugar)
                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |from-id)
                          |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |op-data)
                      |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |tasks)
                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:tasks)
                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |store)
                      |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |from-task)
                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |get)
                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |tasks)
                              |h $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |from-id)
                      |l $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |sorted-pairs)
                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |->)
                              |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:tasks)
                                  |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |store)
                              |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |vals)
                              |l $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |map)
                                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |fn)
                                      |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |x)
                                      |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |[])
                                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:sort-id)
                                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |x)
                                          |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:id)
                                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |x)
                              |o $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |.to-list)
                              |q $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |.sort)
                                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |fn)
                                      |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |a)
                                          |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |b)
                                      |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |&compare)
                                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |first)
                                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |a)
                                          |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |first)
                                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |b)
                      |o $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |current-index)
                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:pointer)
                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |store)
                      |q $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908614513) (:by |Qr5ffqtY) (:text |at-bottom?)
                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |=)
                              |h $ %{} :Expr (:at 1665908606403) (:by |Qr5ffqtY)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1665908607309) (:by |Qr5ffqtY) (:text |inc)
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |current-index)
                              |l $ %{} :Expr (:at 1665908600857) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908602236) (:by |Qr5ffqtY) (:text |count)
                                  |b $ %{} :Leaf (:at 1665908605414) (:by |Qr5ffqtY) (:text |tasks)
                  |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |if)
                      |b $ %{} :Leaf (:at 1665908616492) (:by |Qr5ffqtY) (:text |at-bottom?)
                      |h $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |store)
                      |l $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |let)
                          |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |target-pair)
                                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |nth)
                                      |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |sorted-pairs)
                                      |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908595859) (:by |Qr5ffqtY) (:text |inc)
                                          |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |current-index)
                              |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |new-sort-id)
                                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |first)
                                      |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |target-pair)
                          |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |->)
                              |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |store)
                              |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |assoc-in)
                                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |[])
                                      |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:tasks)
                                      |h $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |from-id)
                                      |l $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:sort-id)
                                  |h $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |new-sort-id)
                              |l $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |assoc-in)
                                  |b $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |[])
                                      |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:tasks)
                                      |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |last)
                                          |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |target-pair)
                                      |l $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:sort-id)
                                  |h $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:sort-id)
                                      |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |from-task)
                              |o $ %{} :Expr (:at 1665908586714) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |update)
                                  |b $ %{} :Leaf (:at 1665908586714) (:by |Qr5ffqtY) (:text |:pointer)
                                  |h $ %{} :Leaf (:at 1665908646606) (:by |Qr5ffqtY) (:text |inc)
        |move-task-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1665905459876) (:by |Qr5ffqtY)
            :data $ {}
              |T $ %{} :Leaf (:at 1665905459876) (:by |Qr5ffqtY) (:text |defn)
              |b $ %{} :Leaf (:at 1665905459876) (:by |Qr5ffqtY) (:text |move-task-up)
              |h $ %{} :Expr (:at 1665905459876) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1665905459876) (:by |Qr5ffqtY) (:text |store)
                  |b $ %{} :Leaf (:at 1665905459876) (:by |Qr5ffqtY) (:text |op-data)
              |l $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                :data $ {}
                  |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |let-sugar)
                  |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |from-id)
                          |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |op-data)
                      |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |tasks)
                          |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:tasks)
                              |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |store)
                      |l $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |from-task)
                          |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |get)
                              |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |tasks)
                              |h $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |from-id)
                      |s $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665908430440) (:by |Qr5ffqtY) (:text |sorted-pairs)
                          |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |->)
                              |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:tasks)
                                  |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |store)
                              |h $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |vals)
                              |l $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |map)
                                  |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |fn)
                                      |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |x)
                                      |h $ %{} :Expr (:at 1665908392325) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1665908392896) (:by |Qr5ffqtY) (:text |[])
                                          |T $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:sort-id)
                                              |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |x)
                                          |b $ %{} :Expr (:at 1665908394619) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908395398) (:by |Qr5ffqtY) (:text |:id)
                                              |b $ %{} :Leaf (:at 1665908395790) (:by |Qr5ffqtY) (:text |x)
                              |o $ %{} :Expr (:at 1665905942792) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905945724) (:by |Qr5ffqtY) (:text |.to-list)
                              |q $ %{} :Expr (:at 1665905946605) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905952883) (:by |Qr5ffqtY) (:text |.sort)
                                  |b $ %{} :Expr (:at 1665908397728) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1665908399536) (:by |Qr5ffqtY) (:text |fn)
                                      |L $ %{} :Expr (:at 1665908400496) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908400899) (:by |Qr5ffqtY) (:text |a)
                                          |b $ %{} :Leaf (:at 1665908401319) (:by |Qr5ffqtY) (:text |b)
                                      |T $ %{} :Expr (:at 1665908402092) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665905968961) (:by |Qr5ffqtY) (:text |&compare)
                                          |b $ %{} :Expr (:at 1665908403010) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908405420) (:by |Qr5ffqtY) (:text |first)
                                              |b $ %{} :Leaf (:at 1665908406193) (:by |Qr5ffqtY) (:text |a)
                                          |h $ %{} :Expr (:at 1665908403010) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1665908405420) (:by |Qr5ffqtY) (:text |first)
                                              |b $ %{} :Leaf (:at 1665908408595) (:by |Qr5ffqtY) (:text |b)
                      |sT $ %{} :Expr (:at 1665905686376) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905693022) (:by |Qr5ffqtY) (:text |current-index)
                          |b $ %{} :Expr (:at 1665905694210) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665905701705) (:by |Qr5ffqtY) (:text |:pointer)
                              |b $ %{} :Leaf (:at 1665905702516) (:by |Qr5ffqtY) (:text |store)
                      |t $ %{} :Expr (:at 1665905650242) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905652295) (:by |Qr5ffqtY) (:text |at-head?)
                          |b $ %{} :Expr (:at 1665908418041) (:by |Qr5ffqtY)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1665908418882) (:by |Qr5ffqtY) (:text |=)
                              |L $ %{} :Leaf (:at 1665908419213) (:by |Qr5ffqtY) (:text |0)
                              |T $ %{} :Leaf (:at 1665908417804) (:by |Qr5ffqtY) (:text |current-index)
                  |h $ %{} :Expr (:at 1665905666029) (:by |Qr5ffqtY)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1665905667633) (:by |Qr5ffqtY) (:text |if)
                      |L $ %{} :Leaf (:at 1665905669705) (:by |Qr5ffqtY) (:text |at-head?)
                      |P $ %{} :Leaf (:at 1665905671993) (:by |Qr5ffqtY) (:text |store)
                      |T $ %{} :Expr (:at 1665905719748) (:by |Qr5ffqtY)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1665905721029) (:by |Qr5ffqtY) (:text |let)
                          |L $ %{} :Expr (:at 1665905721305) (:by |Qr5ffqtY)
                            :data $ {}
                              |D $ %{} :Expr (:at 1665908444956) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665908448007) (:by |Qr5ffqtY) (:text |target-pair)
                                  |b $ %{} :Expr (:at 1665908452339) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908453539) (:by |Qr5ffqtY) (:text |nth)
                                      |b $ %{} :Leaf (:at 1665908456139) (:by |Qr5ffqtY) (:text |sorted-pairs)
                                      |h $ %{} :Expr (:at 1665908456462) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908456870) (:by |Qr5ffqtY) (:text |dec)
                                          |b $ %{} :Leaf (:at 1665908461218) (:by |Qr5ffqtY) (:text |current-index)
                              |T $ %{} :Expr (:at 1665905721436) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905723597) (:by |Qr5ffqtY) (:text |new-sort-id)
                                  |b $ %{} :Expr (:at 1665908463871) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908464722) (:by |Qr5ffqtY) (:text |first)
                                      |b $ %{} :Leaf (:at 1665908466818) (:by |Qr5ffqtY) (:text |target-pair)
                          |T $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |->)
                              |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |store)
                              |h $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |assoc-in)
                                  |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |[])
                                      |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:tasks)
                                      |h $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |from-id)
                                      |l $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:sort-id)
                                  |h $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |new-sort-id)
                              |j $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |assoc-in)
                                  |b $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |[])
                                      |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:tasks)
                                      |h $ %{} :Expr (:at 1665908478647) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1665908480544) (:by |Qr5ffqtY) (:text |last)
                                          |b $ %{} :Leaf (:at 1665908482087) (:by |Qr5ffqtY) (:text |target-pair)
                                      |l $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:sort-id)
                                  |h $ %{} :Expr (:at 1665908499832) (:by |Qr5ffqtY)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1665908505011) (:by |Qr5ffqtY) (:text |:sort-id)
                                      |b $ %{} :Leaf (:at 1665908508319) (:by |Qr5ffqtY) (:text |from-task)
                              |l $ %{} :Expr (:at 1665905462960) (:by |Qr5ffqtY)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1665905625032) (:by |Qr5ffqtY) (:text |update)
                                  |b $ %{} :Leaf (:at 1665905462960) (:by |Qr5ffqtY) (:text |:pointer)
                                  |h $ %{} :Leaf (:at 1665905627500) (:by |Qr5ffqtY) (:text |dec)
        |relax-tasks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1508858088270) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1508858088270) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1508858088270) (:by |root) (:text |relax-tasks)
              |n $ %{} :Expr (:at 1508858104394) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1508858105870) (:by |root) (:text |store)
                  |b $ %{} :Leaf (:at 1525887642273) (:by |root) (:text |op-id)
                  |j $ %{} :Leaf (:at 1525887371923) (:by |root) (:text |op-time)
              |r $ %{} :Expr (:at 1525626446878) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1525626447580) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1525626447817) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1525626448148) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525626455228) (:by |root) (:text |done-tasks)
                          |j $ %{} :Expr (:at 1525626457287) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629051868191) (:by |Qr5ffqtY) (:text |->)
                              |j $ %{} :Expr (:at 1525626516620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525626520340) (:by |root) (:text |:tasks)
                                  |j $ %{} :Leaf (:at 1525626521929) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1525626463135) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525626462974) (:by |root) (:text |filter)
                                  |j $ %{} :Expr (:at 1525626464183) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525626463872) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1525626466188) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629051881897) (:by |Qr5ffqtY) (:text |pair)
                                      |r $ %{} :Expr (:at 1629051870060) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629051871873) (:by |Qr5ffqtY) (:text |let[])
                                          |L $ %{} :Expr (:at 1629051875762) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |j $ %{} :Leaf (:at 1629051875762) (:by |Qr5ffqtY) (:text |task-id)
                                              |r $ %{} :Leaf (:at 1629051875762) (:by |Qr5ffqtY) (:text |task)
                                          |P $ %{} :Leaf (:at 1629051877025) (:by |Qr5ffqtY) (:text |pair)
                                          |T $ %{} :Expr (:at 1525887819761) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1525887821262) (:by |root) (:text |and)
                                              |T $ %{} :Expr (:at 1525626470297) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525626472994) (:by |root) (:text |:done?)
                                                  |j $ %{} :Leaf (:at 1525626473761) (:by |root) (:text |task)
                                              |j $ %{} :Expr (:at 1525887822559) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525887823947) (:by |root) (:text |not)
                                                  |j $ %{} :Expr (:at 1525887833892) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629051922937) (:by |Qr5ffqtY) (:text |.blank?)
                                                      |j $ %{} :Expr (:at 1525887838885) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1525887841133) (:by |root) (:text |:text)
                                                          |j $ %{} :Leaf (:at 1525887842416) (:by |root) (:text |task)
                              |t $ %{} :Expr (:at 1525887260512) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525887261484) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1525887262530) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525887262827) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1525887263155) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629051897807) (:by |Qr5ffqtY) (:text |pair)
                                      |r $ %{} :Expr (:at 1629051884910) (:by |Qr5ffqtY)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629051887306) (:by |Qr5ffqtY) (:text |let[])
                                          |L $ %{} :Expr (:at 1629051890698) (:by |Qr5ffqtY)
                                            :data $ {}
                                              |j $ %{} :Leaf (:at 1629051890698) (:by |Qr5ffqtY) (:text |task-id)
                                              |r $ %{} :Leaf (:at 1629051890698) (:by |Qr5ffqtY) (:text |task)
                                          |P $ %{} :Leaf (:at 1629051892578) (:by |Qr5ffqtY) (:text |pair)
                                          |T $ %{} :Expr (:at 1525887269233) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525887269929) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1525887271262) (:by |root) (:text |task-id)
                                              |r $ %{} :Expr (:at 1525887272732) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525887273751) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1525887274909) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1525887280418) (:by |root) (:text |:archived-time)
                                                  |v $ %{} :Leaf (:at 1525887282176) (:by |root) (:text |op-time)
                  |T $ %{} :Expr (:at 1508857816526) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508858096997) (:by |root) (:text |->)
                      |b $ %{} :Leaf (:at 1508858097754) (:by |root) (:text |store)
                      |j $ %{} :Expr (:at 1508857821347) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508857850496) (:by |root) (:text |update)
                          |r $ %{} :Leaf (:at 1508857857274) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1508857857600) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508857857943) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1508857858215) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508857858958) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1508857969375) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508857970332) (:by |root) (:text |let)
                                  |T $ %{} :Expr (:at 1508857971685) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1508857971960) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1508857975504) (:by |root) (:text |next-tasks)
                                          |L $ %{} :Expr (:at 1518022865445) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629051903544) (:by |Qr5ffqtY) (:text |->)
                                              |L $ %{} :Leaf (:at 1518022868238) (:by |root) (:text |tasks)
                                              |T $ %{} :Expr (:at 1518022816209) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518022818085) (:by |root) (:text |filter)
                                                  |j $ %{} :Expr (:at 1518022818316) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518022818693) (:by |root) (:text |fn)
                                                      |j $ %{} :Expr (:at 1518022819779) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629051913284) (:by |Qr5ffqtY) (:text |pair)
                                                      |r $ %{} :Expr (:at 1518022840672) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1518022841283) (:by |root) (:text |not)
                                                          |T $ %{} :Expr (:at 1518022834805) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1518022838773) (:by |root) (:text |:done?)
                                                              |j $ %{} :Expr (:at 1629051914116) (:by |Qr5ffqtY)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1629051915129) (:by |Qr5ffqtY) (:text |last)
                                                                  |T $ %{} :Leaf (:at 1629052260342) (:by |Qr5ffqtY) (:text |pair)
                                  |j $ %{} :Expr (:at 1508857976784) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508857977846) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1508857980691) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508857981044) (:by |root) (:text |empty?)
                                          |j $ %{} :Leaf (:at 1508857983847) (:by |root) (:text |next-tasks)
                                      |t $ %{} :Expr (:at 1525887652610) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1525887653754) (:by |root) (:text |assoc)
                                          |T $ %{} :Expr (:at 1525887619168) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525887620383) (:by |root) (:text |{})
                                          |j $ %{} :Leaf (:at 1525887656146) (:by |root) (:text |op-id)
                                          |r $ %{} :Expr (:at 1525887656390) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525887657945) (:by |root) (:text |merge)
                                              |j $ %{} :Leaf (:at 1525887659391) (:by |root) (:text |schema/task)
                                              |r $ %{} :Expr (:at 1525887660128) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525887660408) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1525887660642) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1525887661754) (:by |root) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1525887662472) (:by |root) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1525887663346) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1525887666217) (:by |root) (:text |:created-time)
                                                      |j $ %{} :Leaf (:at 1525887668034) (:by |root) (:text |op-time)
                                                  |v $ %{} :Expr (:at 1631341539893) (:by |Qr5ffqtY)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1631341543924) (:by |Qr5ffqtY) (:text |:sort-id)
                                                      |j $ %{} :Leaf (:at 1631341579758) (:by |Qr5ffqtY) (:text |mid-id)
                                      |v $ %{} :Leaf (:at 1508858041802) (:by |root) (:text |next-tasks)
                      |n $ %{} :Expr (:at 1525626484507) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525626486156) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1525626494509) (:by |root) (:text |:archives)
                          |r $ %{} :Expr (:at 1525626496172) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525626497393) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1525626497633) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525626499653) (:by |root) (:text |archives)
                              |r $ %{} :Expr (:at 1525626500449) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525626501128) (:by |root) (:text |merge)
                                  |j $ %{} :Leaf (:at 1525626503294) (:by |root) (:text |archives)
                                  |r $ %{} :Leaf (:at 1525626505501) (:by |root) (:text |done-tasks)
                      |r $ %{} :Expr (:at 1508858063384) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508858065544) (:by |root) (:text |assoc)
                          |r $ %{} :Leaf (:at 1508858067324) (:by |root) (:text |:pointer)
                          |v $ %{} :Leaf (:at 1508858067990) (:by |root) (:text |0)
        |swap-tasks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518620833540) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518620833540) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1518620833540) (:by |root) (:text |swap-tasks)
              |r $ %{} :Expr (:at 1518620833540) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518620837713) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1518620838856) (:by |root) (:text |op-data)
              |v $ %{} :Expr (:at 1518620839195) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629051954561) (:by |Qr5ffqtY) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1518620840295) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518620840426) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1518620840860) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518620841344) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1518620844319) (:by |root) (:text |from-id)
                              |r $ %{} :Leaf (:at 1518620845368) (:by |root) (:text |to-id)
                              |v $ %{} :Leaf (:at 1519747944799) (:by |root) (:text |new-pointer)
                          |j $ %{} :Leaf (:at 1518620848313) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1519747947188) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1519747948476) (:by |root) (:text |->)
                      |L $ %{} :Leaf (:at 1519747949557) (:by |root) (:text |store)
                      |P $ %{} :Expr (:at 1519747950217) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519747951443) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1519747953001) (:by |root) (:text |:pointer)
                          |r $ %{} :Leaf (:at 1519747955401) (:by |root) (:text |new-pointer)
                      |T $ %{} :Expr (:at 1518620849375) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518620879685) (:by |root) (:text |update)
                          |r $ %{} :Leaf (:at 1518620882374) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1518620882786) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518620884643) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1518620884982) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518620886219) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1518620928930) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1518620930488) (:by |root) (:text |->)
                                  |L $ %{} :Leaf (:at 1518620931335) (:by |root) (:text |tasks)
                                  |T $ %{} :Expr (:at 1518620887467) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518620895586) (:by |root) (:text |assoc-in)
                                      |r $ %{} :Expr (:at 1518620896688) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518620897000) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1518620903616) (:by |root) (:text |from-id)
                                          |r $ %{} :Leaf (:at 1518620911197) (:by |root) (:text |:sort-id)
                                      |v $ %{} :Expr (:at 1518620912928) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518620919386) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1518620916679) (:by |root) (:text |tasks)
                                          |r $ %{} :Expr (:at 1518620920212) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518620920531) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1518620922504) (:by |root) (:text |to-id)
                                              |r $ %{} :Leaf (:at 1518620924374) (:by |root) (:text |:sort-id)
                                  |j $ %{} :Expr (:at 1518620887467) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518620895586) (:by |root) (:text |assoc-in)
                                      |r $ %{} :Expr (:at 1518620896688) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518620897000) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1518620936796) (:by |root) (:text |to-id)
                                          |r $ %{} :Leaf (:at 1518620911197) (:by |root) (:text |:sort-id)
                                      |v $ %{} :Expr (:at 1518620912928) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518620919386) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1518620916679) (:by |root) (:text |tasks)
                                          |r $ %{} :Expr (:at 1518620920212) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518620920531) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1518620939025) (:by |root) (:text |from-id)
                                              |r $ %{} :Leaf (:at 1518620924374) (:by |root) (:text |:sort-id)
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500452996813) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |op)
                  |t $ %{} :Leaf (:at 1518019353393) (:by |root) (:text |op-id)
                  |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500452996813) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688745130904) (:by |Qr5ffqtY) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |op)
                  |r $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745141758) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1688745143222) (:by |Qr5ffqtY) (:text |cursor)
                          |h $ %{} :Leaf (:at 1688745143501) (:by |Qr5ffqtY) (:text |s)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629051825841) (:by |Qr5ffqtY) (:text |update-states)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |v $ %{} :Leaf (:at 1688745146327) (:by |Qr5ffqtY) (:text |cursor)
                          |w $ %{} :Leaf (:at 1688745146650) (:by |Qr5ffqtY) (:text |s)
                  |v $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745149812) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/add-before)
                          |b $ %{} :Leaf (:at 1688745152956) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |add-before)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745155936) (:by |Qr5ffqtY) (:text |data)
                          |v $ %{} :Leaf (:at 1518019723925) (:by |root) (:text |op-id)
                          |x $ %{} :Leaf (:at 1525887411430) (:by |root) (:text |op-time)
                  |x $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745157214) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/add-after)
                          |b $ %{} :Leaf (:at 1688745157968) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |add-after)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745160010) (:by |Qr5ffqtY) (:text |data)
                          |v $ %{} :Leaf (:at 1518019725703) (:by |root) (:text |op-id)
                          |x $ %{} :Leaf (:at 1525887413994) (:by |root) (:text |op-time)
                  |y $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745162015) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/edit)
                          |b $ %{} :Leaf (:at 1688745164013) (:by |Qr5ffqtY) (:text |task-id)
                          |h $ %{} :Leaf (:at 1688745168478) (:by |Qr5ffqtY) (:text |text)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518019402757) (:by |root) (:text |assoc-in)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Expr (:at 1518019379351) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518019380497) (:by |root) (:text |[])
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1518019383151) (:by |root) (:text |task-id)
                              |r $ %{} :Leaf (:at 1518019395624) (:by |root) (:text |:text)
                          |v $ %{} :Leaf (:at 1518019399831) (:by |root) (:text |text)
                  |yr $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745196986) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/toggle)
                          |b $ %{} :Leaf (:at 1688745199929) (:by |Qr5ffqtY) (:text |id)
                      |v $ %{} :Expr (:at 1525887186651) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525887188278) (:by |root) (:text |update-in)
                          |j $ %{} :Leaf (:at 1525887190374) (:by |root) (:text |store)
                          |r $ %{} :Expr (:at 1525887190614) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525887190794) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1525887191546) (:by |root) (:text |:tasks)
                              |r $ %{} :Leaf (:at 1688745201532) (:by |Qr5ffqtY) (:text |id)
                          |v $ %{} :Expr (:at 1525887193942) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525887194256) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1525887194525) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525887196524) (:by |root) (:text |task)
                              |r $ %{} :Expr (:at 1525887198826) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1525887206092) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1525887206484) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525887211513) (:by |root) (:text |:done?)
                                      |j $ %{} :Leaf (:at 1525887216012) (:by |root) (:text |task)
                                  |r $ %{} :Expr (:at 1525887217231) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525887218137) (:by |root) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1525887221771) (:by |root) (:text |task)
                                      |r $ %{} :Leaf (:at 1525887223245) (:by |root) (:text |:done?)
                                      |v $ %{} :Leaf (:at 1525887224965) (:by |root) (:text |false)
                                  |v $ %{} :Expr (:at 1525887225702) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525887226573) (:by |root) (:text |->)
                                      |j $ %{} :Leaf (:at 1525887228278) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1525887228559) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525887229713) (:by |root) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1525887231714) (:by |root) (:text |:done?)
                                          |r $ %{} :Leaf (:at 1525887232359) (:by |root) (:text |true)
                                      |v $ %{} :Expr (:at 1525887232983) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525887237310) (:by |root) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1526924091476) (:by |root) (:text |:done-time)
                                          |r $ %{} :Leaf (:at 1525887242924) (:by |root) (:text |op-time)
                  |yw $ %{} :Expr (:at 1508857816526) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745204211) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527734632311) (:by |root) (:text |:task/relax)
                      |b $ %{} :Expr (:at 1508858076726) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527734644525) (:by |root) (:text |relax-tasks)
                          |j $ %{} :Leaf (:at 1508858085410) (:by |root) (:text |store)
                          |n $ %{} :Leaf (:at 1525887639204) (:by |root) (:text |op-id)
                          |r $ %{} :Leaf (:at 1525887367524) (:by |root) (:text |op-time)
                  |yx $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745207903) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:task/delete)
                          |b $ %{} :Leaf (:at 1688745238889) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |delete-task)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745240242) (:by |Qr5ffqtY) (:text |data)
                  |yxT $ %{} :Expr (:at 1518020791694) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745212940) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020794164) (:by |root) (:text |:task/move)
                          |b $ %{} :Leaf (:at 1688745213706) (:by |Qr5ffqtY) (:text |id)
                      |j $ %{} :Expr (:at 1518020794587) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518020796500) (:by |root) (:text |move-task)
                          |j $ %{} :Leaf (:at 1518020797700) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745215192) (:by |Qr5ffqtY) (:text |id)
                  |yxb $ %{} :Expr (:at 1518020791694) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745217055) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905433016) (:by |Qr5ffqtY) (:text |:task/move-up)
                          |b $ %{} :Leaf (:at 1688745217928) (:by |Qr5ffqtY) (:text |id)
                      |j $ %{} :Expr (:at 1518020794587) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905437931) (:by |Qr5ffqtY) (:text |move-task-up)
                          |j $ %{} :Leaf (:at 1518020797700) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745220044) (:by |Qr5ffqtY) (:text |id)
                  |yxf $ %{} :Expr (:at 1518020791694) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745242459) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905447357) (:by |Qr5ffqtY) (:text |:task/move-down)
                          |b $ %{} :Leaf (:at 1688745244642) (:by |Qr5ffqtY) (:text |id)
                      |j $ %{} :Expr (:at 1518020794587) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1665905449788) (:by |Qr5ffqtY) (:text |move-task-down)
                          |j $ %{} :Leaf (:at 1518020797700) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745246171) (:by |Qr5ffqtY) (:text |id)
                  |yxj $ %{} :Expr (:at 1518020791694) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745247661) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518620829279) (:by |root) (:text |:task/swap)
                          |b $ %{} :Leaf (:at 1688745249979) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Expr (:at 1518020794587) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518620831260) (:by |root) (:text |swap-tasks)
                          |j $ %{} :Leaf (:at 1518020797700) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1688745251241) (:by |Qr5ffqtY) (:text |data)
                  |yy $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745252743) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer/touch)
                          |b $ %{} :Leaf (:at 1688745256662) (:by |Qr5ffqtY) (:text |id)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                          |v $ %{} :Leaf (:at 1688745257946) (:by |Qr5ffqtY) (:text |id)
                  |yyT $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745266408) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer/before)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629052346600) (:by |Qr5ffqtY) (:text |=)
                              |b $ %{} :Leaf (:at 1629052347052) (:by |Qr5ffqtY) (:text |0)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |update)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                              |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dec)
                  |yyj $ %{} :Expr (:at 1500452996813) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745268125) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer/after)
                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |=)
                              |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                                  |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1500452996813) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |dec)
                                  |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |count)
                                      |j $ %{} :Expr (:at 1500452996813) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:tasks)
                                          |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500452996813) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |update)
                              |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:pointer)
                              |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |inc)
                  |yyp $ %{} :Expr (:at 1518169553760) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745269786) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518169554211) (:by |root) (:text |:mark/dragging)
                          |b $ %{} :Leaf (:at 1688745270657) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Expr (:at 1518169567228) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518169568634) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1518169569234) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1518169571573) (:by |root) (:text |:dragging-id)
                          |v $ %{} :Leaf (:at 1688745271867) (:by |Qr5ffqtY) (:text |data)
                  |yys $ %{} :Expr (:at 1518169553760) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745272644) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519749496649) (:by |root) (:text |:mark/dropping)
                          |b $ %{} :Leaf (:at 1688745273322) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Expr (:at 1518169567228) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518169568634) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1518169569234) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1519749494402) (:by |root) (:text |:dropping-id)
                          |v $ %{} :Leaf (:at 1688745274744) (:by |Qr5ffqtY) (:text |data)
                  |yyt $ %{} :Expr (:at 1553875945617) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688745275732) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553876001074) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1688745276466) (:by |Qr5ffqtY) (:text |data)
                      |j $ %{} :Leaf (:at 1688745277955) (:by |Qr5ffqtY) (:text |data)
                  |z $ %{} :Expr (:at 1688745135790) (:by |Qr5ffqtY)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688745136452) (:by |Qr5ffqtY) (:text |_)
                      |b $ %{} :Expr (:at 1688745136935) (:by |Qr5ffqtY)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688745136935) (:by |Qr5ffqtY) (:text |do)
                          |b $ %{} :Expr (:at 1688745136935) (:by |Qr5ffqtY)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688745139045) (:by |Qr5ffqtY) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1688745136935) (:by |Qr5ffqtY) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1688745136935) (:by |Qr5ffqtY) (:text |op)
                          |h $ %{} :Leaf (:at 1688745136935) (:by |Qr5ffqtY) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500452996813) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1500452996813) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |schema)
                |r $ %{} :Expr (:at 1500452996813) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500452996813) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500452996813) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1629051838121) (:by |Qr5ffqtY) (:text |update-states)
                |v $ %{} :Expr (:at 1518019896909) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518019905317) (:by |root) (:text |bisection-key.core)
                    |r $ %{} :Leaf (:at 1518019906110) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518019906418) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1518019906603) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1518019907834) (:by |root) (:text |bisect)
                        |r $ %{} :Leaf (:at 1518019929927) (:by |root) (:text |max-id)
                        |v $ %{} :Leaf (:at 1518020369805) (:by |root) (:text |min-id)
                        |x $ %{} :Leaf (:at 1631341577720) (:by |Qr5ffqtY) (:text |mid-id)
    |app.util.dom $ %{} :FileEntry
      :defs $ {}
        |*canvas-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519745455887) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629052176809) (:by |Qr5ffqtY) (:text |defatom)
              |j $ %{} :Leaf (:at 1629052396435) (:by |Qr5ffqtY) (:text |*canvas-element)
              |r $ %{} :Expr (:at 1519745455887) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519745464126) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1519745465737) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519745470340) (:by |root) (:text |exists?)
                      |j $ %{} :Leaf (:at 1519745475557) (:by |root) (:text |js/document)
                  |r $ %{} :Expr (:at 1519745477204) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1629052400733) (:by |Qr5ffqtY) (:text |js/document.createElement)
                      |r $ %{} :Leaf (:at 1519745487181) (:by |root) (:text ||canvas)
                  |v $ %{} :Leaf (:at 1519745490070) (:by |root) (:text |nil)
        |get-width $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519745498624) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519745498624) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1519745498624) (:by |root) (:text |get-width)
              |r $ %{} :Expr (:at 1519745498624) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519745502833) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1519745643689) (:by |root) (:text |font-family)
                  |r $ %{} :Leaf (:at 1519745647915) (:by |root) (:text |font-size)
              |v $ %{} :Expr (:at 1519749815767) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1519749816313) (:by |root) (:text |if)
                  |L $ %{} :Expr (:at 1519749816625) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519749819452) (:by |root) (:text |exists?)
                      |j $ %{} :Leaf (:at 1519749822448) (:by |root) (:text |js/document)
                  |T $ %{} :Expr (:at 1519745567406) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519745568174) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1519745568421) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1519745568562) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519745570598) (:by |root) (:text |ctx)
                              |j $ %{} :Expr (:at 1519745570954) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629052407294) (:by |Qr5ffqtY) (:text |.!getContext)
                                  |j $ %{} :Leaf (:at 1629052404838) (:by |Qr5ffqtY) (:text |@*canvas-element)
                                  |r $ %{} :Leaf (:at 1519745598357) (:by |root) (:text ||2d)
                      |n $ %{} :Expr (:at 1519745712176) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519746070138) (:by |root) (:text |set!)
                          |j $ %{} :Expr (:at 1519745716644) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519745718231) (:by |root) (:text |.-font)
                              |j $ %{} :Leaf (:at 1519745720532) (:by |root) (:text |ctx)
                          |r $ %{} :Expr (:at 1519745723304) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519745723967) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1519745730428) (:by |root) (:text |font-size)
                              |r $ %{} :Leaf (:at 1519745733099) (:by |root) (:text "||px ")
                              |v $ %{} :Leaf (:at 1519745737272) (:by |root) (:text |font-family)
                      |r $ %{} :Expr (:at 1519745627368) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519745629781) (:by |root) (:text |.-width)
                          |j $ %{} :Expr (:at 1519745619906) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673061364392) (:by |Qr5ffqtY) (:text |.!measureText)
                              |j $ %{} :Leaf (:at 1519745623339) (:by |root) (:text |ctx)
                              |r $ %{} :Leaf (:at 1519745625374) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1519749824597) (:by |root) (:text |0)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1519745446524) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1519745446524) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1519745446524) (:by |root) (:text |app.util.dom)
  :users $ {}
    |Qr5ffqtY $ {} (:avatar nil) (:id |Qr5ffqtY) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
