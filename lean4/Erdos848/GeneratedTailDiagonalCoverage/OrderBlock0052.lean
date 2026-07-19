import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne10006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellOne10006Check :
    orderCellOne10006Tree.check cellMarkerOne1 7008 = true := by decide

theorem orderCellOne10006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne1 7008 7013 := by
  simpa [orderCellOne10006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne10006Check

end Erdos848.GeneratedTailDiagonalCoverage
