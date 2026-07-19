import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00109_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 154937)

theorem progressionSegment00109_1_0000Check :
    progressionSegment00109_1_0000Tree.check indexedMarker 1985281 1473362 0 = true :=
  by decide

theorem progressionSegment00109_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1985281 1473362 0 1 :=
  by simpa [progressionSegment00109_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00109_1_0000Check

def progressionSegment00109_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 53832)

theorem progressionSegment00109_2_0000Check :
    progressionSegment00109_2_0000Tree.check indexedMarker 1985281 511919 0 = true :=
  by decide

theorem progressionSegment00109_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1985281 511919 0 1 :=
  by simpa [progressionSegment00109_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00109_2_0000Check

def progressionSegment00110_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 138339)

theorem progressionSegment00110_1_0000Check :
    progressionSegment00110_1_0000Tree.check indexedMarker 2042041 1315489 0 = true :=
  by decide

theorem progressionSegment00110_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2042041 1315489 0 1 :=
  by simpa [progressionSegment00110_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00110_1_0000Check

def progressionSegment00110_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 76400)

theorem progressionSegment00110_2_0000Check :
    progressionSegment00110_2_0000Tree.check indexedMarker 2042041 726552 0 = true :=
  by decide

theorem progressionSegment00110_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2042041 726552 0 1 :=
  by simpa [progressionSegment00110_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00110_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
