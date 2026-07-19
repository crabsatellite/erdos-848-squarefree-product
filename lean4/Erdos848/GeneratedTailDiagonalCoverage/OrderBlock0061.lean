import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne20007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellOne20007Check :
    orderCellOne20007Tree.check cellMarkerOne2 6968 = true := by decide

theorem orderCellOne20007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne2 6968 6973 := by
  simpa [orderCellOne20007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne20007Check

end Erdos848.GeneratedTailDiagonalCoverage
