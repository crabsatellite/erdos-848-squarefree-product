import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne10007Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellOne10007Check :
    orderCellOne10007Tree.check cellMarkerOne1 7012 = true := by decide

theorem orderCellOne10007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne1 7012 7014 := by
  simpa [orderCellOne10007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne10007Check

end Erdos848.GeneratedTailDiagonalCoverage
