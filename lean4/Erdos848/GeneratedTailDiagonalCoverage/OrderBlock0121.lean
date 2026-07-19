import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree10008Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellThree10008Check :
    orderCellThree10008Tree.check cellMarkerThree1 6972 = true := by decide

theorem orderCellThree10008 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree1 6972 6975 := by
  simpa [orderCellThree10008Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree10008Check

end Erdos848.GeneratedTailDiagonalCoverage
