import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne00006Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellOne00006Check :
    orderCellOne00006Tree.check cellMarkerOne0 6984 = true := by decide

theorem orderCellOne00006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne0 6984 6986 := by
  simpa [orderCellOne00006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne00006Check

end Erdos848.GeneratedTailDiagonalCoverage
