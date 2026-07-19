import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne60005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellOne60005Check :
    orderCellOne60005Tree.check cellMarkerOne6 6976 = true := by decide

theorem orderCellOne60005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne6 6976 6985 := by
  simpa [orderCellOne60005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne60005Check

end Erdos848.GeneratedTailDiagonalCoverage
