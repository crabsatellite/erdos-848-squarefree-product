import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00001_1_0017Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 154699) (.leaf 154715)) (.node (.leaf 154733) (.leaf 154752))) (.node (.node (.leaf 154769) (.leaf 154791)) (.node (.leaf 154806) (.leaf 154825)))) (.node (.node (.node (.leaf 154842) (.leaf 154859)) (.node (.leaf 154875) (.leaf 154893))) (.node (.node (.leaf 154910) (.leaf 154926)) (.node (.leaf 154946) (.leaf 154964))))) (.node (.node (.node (.node (.leaf 154980) (.leaf 154999)) (.node (.leaf 155014) (.leaf 155033))) (.node (.node (.leaf 155051) (.leaf 155070)) (.node (.leaf 155086) (.leaf 155102)))) (.node (.node (.node (.leaf 155119) (.leaf 155137)) (.node (.leaf 155154) (.leaf 155172))) (.node (.node (.leaf 155189) (.leaf 155208)) (.node (.leaf 155227) (.leaf 155245)))))) (.node (.node (.node (.node (.node (.leaf 155262) (.leaf 155279)) (.node (.leaf 155297) (.leaf 155315))) (.node (.node (.leaf 155334) (.leaf 155351)) (.node (.leaf 155370) (.leaf 155387)))) (.node (.node (.node (.leaf 155406) (.leaf 155425)) (.node (.leaf 155442) (.leaf 155459))) (.node (.node (.leaf 155477) (.leaf 155496)) (.node (.leaf 155513) (.leaf 155531))))) (.node (.node (.node (.node (.leaf 155548) (.leaf 155565)) (.node (.leaf 155585) (.leaf 155604))) (.node (.node (.leaf 155621) (.leaf 155638)) (.node (.leaf 155654) (.leaf 155673)))) (.node (.node (.node (.leaf 155689) (.leaf 155708)) (.node (.leaf 155725) (.leaf 155743))) (.node (.node (.leaf 155761) (.leaf 155781)) (.node (.leaf 155797) (.leaf 155815))))))) (.node (.node (.node (.node (.node (.node (.leaf 155833) (.leaf 155851)) (.node (.leaf 155866) (.leaf 155885))) (.node (.node (.leaf 155901) (.leaf 155921)) (.node (.leaf 155939) (.leaf 155957)))) (.node (.node (.node (.leaf 155975) (.leaf 155991)) (.node (.leaf 156009) (.leaf 156027))) (.node (.node (.leaf 156045) (.leaf 156064)) (.node (.leaf 156080) (.leaf 156099))))) (.node (.node (.node (.node (.leaf 156116) (.leaf 156133)) (.node (.leaf 156152) (.leaf 156169))) (.node (.node (.leaf 156190) (.leaf 156208)) (.node (.leaf 156226) (.leaf 156244)))) (.node (.node (.node (.leaf 156261) (.leaf 156281)) (.node (.leaf 156297) (.leaf 156314))) (.node (.node (.leaf 156333) (.leaf 156349)) (.node (.leaf 156368) (.leaf 156383)))))) (.node (.node (.node (.node (.node (.leaf 156400) (.leaf 156416)) (.node (.leaf 156433) (.leaf 156451))) (.node (.node (.leaf 156468) (.leaf 156488)) (.node (.leaf 156506) (.leaf 156522)))) (.node (.node (.node (.leaf 156540) (.leaf 156557)) (.node (.leaf 156576) (.leaf 156592))) (.node (.node (.leaf 156612) (.leaf 156632)) (.node (.leaf 156649) (.leaf 156667))))) (.node (.node (.node (.node (.leaf 156684) (.leaf 156701)) (.node (.leaf 156719) (.leaf 156736))) (.node (.node (.leaf 156754) (.leaf 156772)) (.node (.leaf 156791) (.leaf 156809)))) (.node (.node (.node (.leaf 156828) (.leaf 156847)) (.node (.leaf 156863) (.leaf 156880))) (.node (.node (.leaf 156897) (.leaf 156916)) (.node (.leaf 156936) (.leaf 156952))))))))

theorem progressionSegment00001_1_0017Check :
    progressionSegment00001_1_0017Tree.check indexedMarker 169 99 8704 = true :=
  by decide

theorem progressionSegment00001_1_0017 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 99 8704 8832 :=
  by simpa [progressionSegment00001_1_0017Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_1_0017Check

def progressionSegment00001_1_0018Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 156970) (.leaf 156989)) (.node (.leaf 157009) (.leaf 157026))) (.node (.node (.leaf 157044) (.leaf 157061)) (.node (.leaf 157080) (.leaf 157098)))) (.node (.node (.node (.leaf 157115) (.leaf 157131)) (.node (.leaf 157147) (.leaf 157164))) (.node (.node (.leaf 157181) (.leaf 157200)) (.node (.leaf 157220) (.leaf 157237))))) (.node (.node (.node (.node (.leaf 157255) (.leaf 157271)) (.node (.leaf 157290) (.leaf 157308))) (.node (.node (.leaf 157323) (.leaf 157343)) (.node (.leaf 157360) (.leaf 157379)))) (.node (.node (.node (.leaf 157396) (.leaf 157412)) (.node (.leaf 157430) (.leaf 157446))) (.node (.node (.leaf 157464) (.leaf 157482)) (.node (.leaf 157499) (.leaf 157520))))))

theorem progressionSegment00001_1_0018Check :
    progressionSegment00001_1_0018Tree.check indexedMarker 169 99 8832 = true :=
  by decide

theorem progressionSegment00001_1_0018 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 99 8832 8864 :=
  by simpa [progressionSegment00001_1_0018Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_1_0018Check

def progressionSegment00001_1_0019Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 157535) (.leaf 157555)) (.node (.leaf 157571) (.leaf 157588))) (.node (.node (.leaf 157605) (.leaf 157624)) (.node (.leaf 157642) (.leaf 157660))))

theorem progressionSegment00001_1_0019Check :
    progressionSegment00001_1_0019Tree.check indexedMarker 169 99 8864 = true :=
  by decide

theorem progressionSegment00001_1_0019 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 99 8864 8872 :=
  by simpa [progressionSegment00001_1_0019Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_1_0019Check

def progressionSegment00001_1_0020Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 157677) (.leaf 157695)) (.node (.leaf 157711) (.leaf 157730)))

theorem progressionSegment00001_1_0020Check :
    progressionSegment00001_1_0020Tree.check indexedMarker 169 99 8872 = true :=
  by decide

theorem progressionSegment00001_1_0020 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 99 8872 8876 :=
  by simpa [progressionSegment00001_1_0020Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_1_0020Check

end Erdos848.GeneratedDiagonalCoverage
