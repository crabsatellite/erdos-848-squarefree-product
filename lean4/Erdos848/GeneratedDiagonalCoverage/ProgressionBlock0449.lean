import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00295_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 120046)

theorem progressionSegment00295_1_0000Check :
    progressionSegment00295_1_0000Tree.check indexedMarker 19439281 1141599 0 = true :=
  by decide

theorem progressionSegment00295_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 19439281 1141599 0 1 :=
  by simpa [progressionSegment00295_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00295_1_0000Check

def progressionSegment00296_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 147938)

theorem progressionSegment00296_1_0000Check :
    progressionSegment00296_1_0000Tree.check indexedMarker 19545241 1406830 0 = true :=
  by decide

theorem progressionSegment00296_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 19545241 1406830 0 1 :=
  by simpa [progressionSegment00296_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00296_1_0000Check

def progressionSegment00301_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 45098)

theorem progressionSegment00301_1_0000Check :
    progressionSegment00301_1_0000Tree.check indexedMarker 20367169 428830 0 = true :=
  by decide

theorem progressionSegment00301_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 20367169 428830 0 1 :=
  by simpa [progressionSegment00301_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00301_1_0000Check

def progressionSegment00323_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 63169)

theorem progressionSegment00323_2_0000Check :
    progressionSegment00323_2_0000Tree.check indexedMarker 24334489 600632 0 = true :=
  by decide

theorem progressionSegment00323_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24334489 600632 0 1 :=
  by simpa [progressionSegment00323_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00323_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
