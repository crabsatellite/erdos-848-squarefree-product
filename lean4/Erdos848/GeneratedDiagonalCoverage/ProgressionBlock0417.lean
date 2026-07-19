import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00088_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 60137)

theorem progressionSegment00088_1_0000Check :
    progressionSegment00088_1_0000Tree.check indexedMarker 1203409 571878 0 = true :=
  by decide

theorem progressionSegment00088_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1203409 571878 0 1 :=
  by simpa [progressionSegment00088_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00088_1_0000Check

def progressionSegment00088_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 66412)

theorem progressionSegment00088_2_0000Check :
    progressionSegment00088_2_0000Tree.check indexedMarker 1203409 631531 0 = true :=
  by decide

theorem progressionSegment00088_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1203409 631531 0 1 :=
  by simpa [progressionSegment00088_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00088_2_0000Check

def progressionSegment00089_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 4588) (.leaf 133912))

theorem progressionSegment00089_1_0000Check :
    progressionSegment00089_1_0000Tree.check indexedMarker 1229881 43605 0 = true :=
  by decide

theorem progressionSegment00089_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1229881 43605 0 2 :=
  by simpa [progressionSegment00089_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00089_1_0000Check

def progressionSegment00089_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 124747)

theorem progressionSegment00089_2_0000Check :
    progressionSegment00089_2_0000Tree.check indexedMarker 1229881 1186276 0 = true :=
  by decide

theorem progressionSegment00089_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1229881 1186276 0 1 :=
  by simpa [progressionSegment00089_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00089_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
