import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00038_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 153777)

theorem progressionSegment00038_2_0001Check :
    progressionSegment00038_2_0001Tree.check indexedMarker 167281 124070 8 = true :=
  by decide

theorem progressionSegment00038_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 167281 124070 8 9 :=
  by simpa [progressionSegment00038_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00038_2_0001Check

def progressionSegment00039_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 1289) (.leaf 19931)) (.node (.leaf 38563) (.leaf 57200))) (.node (.node (.leaf 75837) (.leaf 94471)) (.node (.leaf 113119) (.leaf 131749))))

theorem progressionSegment00039_1_0000Check :
    progressionSegment00039_1_0000Tree.check indexedMarker 177241 12238 0 = true :=
  by decide

theorem progressionSegment00039_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 177241 12238 0 8 :=
  by simpa [progressionSegment00039_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00039_1_0000Check

def progressionSegment00039_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 150388)

theorem progressionSegment00039_1_0001Check :
    progressionSegment00039_1_0001Tree.check indexedMarker 177241 12238 8 = true :=
  by decide

theorem progressionSegment00039_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 177241 12238 8 9 :=
  by simpa [progressionSegment00039_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00039_1_0001Check

def progressionSegment00039_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 17365) (.leaf 35989)) (.node (.leaf 54632) (.leaf 73266))) (.node (.node (.leaf 91892) (.leaf 110538)) (.node (.leaf 129178) (.leaf 147816))))

theorem progressionSegment00039_2_0000Check :
    progressionSegment00039_2_0000Tree.check indexedMarker 177241 165003 0 = true :=
  by decide

theorem progressionSegment00039_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 177241 165003 0 8 :=
  by simpa [progressionSegment00039_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00039_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
