import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderOdd0034Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderOdd0034Check :
    orderOdd0034Tree.check oddMarker 62912 = true := by decide

theorem orderOdd0034 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered oddMarker 62912 62917 := by
  simpa [orderOdd0034Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderOdd0034Check

end Erdos848.GeneratedLowDiagonalCoverage
