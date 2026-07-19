import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00047_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 21169) (.leaf 53784)) (.node (.leaf 86407) (.leaf 119036)))

theorem progressionSegment00047_1_0000Check :
    progressionSegment00047_1_0000Tree.check indexedMarker 310249 201195 0 = true :=
  by decide

theorem progressionSegment00047_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 310249 201195 0 4 :=
  by simpa [progressionSegment00047_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00047_1_0000Check

def progressionSegment00047_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 151659)

theorem progressionSegment00047_1_0001Check :
    progressionSegment00047_1_0001Tree.check indexedMarker 310249 201195 4 = true :=
  by decide

theorem progressionSegment00047_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 310249 201195 4 5 :=
  by simpa [progressionSegment00047_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00047_1_0001Check

def progressionSegment00047_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 11465) (.leaf 44092)) (.node (.leaf 76715) (.leaf 109336)))

theorem progressionSegment00047_2_0000Check :
    progressionSegment00047_2_0000Tree.check indexedMarker 310249 109054 0 = true :=
  by decide

theorem progressionSegment00047_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 310249 109054 0 4 :=
  by simpa [progressionSegment00047_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00047_2_0000Check

def progressionSegment00047_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 141972)

theorem progressionSegment00047_2_0001Check :
    progressionSegment00047_2_0001Tree.check indexedMarker 310249 109054 4 = true :=
  by decide

theorem progressionSegment00047_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 310249 109054 4 5 :=
  by simpa [progressionSegment00047_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00047_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
