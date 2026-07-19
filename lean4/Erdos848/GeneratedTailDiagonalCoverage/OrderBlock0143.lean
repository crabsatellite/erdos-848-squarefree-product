import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree40005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellThree40005Check :
    orderCellThree40005Tree.check cellMarkerThree4 6976 = true := by decide

theorem orderCellThree40005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree4 6976 6985 := by
  simpa [orderCellThree40005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree40005Check

end Erdos848.GeneratedTailDiagonalCoverage
