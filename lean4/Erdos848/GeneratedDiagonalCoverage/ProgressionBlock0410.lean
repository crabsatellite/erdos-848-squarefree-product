import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00074_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 26736) (.leaf 117491))

theorem progressionSegment00074_1_0000Check :
    progressionSegment00074_1_0000Tree.check indexedMarker 863041 254222 0 = true :=
  by decide

theorem progressionSegment00074_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 863041 254222 0 2 :=
  by simpa [progressionSegment00074_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00074_1_0000Check

def progressionSegment00074_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 64023) (.leaf 154783))

theorem progressionSegment00074_2_0000Check :
    progressionSegment00074_2_0000Tree.check indexedMarker 863041 608819 0 = true :=
  by decide

theorem progressionSegment00074_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 863041 608819 0 2 :=
  by simpa [progressionSegment00074_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00074_2_0000Check

def progressionSegment00075_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 65708)

theorem progressionSegment00075_1_0000Check :
    progressionSegment00075_1_0000Tree.check indexedMarker 877969 624783 0 = true :=
  by decide

theorem progressionSegment00075_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 877969 624783 0 1 :=
  by simpa [progressionSegment00075_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00075_1_0000Check

def progressionSegment00075_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 26629) (.leaf 118950))

theorem progressionSegment00075_2_0000Check :
    progressionSegment00075_2_0000Tree.check indexedMarker 877969 253186 0 = true :=
  by decide

theorem progressionSegment00075_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 877969 253186 0 2 :=
  by simpa [progressionSegment00075_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00075_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
