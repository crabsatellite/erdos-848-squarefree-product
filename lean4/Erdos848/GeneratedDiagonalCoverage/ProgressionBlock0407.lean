import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00069_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 12177) (.leaf 84443))

theorem progressionSegment00069_1_0000Check :
    progressionSegment00069_1_0000Tree.check indexedMarker 687241 115814 0 = true :=
  by decide

theorem progressionSegment00069_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 687241 115814 0 2 :=
  by simpa [progressionSegment00069_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00069_1_0000Check

def progressionSegment00069_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156713)

theorem progressionSegment00069_1_0001Check :
    progressionSegment00069_1_0001Tree.check indexedMarker 687241 115814 2 = true :=
  by decide

theorem progressionSegment00069_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 687241 115814 2 3 :=
  by simpa [progressionSegment00069_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00069_1_0001Check

def progressionSegment00069_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 60091) (.leaf 132355))

theorem progressionSegment00069_2_0000Check :
    progressionSegment00069_2_0000Tree.check indexedMarker 687241 571427 0 = true :=
  by decide

theorem progressionSegment00069_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 687241 571427 0 2 :=
  by simpa [progressionSegment00069_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00069_2_0000Check

def progressionSegment00070_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 28750) (.leaf 105243))

theorem progressionSegment00070_1_0000Check :
    progressionSegment00070_1_0000Tree.check indexedMarker 727609 273293 0 = true :=
  by decide

theorem progressionSegment00070_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 727609 273293 0 2 :=
  by simpa [progressionSegment00070_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00070_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
