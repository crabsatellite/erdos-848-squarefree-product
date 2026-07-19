import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne10005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))

theorem orderCellOne10005Check :
    orderCellOne10005Tree.check cellMarkerOne1 6976 = true := by decide

theorem orderCellOne10005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne1 6976 7009 := by
  simpa [orderCellOne10005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne10005Check

end Erdos848.GeneratedTailDiagonalCoverage
