import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00102_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 12792)

theorem progressionSegment00102_2_0000Check :
    progressionSegment00102_2_0000Tree.check indexedMarker 1661521 121645 0 = true :=
  by decide

theorem progressionSegment00102_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1661521 121645 0 1 :=
  by simpa [progressionSegment00102_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00102_2_0000Check

def progressionSegment00103_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 2450)

theorem progressionSegment00103_1_0000Check :
    progressionSegment00103_1_0000Tree.check indexedMarker 1682209 23382 0 = true :=
  by decide

theorem progressionSegment00103_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1682209 23382 0 1 :=
  by simpa [progressionSegment00103_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00103_1_0000Check

def progressionSegment00104_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 6976)

theorem progressionSegment00104_2_0000Check :
    progressionSegment00104_2_0000Tree.check indexedMarker 1692601 66402 0 = true :=
  by decide

theorem progressionSegment00104_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1692601 66402 0 1 :=
  by simpa [progressionSegment00104_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00104_2_0000Check

def progressionSegment00105_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 24982)

theorem progressionSegment00105_2_0000Check :
    progressionSegment00105_2_0000Tree.check indexedMarker 1745041 237523 0 = true :=
  by decide

theorem progressionSegment00105_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1745041 237523 0 1 :=
  by simpa [progressionSegment00105_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00105_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
