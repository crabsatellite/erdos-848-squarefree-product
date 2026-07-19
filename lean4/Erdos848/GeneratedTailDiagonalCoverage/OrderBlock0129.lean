import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree20006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellThree20006Check :
    orderCellThree20006Tree.check cellMarkerThree2 6984 = true := by decide

theorem orderCellThree20006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree2 6984 6989 := by
  simpa [orderCellThree20006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree20006Check

end Erdos848.GeneratedTailDiagonalCoverage
