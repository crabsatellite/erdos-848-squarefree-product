import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00066_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 55007) (.leaf 121800))

theorem progressionSegment00066_1_0000Check :
    progressionSegment00066_1_0000Tree.check indexedMarker 635209 523047 0 = true :=
  by decide

theorem progressionSegment00066_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 635209 523047 0 2 :=
  by simpa [progressionSegment00066_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00066_1_0000Check

def progressionSegment00066_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 11791) (.leaf 78586))

theorem progressionSegment00066_2_0000Check :
    progressionSegment00066_2_0000Tree.check indexedMarker 635209 112162 0 = true :=
  by decide

theorem progressionSegment00066_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 635209 112162 0 2 :=
  by simpa [progressionSegment00066_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00066_2_0000Check

def progressionSegment00066_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 145390)

theorem progressionSegment00066_2_0001Check :
    progressionSegment00066_2_0001Tree.check indexedMarker 635209 112162 2 = true :=
  by decide

theorem progressionSegment00066_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 635209 112162 2 3 :=
  by simpa [progressionSegment00066_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00066_2_0001Check

def progressionSegment00067_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 29747) (.leaf 98555))

theorem progressionSegment00067_1_0000Check :
    progressionSegment00067_1_0000Tree.check indexedMarker 654481 282832 0 = true :=
  by decide

theorem progressionSegment00067_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 654481 282832 0 2 :=
  by simpa [progressionSegment00067_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00067_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
