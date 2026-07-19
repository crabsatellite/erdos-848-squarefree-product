import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00030_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 133423) (.leaf 143998))

theorem progressionSegment00030_1_0002Check :
    progressionSegment00030_1_0002Tree.check indexedMarker 100489 62969 12 = true :=
  by decide

theorem progressionSegment00030_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 62969 12 14 :=
  by simpa [progressionSegment00030_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_1_0002Check

def progressionSegment00030_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 154564)

theorem progressionSegment00030_1_0003Check :
    progressionSegment00030_1_0003Tree.check indexedMarker 100489 62969 14 = true :=
  by decide

theorem progressionSegment00030_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 62969 14 15 :=
  by simpa [progressionSegment00030_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_1_0003Check

def progressionSegment00030_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 3945) (.leaf 14521)) (.node (.leaf 25084) (.leaf 35647))) (.node (.node (.leaf 46222) (.leaf 56781)) (.node (.leaf 67349) (.leaf 77913))))

theorem progressionSegment00030_2_0000Check :
    progressionSegment00030_2_0000Tree.check indexedMarker 100489 37520 0 = true :=
  by decide

theorem progressionSegment00030_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 37520 0 8 :=
  by simpa [progressionSegment00030_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_2_0000Check

def progressionSegment00030_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 88472) (.leaf 99035)) (.node (.leaf 109612) (.leaf 120183)))

theorem progressionSegment00030_2_0001Check :
    progressionSegment00030_2_0001Tree.check indexedMarker 100489 37520 8 = true :=
  by decide

theorem progressionSegment00030_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 37520 8 12 :=
  by simpa [progressionSegment00030_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
