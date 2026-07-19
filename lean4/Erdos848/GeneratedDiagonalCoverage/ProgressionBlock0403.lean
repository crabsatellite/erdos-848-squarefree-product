import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00063_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 3117) (.leaf 64026))

theorem progressionSegment00063_2_0000Check :
    progressionSegment00063_2_0000Tree.check indexedMarker 579121 29718 0 = true :=
  by decide

theorem progressionSegment00063_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 579121 29718 0 2 :=
  by simpa [progressionSegment00063_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00063_2_0000Check

def progressionSegment00063_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 124925)

theorem progressionSegment00063_2_0001Check :
    progressionSegment00063_2_0001Tree.check indexedMarker 579121 29718 2 = true :=
  by decide

theorem progressionSegment00063_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 579121 29718 2 3 :=
  by simpa [progressionSegment00063_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00063_2_0001Check

def progressionSegment00064_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 49657) (.leaf 111829))

theorem progressionSegment00064_1_0000Check :
    progressionSegment00064_1_0000Tree.check indexedMarker 591361 472104 0 = true :=
  by decide

theorem progressionSegment00064_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 591361 472104 0 2 :=
  by simpa [progressionSegment00064_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00064_1_0000Check

def progressionSegment00064_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 12542) (.leaf 74725))

theorem progressionSegment00064_2_0000Check :
    progressionSegment00064_2_0000Tree.check indexedMarker 591361 119257 0 = true :=
  by decide

theorem progressionSegment00064_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 591361 119257 0 2 :=
  by simpa [progressionSegment00064_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00064_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
