import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne00005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellOne00005Check :
    orderCellOne00005Tree.check cellMarkerOne0 6976 = true := by decide

theorem orderCellOne00005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne0 6976 6985 := by
  simpa [orderCellOne00005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne00005Check

end Erdos848.GeneratedTailDiagonalCoverage
