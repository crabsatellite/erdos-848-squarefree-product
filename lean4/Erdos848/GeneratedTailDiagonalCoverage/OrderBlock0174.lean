import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree80005Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellThree80005Check :
    orderCellThree80005Tree.check cellMarkerThree8 6976 = true := by decide

theorem orderCellThree80005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree8 6976 6978 := by
  simpa [orderCellThree80005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree80005Check

end Erdos848.GeneratedTailDiagonalCoverage
