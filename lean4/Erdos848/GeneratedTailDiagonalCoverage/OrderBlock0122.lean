import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree10009Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellThree10009Check :
    orderCellThree10009Tree.check cellMarkerThree1 6974 = true := by decide

theorem orderCellThree10009 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree1 6974 6976 := by
  simpa [orderCellThree10009Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree10009Check

end Erdos848.GeneratedTailDiagonalCoverage
