import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00049_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 731) (.leaf 35740)) (.node (.leaf 70755) (.leaf 105754)))

theorem progressionSegment00049_2_0000Check :
    progressionSegment00049_2_0000Tree.check indexedMarker 332929 6948 0 = true :=
  by decide

theorem progressionSegment00049_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 332929 6948 0 4 :=
  by simpa [progressionSegment00049_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00049_2_0000Check

def progressionSegment00049_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 140774)

theorem progressionSegment00049_2_0001Check :
    progressionSegment00049_2_0001Tree.check indexedMarker 332929 6948 4 = true :=
  by decide

theorem progressionSegment00049_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 332929 6948 4 5 :=
  by simpa [progressionSegment00049_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00049_2_0001Check

def progressionSegment00050_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 24022) (.leaf 60995)) (.node (.leaf 97959) (.leaf 134953)))

theorem progressionSegment00050_1_0000Check :
    progressionSegment00050_1_0000Tree.check indexedMarker 351649 228382 0 = true :=
  by decide

theorem progressionSegment00050_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 351649 228382 0 4 :=
  by simpa [progressionSegment00050_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00050_1_0000Check

def progressionSegment00050_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 12964) (.leaf 49950)) (.node (.leaf 86916) (.leaf 123899)))

theorem progressionSegment00050_2_0000Check :
    progressionSegment00050_2_0000Tree.check indexedMarker 351649 123267 0 = true :=
  by decide

theorem progressionSegment00050_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 351649 123267 0 4 :=
  by simpa [progressionSegment00050_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00050_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
