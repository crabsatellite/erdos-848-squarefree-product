import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree10006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellThree10006Check :
    orderCellThree10006Tree.check cellMarkerThree1 6960 = true := by decide

theorem orderCellThree10006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree1 6960 6969 := by
  simpa [orderCellThree10006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree10006Check

end Erdos848.GeneratedTailDiagonalCoverage
