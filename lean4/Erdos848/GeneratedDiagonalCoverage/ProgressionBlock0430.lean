import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00121_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 107717)

theorem progressionSegment00121_2_0000Check :
    progressionSegment00121_2_0000Tree.check indexedMarker 2601769 1024382 0 = true :=
  by decide

theorem progressionSegment00121_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2601769 1024382 0 1 :=
  by simpa [progressionSegment00121_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00121_2_0000Check

def progressionSegment00122_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 35779)

theorem progressionSegment00122_2_0000Check :
    progressionSegment00122_2_0000Tree.check indexedMarker 2627641 340244 0 = true :=
  by decide

theorem progressionSegment00122_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2627641 340244 0 1 :=
  by simpa [progressionSegment00122_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00122_2_0000Check

def progressionSegment00123_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 31644)

theorem progressionSegment00123_2_0000Check :
    progressionSegment00123_2_0000Tree.check indexedMarker 2679769 300892 0 = true :=
  by decide

theorem progressionSegment00123_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2679769 300892 0 1 :=
  by simpa [progressionSegment00123_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00123_2_0000Check

def progressionSegment00124_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 121363)

theorem progressionSegment00124_1_0000Check :
    progressionSegment00124_1_0000Tree.check indexedMarker 2745649 1154055 0 = true :=
  by decide

theorem progressionSegment00124_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2745649 1154055 0 1 :=
  by simpa [progressionSegment00124_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00124_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
