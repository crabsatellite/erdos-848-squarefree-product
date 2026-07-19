import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00082_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 10128) (.leaf 119754))

theorem progressionSegment00082_1_0000Check :
    progressionSegment00082_1_0000Tree.check indexedMarker 1042441 96348 0 = true :=
  by decide

theorem progressionSegment00082_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1042441 96348 0 2 :=
  by simpa [progressionSegment00082_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00082_1_0000Check

def progressionSegment00082_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 99471)

theorem progressionSegment00082_2_0000Check :
    progressionSegment00082_2_0000Tree.check indexedMarker 1042441 946093 0 = true :=
  by decide

theorem progressionSegment00082_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1042441 946093 0 1 :=
  by simpa [progressionSegment00082_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00082_2_0000Check

def progressionSegment00083_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 4090) (.leaf 116312))

theorem progressionSegment00083_1_0000Check :
    progressionSegment00083_1_0000Tree.check indexedMarker 1067089 38899 0 = true :=
  by decide

theorem progressionSegment00083_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1067089 38899 0 2 :=
  by simpa [progressionSegment00083_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00083_1_0000Check

def progressionSegment00083_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 108113)

theorem progressionSegment00083_2_0000Check :
    progressionSegment00083_2_0000Tree.check indexedMarker 1067089 1028190 0 = true :=
  by decide

theorem progressionSegment00083_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1067089 1028190 0 1 :=
  by simpa [progressionSegment00083_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00083_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
