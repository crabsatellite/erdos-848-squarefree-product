import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree30005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellThree30005Check :
    orderCellThree30005Tree.check cellMarkerThree3 6976 = true := by decide

theorem orderCellThree30005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree3 6976 6985 := by
  simpa [orderCellThree30005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree30005Check

end Erdos848.GeneratedTailDiagonalCoverage
