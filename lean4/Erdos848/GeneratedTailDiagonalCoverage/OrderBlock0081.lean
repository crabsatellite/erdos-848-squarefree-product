import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne50006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellOne50006Check :
    orderCellOne50006Tree.check cellMarkerOne5 6992 = true := by decide

theorem orderCellOne50006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne5 6992 6997 := by
  simpa [orderCellOne50006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne50006Check

end Erdos848.GeneratedTailDiagonalCoverage
