import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne70006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellOne70006Check :
    orderCellOne70006Tree.check cellMarkerOne7 6980 = true := by decide

theorem orderCellOne70006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne7 6980 6983 := by
  simpa [orderCellOne70006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne70006Check

end Erdos848.GeneratedTailDiagonalCoverage
