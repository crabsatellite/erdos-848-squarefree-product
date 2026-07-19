import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00048_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 587) (.leaf 34638)) (.node (.leaf 68679) (.leaf 102721)))

theorem progressionSegment00048_1_0000Check :
    progressionSegment00048_1_0000Tree.check indexedMarker 323761 5604 0 = true :=
  by decide

theorem progressionSegment00048_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 323761 5604 0 4 :=
  by simpa [progressionSegment00048_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00048_1_0000Check

def progressionSegment00048_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 136780)

theorem progressionSegment00048_1_0001Check :
    progressionSegment00048_1_0001Tree.check indexedMarker 323761 5604 4 = true :=
  by decide

theorem progressionSegment00048_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 323761 5604 4 5 :=
  by simpa [progressionSegment00048_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00048_1_0001Check

def progressionSegment00048_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 33465) (.leaf 67502)) (.node (.leaf 101542) (.leaf 135597)))

theorem progressionSegment00048_2_0000Check :
    progressionSegment00048_2_0000Tree.check indexedMarker 323761 318157 0 = true :=
  by decide

theorem progressionSegment00048_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 323761 318157 0 4 :=
  by simpa [progressionSegment00048_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00048_2_0000Check

def progressionSegment00049_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 34283) (.leaf 69285)) (.node (.leaf 104283) (.leaf 139309)))

theorem progressionSegment00049_1_0000Check :
    progressionSegment00049_1_0000Tree.check indexedMarker 332929 325981 0 = true :=
  by decide

theorem progressionSegment00049_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 332929 325981 0 4 :=
  by simpa [progressionSegment00049_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00049_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
