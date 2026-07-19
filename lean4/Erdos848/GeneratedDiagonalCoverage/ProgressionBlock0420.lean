import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00094_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 39038)

theorem progressionSegment00094_1_0000Check :
    progressionSegment00094_1_0000Tree.check indexedMarker 1423249 371209 0 = true :=
  by decide

theorem progressionSegment00094_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1423249 371209 0 1 :=
  by simpa [progressionSegment00094_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00094_1_0000Check

def progressionSegment00094_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 110628)

theorem progressionSegment00094_2_0000Check :
    progressionSegment00094_2_0000Tree.check indexedMarker 1423249 1052040 0 = true :=
  by decide

theorem progressionSegment00094_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1423249 1052040 0 1 :=
  by simpa [progressionSegment00094_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00094_2_0000Check

def progressionSegment00095_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 145486)

theorem progressionSegment00095_1_0000Check :
    progressionSegment00095_1_0000Tree.check indexedMarker 1442401 1383503 0 = true :=
  by decide

theorem progressionSegment00095_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1442401 1383503 0 1 :=
  by simpa [progressionSegment00095_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00095_1_0000Check

def progressionSegment00095_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 6188)

theorem progressionSegment00095_2_0000Check :
    progressionSegment00095_2_0000Tree.check indexedMarker 1442401 58898 0 = true :=
  by decide

theorem progressionSegment00095_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1442401 58898 0 1 :=
  by simpa [progressionSegment00095_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00095_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
