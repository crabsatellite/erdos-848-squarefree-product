import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00080_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 71250)

theorem progressionSegment00080_1_0000Check :
    progressionSegment00080_1_0000Tree.check indexedMarker 1018081 677508 0 = true :=
  by decide

theorem progressionSegment00080_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1018081 677508 0 1 :=
  by simpa [progressionSegment00080_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00080_1_0000Check

def progressionSegment00080_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 35816) (.leaf 142878))

theorem progressionSegment00080_2_0000Check :
    progressionSegment00080_2_0000Tree.check indexedMarker 1018081 340573 0 = true :=
  by decide

theorem progressionSegment00080_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1018081 340573 0 2 :=
  by simpa [progressionSegment00080_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00080_2_0000Check

def progressionSegment00081_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 4801) (.leaf 112709))

theorem progressionSegment00081_1_0000Check :
    progressionSegment00081_1_0000Tree.check indexedMarker 1026169 45630 0 = true :=
  by decide

theorem progressionSegment00081_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1026169 45630 0 2 :=
  by simpa [progressionSegment00081_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00081_1_0000Check

def progressionSegment00081_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 103109)

theorem progressionSegment00081_2_0000Check :
    progressionSegment00081_2_0000Tree.check indexedMarker 1026169 980539 0 = true :=
  by decide

theorem progressionSegment00081_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1026169 980539 0 1 :=
  by simpa [progressionSegment00081_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00081_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
