import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne30005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellOne30005Check :
    orderCellOne30005Tree.check cellMarkerOne3 6976 = true := by decide

theorem orderCellOne30005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne3 6976 6985 := by
  simpa [orderCellOne30005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne30005Check

end Erdos848.GeneratedTailDiagonalCoverage
