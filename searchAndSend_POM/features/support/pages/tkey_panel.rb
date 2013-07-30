# module TKeyPanel
  # include PageObject
# 
  # div(:mykey0, class: "inactive", id: "tkey0")
  # div(:mykey1, class: "inactive", id: "tkey1")
  # div(:mykey2, class: "inactive", id: "tkey2")
  # div(:mykey3, class: "inactive", id: "tkey3")
  # div(:mykey4, class: "active", id: "tkey4")
  # div(:mykey5, class: "inactive", id: "tkey5")
  # div(:mykey6, class: "inactive", id: "tkey6")
  # div(:mykey7, class: "active", id: "tkey7")
  # def checktKey (data)
    # mykey0? && mykey1? && mykey2? && mykey3? && mykey4? && mykey5? && mykey6? && mykey7?
  # end
# 
# end