import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderOdd0035Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderOdd0035Check :
    orderOdd0035Tree.check oddMarker 62916 = true := by decide

theorem orderOdd0035 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered oddMarker 62916 62918 := by
  simpa [orderOdd0035Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderOdd0035Check

end Erdos848.GeneratedLowDiagonalCoverage
