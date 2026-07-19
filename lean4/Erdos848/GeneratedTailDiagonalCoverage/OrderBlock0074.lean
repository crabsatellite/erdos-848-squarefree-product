import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne40005Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellOne40005Check :
    orderCellOne40005Tree.check cellMarkerOne4 6976 = true := by decide

theorem orderCellOne40005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne4 6976 6978 := by
  simpa [orderCellOne40005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne40005Check

end Erdos848.GeneratedTailDiagonalCoverage
