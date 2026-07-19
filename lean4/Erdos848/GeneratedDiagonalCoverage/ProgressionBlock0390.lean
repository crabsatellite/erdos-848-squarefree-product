import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00046_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 7399) (.leaf 38174)) (.node (.leaf 68958) (.leaf 99716)))

theorem progressionSegment00046_1_0000Check :
    progressionSegment00046_1_0000Tree.check indexedMarker 292681 70382 0 = true :=
  by decide

theorem progressionSegment00046_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 292681 70382 0 4 :=
  by simpa [progressionSegment00046_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00046_1_0000Check

def progressionSegment00046_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 130507)

theorem progressionSegment00046_1_0001Check :
    progressionSegment00046_1_0001Tree.check indexedMarker 292681 70382 4 = true :=
  by decide

theorem progressionSegment00046_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 292681 70382 4 5 :=
  by simpa [progressionSegment00046_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00046_1_0001Check

def progressionSegment00046_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 23386) (.leaf 54155)) (.node (.leaf 84930) (.leaf 115712)))

theorem progressionSegment00046_2_0000Check :
    progressionSegment00046_2_0000Tree.check indexedMarker 292681 222299 0 = true :=
  by decide

theorem progressionSegment00046_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 292681 222299 0 4 :=
  by simpa [progressionSegment00046_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00046_2_0000Check

def progressionSegment00046_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 146489)

theorem progressionSegment00046_2_0001Check :
    progressionSegment00046_2_0001Tree.check indexedMarker 292681 222299 4 = true :=
  by decide

theorem progressionSegment00046_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 292681 222299 4 5 :=
  by simpa [progressionSegment00046_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00046_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
