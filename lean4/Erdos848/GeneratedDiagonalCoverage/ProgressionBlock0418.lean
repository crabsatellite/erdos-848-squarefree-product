import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00090_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 121714)

theorem progressionSegment00090_1_0000Check :
    progressionSegment00090_1_0000Tree.check indexedMarker 1247689 1157426 0 = true :=
  by decide

theorem progressionSegment00090_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1247689 1157426 0 1 :=
  by simpa [progressionSegment00090_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00090_1_0000Check

def progressionSegment00090_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 9492) (.leaf 140702))

theorem progressionSegment00090_2_0000Check :
    progressionSegment00090_2_0000Tree.check indexedMarker 1247689 90263 0 = true :=
  by decide

theorem progressionSegment00090_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1247689 90263 0 2 :=
  by simpa [progressionSegment00090_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00090_2_0000Check

def progressionSegment00091_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 115297)

theorem progressionSegment00091_1_0000Check :
    progressionSegment00091_1_0000Tree.check indexedMarker 1274641 1096427 0 = true :=
  by decide

theorem progressionSegment00091_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1274641 1096427 0 1 :=
  by simpa [progressionSegment00091_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00091_1_0000Check

def progressionSegment00091_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 18749) (.leaf 152783))

theorem progressionSegment00091_2_0000Check :
    progressionSegment00091_2_0000Tree.check indexedMarker 1274641 178214 0 = true :=
  by decide

theorem progressionSegment00091_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1274641 178214 0 2 :=
  by simpa [progressionSegment00091_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00091_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
