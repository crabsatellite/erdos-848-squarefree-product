import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment01013_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 126531)

theorem progressionSegment01013_2_0000Check :
    progressionSegment01013_2_0000Tree.check indexedMarker 322453849 1203253 0 = true :=
  by decide

theorem progressionSegment01013_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 322453849 1203253 0 1 :=
  by simpa [progressionSegment01013_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment01013_2_0000Check

def progressionSegment01181_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 13540)

theorem progressionSegment01181_1_0000Check :
    progressionSegment01181_1_0000Tree.check indexedMarker 448126561 128766 0 = true :=
  by decide

theorem progressionSegment01181_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 448126561 128766 0 1 :=
  by simpa [progressionSegment01181_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment01181_1_0000Check

def progressionSegment01465_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 113096)

theorem progressionSegment01465_1_0000Check :
    progressionSegment01465_1_0000Tree.check indexedMarker 714867169 1075479 0 = true :=
  by decide

theorem progressionSegment01465_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 714867169 1075479 0 1 :=
  by simpa [progressionSegment01465_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment01465_1_0000Check

def progressionSegment01778_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 4978)

theorem progressionSegment01778_2_0000Check :
    progressionSegment01778_2_0000Tree.check indexedMarker 1119638521 47321 0 = true :=
  by decide

theorem progressionSegment01778_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1119638521 47321 0 1 :=
  by simpa [progressionSegment01778_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment01778_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
