import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne20005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderCellOne20005Check :
    orderCellOne20005Tree.check cellMarkerOne2 6944 = true := by decide

theorem orderCellOne20005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne2 6944 6961 := by
  simpa [orderCellOne20005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne20005Check

end Erdos848.GeneratedTailDiagonalCoverage
