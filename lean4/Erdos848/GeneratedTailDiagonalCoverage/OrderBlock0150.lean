import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree50005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderCellThree50005Check :
    orderCellThree50005Tree.check cellMarkerThree5 6976 = true := by decide

theorem orderCellThree50005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree5 6976 6993 := by
  simpa [orderCellThree50005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree50005Check

end Erdos848.GeneratedTailDiagonalCoverage
