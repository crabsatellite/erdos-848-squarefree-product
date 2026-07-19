import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne50005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderCellOne50005Check :
    orderCellOne50005Tree.check cellMarkerOne5 6976 = true := by decide

theorem orderCellOne50005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne5 6976 6993 := by
  simpa [orderCellOne50005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne50005Check

end Erdos848.GeneratedTailDiagonalCoverage
