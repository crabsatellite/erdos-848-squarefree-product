import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00030_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 130747) (.leaf 141321))

theorem progressionSegment00030_2_0002Check :
    progressionSegment00030_2_0002Tree.check indexedMarker 100489 37520 12 = true :=
  by decide

theorem progressionSegment00030_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 37520 12 14 :=
  by simpa [progressionSegment00030_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_2_0002Check

def progressionSegment00030_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 151890)

theorem progressionSegment00030_2_0003Check :
    progressionSegment00030_2_0003Tree.check indexedMarker 100489 37520 14 = true :=
  by decide

theorem progressionSegment00030_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 37520 14 15 :=
  by simpa [progressionSegment00030_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_2_0003Check

def progressionSegment00031_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 3266) (.leaf 15222)) (.node (.leaf 27169) (.leaf 39105))) (.node (.node (.leaf 51050) (.leaf 62997)) (.node (.leaf 74930) (.leaf 86871))))

theorem progressionSegment00031_1_0000Check :
    progressionSegment00031_1_0000Tree.check indexedMarker 113569 31152 0 = true :=
  by decide

theorem progressionSegment00031_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 113569 31152 0 8 :=
  by simpa [progressionSegment00031_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00031_1_0000Check

def progressionSegment00031_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 98805) (.leaf 110757)) (.node (.leaf 122700) (.leaf 134642)))

theorem progressionSegment00031_1_0001Check :
    progressionSegment00031_1_0001Tree.check indexedMarker 113569 31152 8 = true :=
  by decide

theorem progressionSegment00031_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 113569 31152 8 12 :=
  by simpa [progressionSegment00031_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00031_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
