import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne70005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellOne70005Check :
    orderCellOne70005Tree.check cellMarkerOne7 6976 = true := by decide

theorem orderCellOne70005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne7 6976 6981 := by
  simpa [orderCellOne70005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne70005Check

end Erdos848.GeneratedTailDiagonalCoverage
