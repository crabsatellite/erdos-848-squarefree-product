import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00053_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 23646) (.leaf 63675)) (.node (.leaf 103693) (.leaf 143741)))

theorem progressionSegment00053_1_0000Check :
    progressionSegment00053_1_0000Tree.check indexedMarker 380689 224782 0 = true :=
  by decide

theorem progressionSegment00053_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 380689 224782 0 4 :=
  by simpa [progressionSegment00053_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00053_1_0000Check

def progressionSegment00053_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 16394) (.leaf 56425)) (.node (.leaf 96447) (.leaf 136499)))

theorem progressionSegment00053_2_0000Check :
    progressionSegment00053_2_0000Tree.check indexedMarker 380689 155907 0 = true :=
  by decide

theorem progressionSegment00053_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 380689 155907 0 4 :=
  by simpa [progressionSegment00053_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00053_2_0000Check

def progressionSegment00054_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 23985) (.leaf 67186)) (.node (.leaf 110390) (.leaf 153604)))

theorem progressionSegment00054_1_0000Check :
    progressionSegment00054_1_0000Tree.check indexedMarker 410881 228042 0 = true :=
  by decide

theorem progressionSegment00054_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 410881 228042 0 4 :=
  by simpa [progressionSegment00054_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00054_1_0000Check

def progressionSegment00054_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 19234) (.leaf 62439)) (.node (.leaf 105635) (.leaf 148841)))

theorem progressionSegment00054_2_0000Check :
    progressionSegment00054_2_0000Tree.check indexedMarker 410881 182839 0 = true :=
  by decide

theorem progressionSegment00054_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 410881 182839 0 4 :=
  by simpa [progressionSegment00054_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00054_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
