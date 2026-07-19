import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne70007Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellOne70007Check :
    orderCellOne70007Tree.check cellMarkerOne7 6982 = true := by decide

theorem orderCellOne70007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne7 6982 6984 := by
  simpa [orderCellOne70007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne70007Check

end Erdos848.GeneratedTailDiagonalCoverage
