import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00024_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 153021)

theorem progressionSegment00024_2_0003Check :
    progressionSegment00024_2_0003Tree.check indexedMarker 66049 2072 22 = true :=
  by decide

theorem progressionSegment00024_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 2072 22 23 :=
  by simpa [progressionSegment00024_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_2_0003Check

def progressionSegment00025_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1435) (.leaf 9037)) (.node (.leaf 16653) (.leaf 24265))) (.node (.node (.leaf 31871) (.leaf 39484)) (.node (.leaf 47094) (.leaf 54703)))) (.node (.node (.node (.leaf 62312) (.leaf 69916)) (.node (.leaf 77525) (.leaf 85135))) (.node (.node (.leaf 92735) (.leaf 100339)) (.node (.leaf 107956) (.leaf 115577)))))

theorem progressionSegment00025_1_0000Check :
    progressionSegment00025_1_0000Tree.check indexedMarker 72361 13637 0 = true :=
  by decide

theorem progressionSegment00025_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 72361 13637 0 16 :=
  by simpa [progressionSegment00025_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00025_1_0000Check

def progressionSegment00025_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 123184) (.leaf 130789)) (.node (.leaf 138407) (.leaf 146015)))

theorem progressionSegment00025_1_0001Check :
    progressionSegment00025_1_0001Tree.check indexedMarker 72361 13637 16 = true :=
  by decide

theorem progressionSegment00025_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 72361 13637 16 20 :=
  by simpa [progressionSegment00025_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00025_1_0001Check

def progressionSegment00025_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 153622)

theorem progressionSegment00025_1_0002Check :
    progressionSegment00025_1_0002Tree.check indexedMarker 72361 13637 20 = true :=
  by decide

theorem progressionSegment00025_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 72361 13637 20 21 :=
  by simpa [progressionSegment00025_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00025_1_0002Check

end Erdos848.GeneratedDiagonalCoverage
