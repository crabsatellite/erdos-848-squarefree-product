import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00160_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 12761)

theorem progressionSegment00160_1_0000Check :
    progressionSegment00160_1_0000Tree.check indexedMarker 4932841 121365 0 = true :=
  by decide

theorem progressionSegment00160_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4932841 121365 0 1 :=
  by simpa [progressionSegment00160_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00160_1_0000Check

def progressionSegment00162_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 17327)

theorem progressionSegment00162_1_0000Check :
    progressionSegment00162_1_0000Tree.check indexedMarker 5148361 164655 0 = true :=
  by decide

theorem progressionSegment00162_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5148361 164655 0 1 :=
  by simpa [progressionSegment00162_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00162_1_0000Check

def progressionSegment00168_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 66258)

theorem progressionSegment00168_2_0000Check :
    progressionSegment00168_2_0000Tree.check indexedMarker 5442889 630018 0 = true :=
  by decide

theorem progressionSegment00168_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5442889 630018 0 1 :=
  by simpa [progressionSegment00168_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00168_2_0000Check

def progressionSegment00170_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100553)

theorem progressionSegment00170_2_0000Check :
    progressionSegment00170_2_0000Tree.check indexedMarker 5555449 956309 0 = true :=
  by decide

theorem progressionSegment00170_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5555449 956309 0 1 :=
  by simpa [progressionSegment00170_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00170_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
