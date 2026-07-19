import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne80005Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderCellOne80005Check :
    orderCellOne80005Tree.check cellMarkerOne8 6976 = true := by decide

theorem orderCellOne80005 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne8 6976 6985 := by
  simpa [orderCellOne80005Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne80005Check

end Erdos848.GeneratedTailDiagonalCoverage
