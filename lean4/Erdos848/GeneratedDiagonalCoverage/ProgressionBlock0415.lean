import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00084_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100881)

theorem progressionSegment00084_1_0000Check :
    progressionSegment00084_1_0000Tree.check indexedMarker 1100401 959409 0 = true :=
  by decide

theorem progressionSegment00084_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1100401 959409 0 1 :=
  by simpa [progressionSegment00084_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00084_1_0000Check

def progressionSegment00084_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 14832) (.leaf 130536))

theorem progressionSegment00084_2_0000Check :
    progressionSegment00084_2_0000Tree.check indexedMarker 1100401 140992 0 = true :=
  by decide

theorem progressionSegment00084_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1100401 140992 0 2 :=
  by simpa [progressionSegment00084_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00084_2_0000Check

def progressionSegment00085_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 60907)

theorem progressionSegment00085_1_0000Check :
    progressionSegment00085_1_0000Tree.check indexedMarker 1125721 579203 0 = true :=
  by decide

theorem progressionSegment00085_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1125721 579203 0 1 :=
  by simpa [progressionSegment00085_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00085_1_0000Check

def progressionSegment00085_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 57467)

theorem progressionSegment00085_2_0000Check :
    progressionSegment00085_2_0000Tree.check indexedMarker 1125721 546518 0 = true :=
  by decide

theorem progressionSegment00085_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1125721 546518 0 1 :=
  by simpa [progressionSegment00085_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00085_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
