import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00096_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 33479)

theorem progressionSegment00096_1_0000Check :
    progressionSegment00096_1_0000Tree.check indexedMarker 1471369 318301 0 = true :=
  by decide

theorem progressionSegment00096_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1471369 318301 0 1 :=
  by simpa [progressionSegment00096_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00096_1_0000Check

def progressionSegment00096_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 121259)

theorem progressionSegment00096_2_0000Check :
    progressionSegment00096_2_0000Tree.check indexedMarker 1471369 1153068 0 = true :=
  by decide

theorem progressionSegment00096_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1471369 1153068 0 1 :=
  by simpa [progressionSegment00096_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00096_2_0000Check

def progressionSegment00097_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 24967)

theorem progressionSegment00097_1_0000Check :
    progressionSegment00097_1_0000Tree.check indexedMarker 1481089 237393 0 = true :=
  by decide

theorem progressionSegment00097_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1481089 237393 0 1 :=
  by simpa [progressionSegment00097_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00097_1_0000Check

def progressionSegment00097_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 130780)

theorem progressionSegment00097_2_0000Check :
    progressionSegment00097_2_0000Tree.check indexedMarker 1481089 1243696 0 = true :=
  by decide

theorem progressionSegment00097_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1481089 1243696 0 1 :=
  by simpa [progressionSegment00097_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00097_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
