import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00213_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 68512)

theorem progressionSegment00213_1_0000Check :
    progressionSegment00213_1_0000Tree.check indexedMarker 9247681 651548 0 = true :=
  by decide

theorem progressionSegment00213_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9247681 651548 0 1 :=
  by simpa [progressionSegment00213_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00213_1_0000Check

def progressionSegment00217_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 125795)

theorem progressionSegment00217_1_0000Check :
    progressionSegment00217_1_0000Tree.check indexedMarker 9665881 1196238 0 = true :=
  by decide

theorem progressionSegment00217_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9665881 1196238 0 1 :=
  by simpa [progressionSegment00217_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00217_1_0000Check

def progressionSegment00218_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 25943)

theorem progressionSegment00218_1_0000Check :
    progressionSegment00218_1_0000Tree.check indexedMarker 9740641 246638 0 = true :=
  by decide

theorem progressionSegment00218_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9740641 246638 0 1 :=
  by simpa [progressionSegment00218_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00218_1_0000Check

def progressionSegment00219_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 9240)

theorem progressionSegment00219_1_0000Check :
    progressionSegment00219_1_0000Tree.check indexedMarker 9840769 87892 0 = true :=
  by decide

theorem progressionSegment00219_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9840769 87892 0 1 :=
  by simpa [progressionSegment00219_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00219_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
