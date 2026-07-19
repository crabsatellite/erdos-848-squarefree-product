import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree60005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellThree60005Check :
    orderCellThree60005Tree.check cellMarkerThree6 6976 = true := by decide

theorem orderCellThree60005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree6 6976 6985 := by
  simpa [orderCellThree60005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree60005Check

end Erdos848.GeneratedTailDiagonalCoverage
