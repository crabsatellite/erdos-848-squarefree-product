import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00133_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 97642)

theorem progressionSegment00133_1_0000Check :
    progressionSegment00133_1_0000Tree.check indexedMarker 3157729 928596 0 = true :=
  by decide

theorem progressionSegment00133_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3157729 928596 0 1 :=
  by simpa [progressionSegment00133_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00133_1_0000Check

def progressionSegment00134_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 96953)

theorem progressionSegment00134_1_0000Check :
    progressionSegment00134_1_0000Tree.check indexedMarker 3200521 922059 0 = true :=
  by decide

theorem progressionSegment00134_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3200521 922059 0 1 :=
  by simpa [progressionSegment00134_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00134_1_0000Check

def progressionSegment00135_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 83031)

theorem progressionSegment00135_1_0000Check :
    progressionSegment00135_1_0000Tree.check indexedMarker 3243601 789662 0 = true :=
  by decide

theorem progressionSegment00135_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3243601 789662 0 1 :=
  by simpa [progressionSegment00135_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00135_1_0000Check

def progressionSegment00136_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 11946)

theorem progressionSegment00136_1_0000Check :
    progressionSegment00136_1_0000Tree.check indexedMarker 3463321 113582 0 = true :=
  by decide

theorem progressionSegment00136_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3463321 113582 0 1 :=
  by simpa [progressionSegment00136_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00136_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
