import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree60006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellThree60006Check :
    orderCellThree60006Tree.check cellMarkerThree6 6984 = true := by decide

theorem orderCellThree60006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree6 6984 6989 := by
  simpa [orderCellThree60006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree60006Check

end Erdos848.GeneratedTailDiagonalCoverage
