import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00098_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 89615)

theorem progressionSegment00098_1_0000Check :
    progressionSegment00098_1_0000Tree.check indexedMarker 1510441 852329 0 = true :=
  by decide

theorem progressionSegment00098_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1510441 852329 0 1 :=
  by simpa [progressionSegment00098_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00098_1_0000Check

def progressionSegment00098_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 69201)

theorem progressionSegment00098_2_0000Check :
    progressionSegment00098_2_0000Tree.check indexedMarker 1510441 658112 0 = true :=
  by decide

theorem progressionSegment00098_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1510441 658112 0 1 :=
  by simpa [progressionSegment00098_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00098_2_0000Check

def progressionSegment00099_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 130668)

theorem progressionSegment00099_1_0000Check :
    progressionSegment00099_1_0000Tree.check indexedMarker 1530169 1242639 0 = true :=
  by decide

theorem progressionSegment00099_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1530169 1242639 0 1 :=
  by simpa [progressionSegment00099_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00099_1_0000Check

def progressionSegment00099_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 30242)

theorem progressionSegment00099_2_0000Check :
    progressionSegment00099_2_0000Tree.check indexedMarker 1530169 287530 0 = true :=
  by decide

theorem progressionSegment00099_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1530169 287530 0 1 :=
  by simpa [progressionSegment00099_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00099_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
