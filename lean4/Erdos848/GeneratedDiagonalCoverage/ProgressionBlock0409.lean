import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00072_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 19301) (.leaf 100151))

theorem progressionSegment00072_1_0000Check :
    progressionSegment00072_1_0000Tree.check indexedMarker 769129 183444 0 = true :=
  by decide

theorem progressionSegment00072_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 769129 183444 0 2 :=
  by simpa [progressionSegment00072_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00072_1_0000Check

def progressionSegment00072_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 61597) (.leaf 142475))

theorem progressionSegment00072_2_0000Check :
    progressionSegment00072_2_0000Tree.check indexedMarker 769129 585685 0 = true :=
  by decide

theorem progressionSegment00072_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 769129 585685 0 2 :=
  by simpa [progressionSegment00072_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00072_2_0000Check

def progressionSegment00073_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 27656) (.leaf 109259))

theorem progressionSegment00073_1_0000Check :
    progressionSegment00073_1_0000Tree.check indexedMarker 776161 262925 0 = true :=
  by decide

theorem progressionSegment00073_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 776161 262925 0 2 :=
  by simpa [progressionSegment00073_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00073_1_0000Check

def progressionSegment00073_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 53973) (.leaf 135591))

theorem progressionSegment00073_2_0000Check :
    progressionSegment00073_2_0000Tree.check indexedMarker 776161 513236 0 = true :=
  by decide

theorem progressionSegment00073_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 776161 513236 0 2 :=
  by simpa [progressionSegment00073_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00073_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
