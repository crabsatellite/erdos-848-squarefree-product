import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0068Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderAll0068Check :
    orderAll0068Tree.check indexedMarker 125806 = true := by decide

theorem orderAll0068 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 125806 125808 := by
  simpa [orderAll0068Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0068Check

end Erdos848.GeneratedLowDiagonalCoverage
