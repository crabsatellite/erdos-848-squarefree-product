import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00051_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 11234) (.leaf 49229)) (.node (.leaf 87204) (.leaf 125189)))

theorem progressionSegment00051_1_0000Check :
    progressionSegment00051_1_0000Tree.check indexedMarker 361201 106853 0 = true :=
  by decide

theorem progressionSegment00051_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 361201 106853 0 4 :=
  by simpa [progressionSegment00051_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00051_1_0000Check

def progressionSegment00051_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 26749) (.leaf 64730)) (.node (.leaf 102708) (.leaf 140701)))

theorem progressionSegment00051_2_0000Check :
    progressionSegment00051_2_0000Tree.check indexedMarker 361201 254348 0 = true :=
  by decide

theorem progressionSegment00051_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 361201 254348 0 4 :=
  by simpa [progressionSegment00051_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00051_2_0000Check

def progressionSegment00052_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 37256) (.leaf 76771)) (.node (.leaf 116291) (.leaf 155801)))

theorem progressionSegment00052_1_0000Check :
    progressionSegment00052_1_0000Tree.check indexedMarker 375769 354279 0 = true :=
  by decide

theorem progressionSegment00052_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 375769 354279 0 4 :=
  by simpa [progressionSegment00052_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00052_1_0000Check

def progressionSegment00052_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 2253) (.leaf 41774)) (.node (.leaf 81282) (.leaf 120810)))

theorem progressionSegment00052_2_0000Check :
    progressionSegment00052_2_0000Tree.check indexedMarker 375769 21490 0 = true :=
  by decide

theorem progressionSegment00052_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 375769 21490 0 4 :=
  by simpa [progressionSegment00052_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00052_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
