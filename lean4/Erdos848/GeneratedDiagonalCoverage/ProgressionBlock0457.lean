import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00890_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100251)

theorem progressionSegment00890_2_0000Check :
    progressionSegment00890_2_0000Tree.check indexedMarker 236452129 953498 0 = true :=
  by decide

theorem progressionSegment00890_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 236452129 953498 0 1 :=
  by simpa [progressionSegment00890_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00890_2_0000Check

def progressionSegment00913_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 105180)

theorem progressionSegment00913_2_0000Check :
    progressionSegment00913_2_0000Tree.check indexedMarker 252079129 1000377 0 = true :=
  by decide

theorem progressionSegment00913_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 252079129 1000377 0 1 :=
  by simpa [progressionSegment00913_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00913_2_0000Check

def progressionSegment00962_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 115539)

theorem progressionSegment00962_1_0000Check :
    progressionSegment00962_1_0000Tree.check indexedMarker 285643801 1098695 0 = true :=
  by decide

theorem progressionSegment00962_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 285643801 1098695 0 1 :=
  by simpa [progressionSegment00962_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00962_1_0000Check

def progressionSegment00990_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 109309)

theorem progressionSegment00990_2_0000Check :
    progressionSegment00990_2_0000Tree.check indexedMarker 305445529 1039551 0 = true :=
  by decide

theorem progressionSegment00990_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 305445529 1039551 0 1 :=
  by simpa [progressionSegment00990_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00990_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
