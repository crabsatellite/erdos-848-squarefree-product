import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00008_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 143940) (.leaf 144492)) (.node (.leaf 145055) (.leaf 145623))) (.node (.node (.leaf 146180) (.leaf 146741)) (.node (.leaf 147304) (.leaf 147860)))) (.node (.node (.node (.leaf 148415) (.leaf 148974)) (.node (.leaf 149539) (.leaf 150099))) (.node (.node (.leaf 150654) (.leaf 151219)) (.node (.leaf 151789) (.leaf 152348)))))

theorem progressionSegment00008_1_0001Check :
    progressionSegment00008_1_0001Tree.check indexedMarker 5329 4553 256 = true :=
  by decide

theorem progressionSegment00008_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5329 4553 256 272 :=
  by simpa [progressionSegment00008_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00008_1_0001Check

def progressionSegment00008_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 152906) (.leaf 153467)) (.node (.leaf 154030) (.leaf 154586))) (.node (.node (.leaf 155142) (.leaf 155705)) (.node (.leaf 156269) (.leaf 156827))))

theorem progressionSegment00008_1_0002Check :
    progressionSegment00008_1_0002Tree.check indexedMarker 5329 4553 272 = true :=
  by decide

theorem progressionSegment00008_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5329 4553 272 280 :=
  by simpa [progressionSegment00008_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00008_1_0002Check

def progressionSegment00008_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157386)

theorem progressionSegment00008_1_0003Check :
    progressionSegment00008_1_0003Tree.check indexedMarker 5329 4553 280 = true :=
  by decide

theorem progressionSegment00008_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5329 4553 280 281 :=
  by simpa [progressionSegment00008_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00008_1_0003Check

end Erdos848.GeneratedDiagonalCoverage
