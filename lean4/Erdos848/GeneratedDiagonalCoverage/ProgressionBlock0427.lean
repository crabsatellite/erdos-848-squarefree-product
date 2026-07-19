import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00111_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 49985)

theorem progressionSegment00111_1_0000Check :
    progressionSegment00111_1_0000Tree.check indexedMarker 2053489 475214 0 = true :=
  by decide

theorem progressionSegment00111_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2053489 475214 0 1 :=
  by simpa [progressionSegment00111_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00111_1_0000Check

def progressionSegment00112_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 16557)

theorem progressionSegment00112_1_0000Check :
    progressionSegment00112_1_0000Tree.check indexedMarker 2111209 157421 0 = true :=
  by decide

theorem progressionSegment00112_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2111209 157421 0 1 :=
  by simpa [progressionSegment00112_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00112_1_0000Check

def progressionSegment00113_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 18336)

theorem progressionSegment00113_1_0000Check :
    progressionSegment00113_1_0000Tree.check indexedMarker 2193361 174293 0 = true :=
  by decide

theorem progressionSegment00113_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2193361 174293 0 1 :=
  by simpa [progressionSegment00113_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00113_1_0000Check

def progressionSegment00114_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100488)

theorem progressionSegment00114_1_0000Check :
    progressionSegment00114_1_0000Tree.check indexedMarker 2217121 955713 0 = true :=
  by decide

theorem progressionSegment00114_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2217121 955713 0 1 :=
  by simpa [progressionSegment00114_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00114_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
