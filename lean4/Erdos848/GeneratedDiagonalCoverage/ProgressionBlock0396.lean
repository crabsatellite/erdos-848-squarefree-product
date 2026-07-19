import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00055_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 39432) (.leaf 84266))

theorem progressionSegment00055_1_0000Check :
    progressionSegment00055_1_0000Tree.check indexedMarker 426409 374971 0 = true :=
  by decide

theorem progressionSegment00055_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 426409 374971 0 2 :=
  by simpa [progressionSegment00055_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00055_1_0000Check

def progressionSegment00055_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 129105)

theorem progressionSegment00055_1_0001Check :
    progressionSegment00055_1_0001Tree.check indexedMarker 426409 374971 2 = true :=
  by decide

theorem progressionSegment00055_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 426409 374971 2 3 :=
  by simpa [progressionSegment00055_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00055_1_0001Check

def progressionSegment00055_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 5410) (.leaf 50256)) (.node (.leaf 95080) (.leaf 139930)))

theorem progressionSegment00055_2_0000Check :
    progressionSegment00055_2_0000Tree.check indexedMarker 426409 51438 0 = true :=
  by decide

theorem progressionSegment00055_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 426409 51438 0 4 :=
  by simpa [progressionSegment00055_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00055_2_0000Check

def progressionSegment00056_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 29258) (.leaf 75198))

theorem progressionSegment00056_1_0000Check :
    progressionSegment00056_1_0000Tree.check indexedMarker 436921 278175 0 = true :=
  by decide

theorem progressionSegment00056_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 436921 278175 0 2 :=
  by simpa [progressionSegment00056_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00056_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
