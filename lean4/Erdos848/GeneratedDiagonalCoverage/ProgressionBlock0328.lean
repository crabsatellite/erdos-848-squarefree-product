import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00009_1_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157003)

theorem progressionSegment00009_1_0005Check :
    progressionSegment00009_1_0005Tree.check indexedMarker 7921 3861 188 = true :=
  by decide

theorem progressionSegment00009_1_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 3861 188 189 :=
  by simpa [progressionSegment00009_1_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_1_0005Check

end Erdos848.GeneratedDiagonalCoverage
