import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00070_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 47775) (.leaf 124287))

theorem progressionSegment00070_2_0000Check :
    progressionSegment00070_2_0000Tree.check indexedMarker 727609 454316 0 = true :=
  by decide

theorem progressionSegment00070_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 727609 454316 0 2 :=
  by simpa [progressionSegment00070_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00070_2_0000Check

def progressionSegment00071_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 2987) (.leaf 80224))

theorem progressionSegment00071_1_0000Check :
    progressionSegment00071_1_0000Tree.check indexedMarker 734449 28488 0 = true :=
  by decide

theorem progressionSegment00071_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 734449 28488 0 2 :=
  by simpa [progressionSegment00071_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00071_1_0000Check

def progressionSegment00071_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157458)

theorem progressionSegment00071_1_0001Check :
    progressionSegment00071_1_0001Tree.check indexedMarker 734449 28488 2 = true :=
  by decide

theorem progressionSegment00071_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 734449 28488 2 3 :=
  by simpa [progressionSegment00071_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00071_1_0001Check

def progressionSegment00071_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 74235) (.leaf 151469))

theorem progressionSegment00071_2_0000Check :
    progressionSegment00071_2_0000Tree.check indexedMarker 734449 705961 0 = true :=
  by decide

theorem progressionSegment00071_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 734449 705961 0 2 :=
  by simpa [progressionSegment00071_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00071_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
