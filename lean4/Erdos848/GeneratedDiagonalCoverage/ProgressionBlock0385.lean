import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00041_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 143033)

theorem progressionSegment00041_1_0002Check :
    progressionSegment00041_1_0002Tree.check indexedMarker 201601 150482 6 = true :=
  by decide

theorem progressionSegment00041_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 201601 150482 6 7 :=
  by simpa [progressionSegment00041_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00041_1_0002Check

def progressionSegment00041_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 5375) (.leaf 26580)) (.node (.leaf 47777) (.leaf 68976))) (.node (.node (.leaf 90169) (.leaf 111371)) (.node (.leaf 132566) (.leaf 153778))))

theorem progressionSegment00041_2_0000Check :
    progressionSegment00041_2_0000Tree.check indexedMarker 201601 51119 0 = true :=
  by decide

theorem progressionSegment00041_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 201601 51119 0 8 :=
  by simpa [progressionSegment00041_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00041_2_0000Check

def progressionSegment00042_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 19750) (.leaf 41701)) (.node (.leaf 63667) (.leaf 85624)))

theorem progressionSegment00042_1_0000Check :
    progressionSegment00042_1_0000Tree.check indexedMarker 208849 187718 0 = true :=
  by decide

theorem progressionSegment00042_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 208849 187718 0 4 :=
  by simpa [progressionSegment00042_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00042_1_0000Check

def progressionSegment00042_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 107584) (.leaf 129548))

theorem progressionSegment00042_1_0001Check :
    progressionSegment00042_1_0001Tree.check indexedMarker 208849 187718 4 = true :=
  by decide

theorem progressionSegment00042_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 208849 187718 4 6 :=
  by simpa [progressionSegment00042_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00042_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
