import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00060_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 46541) (.leaf 99379))

theorem progressionSegment00060_1_0000Check :
    progressionSegment00060_1_0000Tree.check indexedMarker 502681 442512 0 = true :=
  by decide

theorem progressionSegment00060_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 502681 442512 0 2 :=
  by simpa [progressionSegment00060_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00060_1_0000Check

def progressionSegment00060_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 152260)

theorem progressionSegment00060_1_0001Check :
    progressionSegment00060_1_0001Tree.check indexedMarker 502681 442512 2 = true :=
  by decide

theorem progressionSegment00060_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 502681 442512 2 3 :=
  by simpa [progressionSegment00060_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00060_1_0001Check

def progressionSegment00060_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 6323) (.leaf 59190))

theorem progressionSegment00060_2_0000Check :
    progressionSegment00060_2_0000Tree.check indexedMarker 502681 60169 0 = true :=
  by decide

theorem progressionSegment00060_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 502681 60169 0 2 :=
  by simpa [progressionSegment00060_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00060_2_0000Check

def progressionSegment00060_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 112054)

theorem progressionSegment00060_2_0001Check :
    progressionSegment00060_2_0001Tree.check indexedMarker 502681 60169 2 = true :=
  by decide

theorem progressionSegment00060_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 502681 60169 2 3 :=
  by simpa [progressionSegment00060_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00060_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
