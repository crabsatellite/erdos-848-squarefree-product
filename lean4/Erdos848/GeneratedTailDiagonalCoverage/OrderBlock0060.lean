import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne20006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellOne20006Check :
    orderCellOne20006Tree.check cellMarkerOne2 6960 = true := by decide

theorem orderCellOne20006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne2 6960 6969 := by
  simpa [orderCellOne20006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne20006Check

end Erdos848.GeneratedTailDiagonalCoverage
