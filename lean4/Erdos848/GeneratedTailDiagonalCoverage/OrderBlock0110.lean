import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree00005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderCellThree00005Check :
    orderCellThree00005Tree.check cellMarkerThree0 6976 = true := by decide

theorem orderCellThree00005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree0 6976 6993 := by
  simpa [orderCellThree00005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree00005Check

end Erdos848.GeneratedTailDiagonalCoverage
