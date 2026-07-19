import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree00006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellThree00006Check :
    orderCellThree00006Tree.check cellMarkerThree0 6992 = true := by decide

theorem orderCellThree00006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree0 6992 7001 := by
  simpa [orderCellThree00006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree00006Check

end Erdos848.GeneratedTailDiagonalCoverage
