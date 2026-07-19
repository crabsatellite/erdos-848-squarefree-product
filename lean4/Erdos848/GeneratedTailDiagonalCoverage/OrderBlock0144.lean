import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree40006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellThree40006Check :
    orderCellThree40006Tree.check cellMarkerThree4 6984 = true := by decide

theorem orderCellThree40006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree4 6984 6987 := by
  simpa [orderCellThree40006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree40006Check

end Erdos848.GeneratedTailDiagonalCoverage
