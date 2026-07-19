import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00040_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 5847) (.leaf 25567)) (.node (.leaf 45287) (.leaf 64996))) (.node (.node (.leaf 84711) (.leaf 104413)) (.node (.leaf 124144) (.leaf 143861))))

theorem progressionSegment00040_1_0000Check :
    progressionSegment00040_1_0000Tree.check indexedMarker 187489 55603 0 = true :=
  by decide

theorem progressionSegment00040_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 187489 55603 0 8 :=
  by simpa [progressionSegment00040_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00040_1_0000Check

def progressionSegment00040_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 13866) (.leaf 33590)) (.node (.leaf 53301) (.leaf 73020))) (.node (.node (.leaf 92721) (.leaf 112448)) (.node (.leaf 132161) (.leaf 151883))))

theorem progressionSegment00040_2_0000Check :
    progressionSegment00040_2_0000Tree.check indexedMarker 187489 131886 0 = true :=
  by decide

theorem progressionSegment00040_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 187489 131886 0 8 :=
  by simpa [progressionSegment00040_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00040_2_0000Check

def progressionSegment00041_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 15824) (.leaf 37022)) (.node (.leaf 58229) (.leaf 79422)))

theorem progressionSegment00041_1_0000Check :
    progressionSegment00041_1_0000Tree.check indexedMarker 201601 150482 0 = true :=
  by decide

theorem progressionSegment00041_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 201601 150482 0 4 :=
  by simpa [progressionSegment00041_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00041_1_0000Check

def progressionSegment00041_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 100615) (.leaf 121825))

theorem progressionSegment00041_1_0001Check :
    progressionSegment00041_1_0001Tree.check indexedMarker 201601 150482 4 = true :=
  by decide

theorem progressionSegment00041_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 201601 150482 4 6 :=
  by simpa [progressionSegment00041_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00041_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
