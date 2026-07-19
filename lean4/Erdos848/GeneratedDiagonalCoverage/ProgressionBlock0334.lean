import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00010_1_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156891)

theorem progressionSegment00010_1_0005Check :
    progressionSegment00010_1_0005Tree.check indexedMarker 9409 5357 158 = true :=
  by decide

theorem progressionSegment00010_1_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 5357 158 159 :=
  by simpa [progressionSegment00010_1_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_1_0005Check

end Erdos848.GeneratedDiagonalCoverage
