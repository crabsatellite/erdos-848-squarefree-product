import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne30006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellOne30006Check :
    orderCellOne30006Tree.check cellMarkerOne3 6984 = true := by decide

theorem orderCellOne30006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne3 6984 6989 := by
  simpa [orderCellOne30006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne30006Check

end Erdos848.GeneratedTailDiagonalCoverage
