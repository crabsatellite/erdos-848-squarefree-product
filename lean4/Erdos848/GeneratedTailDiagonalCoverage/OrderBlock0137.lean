import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree30007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellThree30007Check :
    orderCellThree30007Tree.check cellMarkerThree3 6988 = true := by decide

theorem orderCellThree30007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree3 6988 6991 := by
  simpa [orderCellThree30007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree30007Check

end Erdos848.GeneratedTailDiagonalCoverage
