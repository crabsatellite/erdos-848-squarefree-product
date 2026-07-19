import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00325_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 151123)

theorem progressionSegment00325_2_0000Check :
    progressionSegment00325_2_0000Tree.check indexedMarker 24571849 1437171 0 = true :=
  by decide

theorem progressionSegment00325_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24571849 1437171 0 1 :=
  by simpa [progressionSegment00325_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00325_2_0000Check

def progressionSegment00333_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 54188)

theorem progressionSegment00333_2_0000Check :
    progressionSegment00333_2_0000Tree.check indexedMarker 26020201 515302 0 = true :=
  by decide

theorem progressionSegment00333_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 26020201 515302 0 1 :=
  by simpa [progressionSegment00333_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00333_2_0000Check

def progressionSegment00343_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 143656)

theorem progressionSegment00343_2_0000Check :
    progressionSegment00343_2_0000Tree.check indexedMarker 27888961 1366106 0 = true :=
  by decide

theorem progressionSegment00343_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 27888961 1366106 0 1 :=
  by simpa [progressionSegment00343_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00343_2_0000Check

def progressionSegment00352_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 44949)

theorem progressionSegment00352_2_0000Check :
    progressionSegment00352_2_0000Tree.check indexedMarker 29604481 427387 0 = true :=
  by decide

theorem progressionSegment00352_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29604481 427387 0 1 :=
  by simpa [progressionSegment00352_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00352_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
