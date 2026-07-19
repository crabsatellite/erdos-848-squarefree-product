import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00125_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 25960)

theorem progressionSegment00125_1_0000Check :
    progressionSegment00125_1_0000Tree.check indexedMarker 2785561 246792 0 = true :=
  by decide

theorem progressionSegment00125_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2785561 246792 0 1 :=
  by simpa [progressionSegment00125_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00125_1_0000Check

def progressionSegment00126_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 40958)

theorem progressionSegment00126_1_0000Check :
    progressionSegment00126_1_0000Tree.check indexedMarker 2866249 389482 0 = true :=
  by decide

theorem progressionSegment00126_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2866249 389482 0 1 :=
  by simpa [progressionSegment00126_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00126_1_0000Check

def progressionSegment00127_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 96935)

theorem progressionSegment00127_1_0000Check :
    progressionSegment00127_1_0000Tree.check indexedMarker 2879809 921885 0 = true :=
  by decide

theorem progressionSegment00127_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2879809 921885 0 1 :=
  by simpa [progressionSegment00127_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00127_1_0000Check

def progressionSegment00128_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 47668)

theorem progressionSegment00128_2_0000Check :
    progressionSegment00128_2_0000Tree.check indexedMarker 2920681 453275 0 = true :=
  by decide

theorem progressionSegment00128_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2920681 453275 0 1 :=
  by simpa [progressionSegment00128_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00128_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
