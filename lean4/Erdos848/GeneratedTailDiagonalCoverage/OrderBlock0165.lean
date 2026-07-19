import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree70005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderCellThree70005Check :
    orderCellThree70005Tree.check cellMarkerThree7 6976 = true := by decide

theorem orderCellThree70005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree7 6976 6993 := by
  simpa [orderCellThree70005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree70005Check

end Erdos848.GeneratedTailDiagonalCoverage
