import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree20005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellThree20005Check :
    orderCellThree20005Tree.check cellMarkerThree2 6976 = true := by decide

theorem orderCellThree20005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree2 6976 6985 := by
  simpa [orderCellThree20005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree20005Check

end Erdos848.GeneratedTailDiagonalCoverage
