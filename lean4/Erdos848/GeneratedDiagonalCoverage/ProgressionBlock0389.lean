import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00045_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 25892) (.leaf 54434)) (.node (.leaf 82966) (.leaf 111516)))

theorem progressionSegment00045_1_0000Check :
    progressionSegment00045_1_0000Tree.check indexedMarker 271441 246147 0 = true :=
  by decide

theorem progressionSegment00045_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 271441 246147 0 4 :=
  by simpa [progressionSegment00045_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00045_1_0000Check

def progressionSegment00045_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 140060)

theorem progressionSegment00045_1_0001Check :
    progressionSegment00045_1_0001Tree.check indexedMarker 271441 246147 4 = true :=
  by decide

theorem progressionSegment00045_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 271441 246147 4 5 :=
  by simpa [progressionSegment00045_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00045_1_0001Check

def progressionSegment00045_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 2653) (.leaf 31205)) (.node (.leaf 59745) (.leaf 88281)))

theorem progressionSegment00045_2_0000Check :
    progressionSegment00045_2_0000Tree.check indexedMarker 271441 25294 0 = true :=
  by decide

theorem progressionSegment00045_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 271441 25294 0 4 :=
  by simpa [progressionSegment00045_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00045_2_0000Check

def progressionSegment00045_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 116841) (.leaf 145378))

theorem progressionSegment00045_2_0001Check :
    progressionSegment00045_2_0001Tree.check indexedMarker 271441 25294 4 = true :=
  by decide

theorem progressionSegment00045_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 271441 25294 4 6 :=
  by simpa [progressionSegment00045_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00045_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
