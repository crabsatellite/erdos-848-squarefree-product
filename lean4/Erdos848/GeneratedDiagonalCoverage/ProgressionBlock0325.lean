import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00008_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 143543) (.leaf 144103)) (.node (.leaf 144653) (.leaf 145221))) (.node (.node (.leaf 145783) (.leaf 146346)) (.node (.leaf 146907) (.leaf 147470)))) (.node (.node (.node (.leaf 148023) (.leaf 148579)) (.node (.leaf 149136) (.leaf 149703))) (.node (.node (.leaf 150261) (.leaf 150821)) (.node (.leaf 151383) (.leaf 151953)))))

theorem progressionSegment00008_2_0001Check :
    progressionSegment00008_2_0001Tree.check indexedMarker 5329 776 256 = true :=
  by decide

theorem progressionSegment00008_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5329 776 256 272 :=
  by simpa [progressionSegment00008_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00008_2_0001Check

def progressionSegment00008_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 152510) (.leaf 153069)) (.node (.leaf 153630) (.leaf 154190))) (.node (.node (.leaf 154751) (.leaf 155307)) (.node (.leaf 155868) (.leaf 156425))))

theorem progressionSegment00008_2_0002Check :
    progressionSegment00008_2_0002Tree.check indexedMarker 5329 776 272 = true :=
  by decide

theorem progressionSegment00008_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5329 776 272 280 :=
  by simpa [progressionSegment00008_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00008_2_0002Check

def progressionSegment00008_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 156992) (.leaf 157548))

theorem progressionSegment00008_2_0003Check :
    progressionSegment00008_2_0003Tree.check indexedMarker 5329 776 280 = true :=
  by decide

theorem progressionSegment00008_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5329 776 280 282 :=
  by simpa [progressionSegment00008_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00008_2_0003Check

end Erdos848.GeneratedDiagonalCoverage
