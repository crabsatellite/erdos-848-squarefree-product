import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne50007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellOne50007Check :
    orderCellOne50007Tree.check cellMarkerOne5 6996 = true := by decide

theorem orderCellOne50007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne5 6996 6999 := by
  simpa [orderCellOne50007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne50007Check

end Erdos848.GeneratedTailDiagonalCoverage
