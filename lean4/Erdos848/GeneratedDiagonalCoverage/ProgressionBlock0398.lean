import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00057_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 132611)

theorem progressionSegment00057_2_0001Check :
    progressionSegment00057_2_0001Tree.check indexedMarker 452929 355286 2 = true :=
  by decide

theorem progressionSegment00057_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 452929 355286 2 3 :=
  by simpa [progressionSegment00057_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00057_2_0001Check

def progressionSegment00058_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 926) (.leaf 49136)) (.node (.leaf 97309) (.leaf 145519)))

theorem progressionSegment00058_1_0000Check :
    progressionSegment00058_1_0000Tree.check indexedMarker 458329 8827 0 = true :=
  by decide

theorem progressionSegment00058_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 458329 8827 0 4 :=
  by simpa [progressionSegment00058_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00058_1_0000Check

def progressionSegment00058_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 47271) (.leaf 95457))

theorem progressionSegment00058_2_0000Check :
    progressionSegment00058_2_0000Tree.check indexedMarker 458329 449502 0 = true :=
  by decide

theorem progressionSegment00058_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 458329 449502 0 2 :=
  by simpa [progressionSegment00058_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00058_2_0000Check

def progressionSegment00058_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 143665)

theorem progressionSegment00058_2_0001Check :
    progressionSegment00058_2_0001Tree.check indexedMarker 458329 449502 2 = true :=
  by decide

theorem progressionSegment00058_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 458329 449502 2 3 :=
  by simpa [progressionSegment00058_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00058_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
