import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree30006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellThree30006Check :
    orderCellThree30006Tree.check cellMarkerThree3 6984 = true := by decide

theorem orderCellThree30006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree3 6984 6989 := by
  simpa [orderCellThree30006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree30006Check

end Erdos848.GeneratedTailDiagonalCoverage
