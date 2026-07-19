import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree50006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellThree50006Check :
    orderCellThree50006Tree.check cellMarkerThree5 6992 = true := by decide

theorem orderCellThree50006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree5 6992 6997 := by
  simpa [orderCellThree50006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree50006Check

end Erdos848.GeneratedTailDiagonalCoverage
