import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree60007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellThree60007Check :
    orderCellThree60007Tree.check cellMarkerThree6 6988 = true := by decide

theorem orderCellThree60007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree6 6988 6991 := by
  simpa [orderCellThree60007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree60007Check

end Erdos848.GeneratedTailDiagonalCoverage
