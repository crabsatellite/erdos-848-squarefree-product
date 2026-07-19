import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00203_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 54173)

theorem progressionSegment00203_2_0000Check :
    progressionSegment00203_2_0000Tree.check indexedMarker 8162449 515156 0 = true :=
  by decide

theorem progressionSegment00203_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 8162449 515156 0 1 :=
  by simpa [progressionSegment00203_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00203_2_0000Check

def progressionSegment00204_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 72034)

theorem progressionSegment00204_1_0000Check :
    progressionSegment00204_1_0000Tree.check indexedMarker 8185321 684981 0 = true :=
  by decide

theorem progressionSegment00204_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 8185321 684981 0 1 :=
  by simpa [progressionSegment00204_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00204_1_0000Check

def progressionSegment00206_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 7552)

theorem progressionSegment00206_1_0000Check :
    progressionSegment00206_1_0000Tree.check indexedMarker 8462281 71847 0 = true :=
  by decide

theorem progressionSegment00206_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 8462281 71847 0 1 :=
  by simpa [progressionSegment00206_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00206_1_0000Check

def progressionSegment00207_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 8280)

theorem progressionSegment00207_2_0000Check :
    progressionSegment00207_2_0000Tree.check indexedMarker 8508889 78813 0 = true :=
  by decide

theorem progressionSegment00207_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 8508889 78813 0 1 :=
  by simpa [progressionSegment00207_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00207_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
