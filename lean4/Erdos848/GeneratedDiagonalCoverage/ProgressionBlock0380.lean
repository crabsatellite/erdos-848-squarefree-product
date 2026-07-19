import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00035_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 142795)

theorem progressionSegment00035_2_0001Check :
    progressionSegment00035_2_0001Tree.check indexedMarker 151321 147316 8 = true :=
  by decide

theorem progressionSegment00035_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 151321 147316 8 9 :=
  by simpa [progressionSegment00035_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00035_2_0001Check

def progressionSegment00036_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 13159) (.leaf 29737)) (.node (.leaf 46313) (.leaf 62885))) (.node (.node (.leaf 79451) (.leaf 96013)) (.node (.leaf 112601) (.leaf 129168))))

theorem progressionSegment00036_1_0000Check :
    progressionSegment00036_1_0000Tree.check indexedMarker 157609 125118 0 = true :=
  by decide

theorem progressionSegment00036_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 157609 125118 0 8 :=
  by simpa [progressionSegment00036_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00036_1_0000Check

def progressionSegment00036_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 145750)

theorem progressionSegment00036_1_0001Check :
    progressionSegment00036_1_0001Tree.check indexedMarker 157609 125118 8 = true :=
  by decide

theorem progressionSegment00036_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 157609 125118 8 9 :=
  by simpa [progressionSegment00036_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00036_1_0001Check

def progressionSegment00036_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 3413) (.leaf 19997)) (.node (.leaf 36564) (.leaf 53137))) (.node (.node (.leaf 69716) (.leaf 86283)) (.node (.leaf 102856) (.leaf 119434))))

theorem progressionSegment00036_2_0000Check :
    progressionSegment00036_2_0000Tree.check indexedMarker 157609 32491 0 = true :=
  by decide

theorem progressionSegment00036_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 157609 32491 0 8 :=
  by simpa [progressionSegment00036_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00036_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
