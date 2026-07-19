import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00064_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 136921)

theorem progressionSegment00064_2_0001Check :
    progressionSegment00064_2_0001Tree.check indexedMarker 591361 119257 2 = true :=
  by decide

theorem progressionSegment00064_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 591361 119257 2 3 :=
  by simpa [progressionSegment00064_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00064_2_0001Check

def progressionSegment00065_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 41251) (.leaf 104067))

theorem progressionSegment00065_1_0000Check :
    progressionSegment00065_1_0000Tree.check indexedMarker 597529 392228 0 = true :=
  by decide

theorem progressionSegment00065_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 597529 392228 0 2 :=
  by simpa [progressionSegment00065_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00065_1_0000Check

def progressionSegment00065_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 21608) (.leaf 84419))

theorem progressionSegment00065_2_0000Check :
    progressionSegment00065_2_0000Tree.check indexedMarker 597529 205301 0 = true :=
  by decide

theorem progressionSegment00065_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 597529 205301 0 2 :=
  by simpa [progressionSegment00065_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00065_2_0000Check

def progressionSegment00065_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 147262)

theorem progressionSegment00065_2_0001Check :
    progressionSegment00065_2_0001Tree.check indexedMarker 597529 205301 2 = true :=
  by decide

theorem progressionSegment00065_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 597529 205301 2 3 :=
  by simpa [progressionSegment00065_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00065_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
