import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00044_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 17222) (.leaf 44461)) (.node (.leaf 71701) (.leaf 98931)))

theorem progressionSegment00044_1_0000Check :
    progressionSegment00044_1_0000Tree.check indexedMarker 259081 163690 0 = true :=
  by decide

theorem progressionSegment00044_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 259081 163690 0 4 :=
  by simpa [progressionSegment00044_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00044_1_0000Check

def progressionSegment00044_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 126192) (.leaf 153436))

theorem progressionSegment00044_1_0001Check :
    progressionSegment00044_1_0001Tree.check indexedMarker 259081 163690 4 = true :=
  by decide

theorem progressionSegment00044_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 259081 163690 4 6 :=
  by simpa [progressionSegment00044_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00044_1_0001Check

def progressionSegment00044_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 10025) (.leaf 37280)) (.node (.leaf 64523) (.leaf 91749)))

theorem progressionSegment00044_2_0000Check :
    progressionSegment00044_2_0000Tree.check indexedMarker 259081 95391 0 = true :=
  by decide

theorem progressionSegment00044_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 259081 95391 0 4 :=
  by simpa [progressionSegment00044_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00044_2_0000Check

def progressionSegment00044_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 119011) (.leaf 146255))

theorem progressionSegment00044_2_0001Check :
    progressionSegment00044_2_0001Tree.check indexedMarker 259081 95391 4 = true :=
  by decide

theorem progressionSegment00044_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 259081 95391 4 6 :=
  by simpa [progressionSegment00044_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00044_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
