import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree10007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellThree10007Check :
    orderCellThree10007Tree.check cellMarkerThree1 6968 = true := by decide

theorem orderCellThree10007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree1 6968 6973 := by
  simpa [orderCellThree10007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree10007Check

end Erdos848.GeneratedTailDiagonalCoverage
