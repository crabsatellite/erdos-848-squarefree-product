import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree00007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellThree00007Check :
    orderCellThree00007Tree.check cellMarkerThree0 7000 = true := by decide

theorem orderCellThree00007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree0 7000 7003 := by
  simpa [orderCellThree00007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree00007Check

end Erdos848.GeneratedTailDiagonalCoverage
