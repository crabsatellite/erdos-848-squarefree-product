import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00062_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 155155)

theorem progressionSegment00062_1_0001Check :
    progressionSegment00062_1_0001Tree.check indexedMarker 573049 329382 2 = true :=
  by decide

theorem progressionSegment00062_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 573049 329382 2 3 :=
  by simpa [progressionSegment00062_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00062_1_0001Check

def progressionSegment00062_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 25628) (.leaf 85884))

theorem progressionSegment00062_2_0000Check :
    progressionSegment00062_2_0000Tree.check indexedMarker 573049 243667 0 = true :=
  by decide

theorem progressionSegment00062_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 573049 243667 0 2 :=
  by simpa [progressionSegment00062_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00062_2_0000Check

def progressionSegment00062_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 146145)

theorem progressionSegment00062_2_0001Check :
    progressionSegment00062_2_0001Tree.check indexedMarker 573049 243667 2 = true :=
  by decide

theorem progressionSegment00062_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 573049 243667 2 3 :=
  by simpa [progressionSegment00062_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00062_2_0001Check

def progressionSegment00063_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 57768) (.leaf 118674))

theorem progressionSegment00063_1_0000Check :
    progressionSegment00063_1_0000Tree.check indexedMarker 579121 549403 0 = true :=
  by decide

theorem progressionSegment00063_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 579121 549403 0 2 :=
  by simpa [progressionSegment00063_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00063_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
