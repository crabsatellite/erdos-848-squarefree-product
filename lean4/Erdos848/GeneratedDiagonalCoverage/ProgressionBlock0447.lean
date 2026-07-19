import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00266_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 44401)

theorem progressionSegment00266_1_0000Check :
    progressionSegment00266_1_0000Tree.check indexedMarker 15342889 422201 0 = true :=
  by decide

theorem progressionSegment00266_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 15342889 422201 0 1 :=
  by simpa [progressionSegment00266_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00266_1_0000Check

def progressionSegment00272_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 118036)

theorem progressionSegment00272_1_0000Check :
    progressionSegment00272_1_0000Tree.check indexedMarker 16394401 1122457 0 = true :=
  by decide

theorem progressionSegment00272_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 16394401 1122457 0 1 :=
  by simpa [progressionSegment00272_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00272_1_0000Check

def progressionSegment00274_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 22227)

theorem progressionSegment00274_2_0000Check :
    progressionSegment00274_2_0000Tree.check indexedMarker 16589329 211247 0 = true :=
  by decide

theorem progressionSegment00274_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 16589329 211247 0 1 :=
  by simpa [progressionSegment00274_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00274_2_0000Check

def progressionSegment00276_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 46129)

theorem progressionSegment00276_1_0000Check :
    progressionSegment00276_1_0000Tree.check indexedMarker 17048641 438569 0 = true :=
  by decide

theorem progressionSegment00276_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 17048641 438569 0 1 :=
  by simpa [progressionSegment00276_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00276_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
