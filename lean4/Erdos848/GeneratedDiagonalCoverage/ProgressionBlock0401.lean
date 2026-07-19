import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00061_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 3657) (.leaf 60162))

theorem progressionSegment00061_1_0000Check :
    progressionSegment00061_1_0000Tree.check indexedMarker 537289 34831 0 = true :=
  by decide

theorem progressionSegment00061_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 537289 34831 0 2 :=
  by simpa [progressionSegment00061_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00061_1_0000Check

def progressionSegment00061_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 116667)

theorem progressionSegment00061_1_0001Check :
    progressionSegment00061_1_0001Tree.check indexedMarker 537289 34831 2 = true :=
  by decide

theorem progressionSegment00061_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 537289 34831 2 3 :=
  by simpa [progressionSegment00061_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00061_1_0001Check

def progressionSegment00061_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 52835) (.leaf 109328))

theorem progressionSegment00061_2_0000Check :
    progressionSegment00061_2_0000Tree.check indexedMarker 537289 502458 0 = true :=
  by decide

theorem progressionSegment00061_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 537289 502458 0 2 :=
  by simpa [progressionSegment00061_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00061_2_0000Check

def progressionSegment00062_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 34640) (.leaf 94891))

theorem progressionSegment00062_1_0000Check :
    progressionSegment00062_1_0000Tree.check indexedMarker 573049 329382 0 = true :=
  by decide

theorem progressionSegment00062_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 573049 329382 0 2 :=
  by simpa [progressionSegment00062_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00062_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
