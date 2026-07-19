import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne60006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellOne60006Check :
    orderCellOne60006Tree.check cellMarkerOne6 6984 = true := by decide

theorem orderCellOne60006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne6 6984 6989 := by
  simpa [orderCellOne60006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne60006Check

end Erdos848.GeneratedTailDiagonalCoverage
