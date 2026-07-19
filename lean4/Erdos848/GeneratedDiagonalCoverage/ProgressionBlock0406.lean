import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00067_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 39082) (.leaf 107898))

theorem progressionSegment00067_2_0000Check :
    progressionSegment00067_2_0000Tree.check indexedMarker 654481 371649 0 = true :=
  by decide

theorem progressionSegment00067_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 654481 371649 0 2 :=
  by simpa [progressionSegment00067_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00067_2_0000Check

def progressionSegment00068_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 3131) (.leaf 74018))

theorem progressionSegment00068_1_0000Check :
    progressionSegment00068_1_0000Tree.check indexedMarker 674041 29851 0 = true :=
  by decide

theorem progressionSegment00068_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 674041 29851 0 2 :=
  by simpa [progressionSegment00068_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00068_1_0000Check

def progressionSegment00068_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 144896)

theorem progressionSegment00068_1_0001Check :
    progressionSegment00068_1_0001Tree.check indexedMarker 674041 29851 2 = true :=
  by decide

theorem progressionSegment00068_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 674041 29851 2 3 :=
  by simpa [progressionSegment00068_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00068_1_0001Check

def progressionSegment00068_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 67741) (.leaf 138630))

theorem progressionSegment00068_2_0000Check :
    progressionSegment00068_2_0000Tree.check indexedMarker 674041 644190 0 = true :=
  by decide

theorem progressionSegment00068_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 674041 644190 0 2 :=
  by simpa [progressionSegment00068_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00068_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
