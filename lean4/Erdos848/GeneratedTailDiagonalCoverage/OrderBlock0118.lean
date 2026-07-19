import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree10005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderCellThree10005Check :
    orderCellThree10005Tree.check cellMarkerThree1 6944 = true := by decide

theorem orderCellThree10005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree1 6944 6961 := by
  simpa [orderCellThree10005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree10005Check

end Erdos848.GeneratedTailDiagonalCoverage
